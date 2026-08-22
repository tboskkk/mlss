#!/usr/bin/env python3
"""Retroactively propagate every ALREADY-MATCHED function to its structural twins.

Why this exists, and why `validator.propagate_to_twins()` does not cover it.

That hook is REACTIVE: it fires at the moment a match lands, against the
twins that are unmatched *at that instant*. Extraction is continuous in this
project -- `split_func.py` adds fragments to `asm/nonmatching/` for the whole
life of the run -- so any function extracted AFTER template X matched never
received X's propagation, and never will. Nothing re-runs the sweep.

Measured when this was written: 315 matched functions' fingerprints were
recovered from git history and checked against the live pool of 5,613
unmatched fragments. **236 unmatched functions are instruction-shape-
identical to a function that is already matched**, across 50 shape groups
(largest: sub_8060438 -> 29 waiting, sub_809D24C -> 25, sub_8070C5C -> 22).
Those are solved problems being re-solved by stochastic search.

The matched function's own fragment is deleted by step 7 of the workflow, so
its assembly is not on disk any more. It IS in git history -- the deleting
commit's parent still has it -- which is where the templates come from here.

Two differences from the reactive hook, both deliberate:

  1. It scores the candidate IMMEDIATELY instead of seeding `tier2_ready`.
     A twin substitution is not a guess that needs searching: the shapes are
     identical and the constant map is proven consistent in both directions,
     so it either scores 0 straight away or it does not. Queueing it behind a
     15-minute permuter search is pure latency.
  2. It sweeps ALL matched templates against ALL unmatched functions, so it
     is idempotent and worth re-running after any batch of matches.

Candidates that score 0 go to `validating` with `candidate_body` set --
exactly the state the permuter path uses -- so the from-scratch build gate in
validator.py still has the final say. Nothing here bypasses a check.
"""
from __future__ import annotations

import argparse
import hashlib
import re
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import twins  # noqa: E402

LOCK_BREATH_S = 0.4  # repo_lock has no fairness; never hold it in a tight loop
FRAG_DIR = gitops.REPO / "asm" / "nonmatching"


def matched_templates() -> dict[str, tuple[str, str]]:
    """fingerprint -> (function name, its assembly), for every matched function.

    Recovered from git history because `finish_match()` deletes the fragment.
    Walks the deletions of asm/nonmatching/* and reads each file back out of
    the deleting commit's PARENT, which is the last commit that still had it.
    """
    out = subprocess.run(
        ["git", "log", "--diff-filter=D", "--name-only", "--pretty=format:%H",
         "--", "asm/nonmatching/"],
        cwd=gitops.REPO, capture_output=True, text=True).stdout

    deleted: dict[str, str] = {}
    commit = None
    for line in out.splitlines():
        line = line.strip()
        if not line:
            continue
        if re.fullmatch(r"[0-9a-f]{40}", line):
            commit = line
        elif line.startswith("asm/nonmatching/") and commit:
            deleted.setdefault(line, commit)  # first (newest) deletion wins

    templates: dict[str, tuple[str, str]] = {}
    for path, commit in deleted.items():
        name = Path(path).stem
        r = subprocess.run(["git", "show", f"{commit}^:{path}"],
                           cwd=gitops.REPO, capture_output=True, text=True)
        if r.returncode != 0 or not r.stdout.strip():
            continue
        fp, n = twins.fingerprint(r.stdout)
        if n >= 3:
            templates.setdefault(fp, (name, r.stdout))
    return templates


def matched_c(name: str) -> str | None:
    """The committed C body of an already-matched function.

    A matched function has no `#ifndef NONMATCHING` guard left (that is what
    `progress.py` counts), so this is a plain brace-balanced extract of the
    definition from whichever src/*.c claimed it.
    """
    pat = re.compile(rf"^[A-Za-z_][^;\n]*\b{re.escape(name)}\s*\(", re.M)
    for p in sorted((gitops.REPO / "src").rglob("*.c")):
        try:
            text = p.read_text(errors="ignore")
        except OSError:
            continue
        m = pat.search(text)
        if not m:
            continue
        open_brace = text.find("{", m.start())
        if open_brace < 0:
            continue
        depth = 0
        for i in range(open_brace, len(text)):
            if text[i] == "{":
                depth += 1
            elif text[i] == "}":
                depth -= 1
                if depth == 0:
                    return text[m.start():i + 1]
    return None


def candidates(conn) -> list[tuple[str, str, str]]:
    """[(target, template_name, propagated C)] for every unmatched twin."""
    states = {r["name"]: r["state"] for r in
              conn.execute("SELECT name, state FROM functions")}
    templates = matched_templates()
    print(f"recovered {len(templates)} matched template shape(s) from git history")

    c_cache: dict[str, str | None] = {}
    out = []
    for frag in sorted(FRAG_DIR.glob("*.s")):
        target = frag.stem
        if states.get(target) in ("matched", "validating", "permuting", "excluded"):
            continue
        try:
            asm = frag.read_text(errors="ignore")
        except OSError:
            continue
        fp, n = twins.fingerprint(asm)
        if n < 3 or fp not in templates:
            continue
        tmpl_name, tmpl_asm = templates[fp]
        # A function that was matched, reverted, and re-extracted appears in
        # BOTH the history-recovered templates and the live unmatched pool.
        # Propagating it to itself is a no-op that wastes a build.
        if tmpl_name == target:
            continue
        if tmpl_name not in c_cache:
            c_cache[tmpl_name] = matched_c(tmpl_name)
        tmpl_c = c_cache[tmpl_name]
        if not tmpl_c:
            continue
        body = twins.propagate(tmpl_asm, tmpl_c, asm)
        if body and target in body:
            out.append((target, tmpl_name, body))
    return out


def try_one(conn, target: str, tmpl: str, body: str, dry_run: bool) -> str:
    with gitops.repo_lock(what=f"twin_backfill {target}"):
        # Snapshot the exact bytes, rather than reverting with
        # `git checkout -- <file>` the way rescue_isolated_zeros.py does.
        # A git revert restores the file to HEAD, which silently DESTROYS any
        # uncommitted work in it -- hit for real here: declare_missing.py's
        # declaration repairs were working-tree-only, and the first sweep
        # threw them away and then reported the candidate as "does not
        # compile" for exactly the reason the repair had just fixed.
        stem = gitops._owning_source_stem(target)
        if stem is None:
            return "no owning source file"
        c_path = gitops.REPO / "src" / f"{stem}.c"
        pre = c_path.read_text()
        try:
            if gitops.splice_into_else(target, body) is None:
                return "no guard block to splice into"
            score = gitops.asm_differ_score(target)
        finally:
            # A predicate must not leave its splice behind: gitops.commit()
            # stages all of FACTORY_PATHS, so an abandoned splice gets swept
            # into whatever match commits next (see CLAUDE.md section F).
            if c_path.read_text() != pre:
                c_path.write_text(pre)

    if score is None:
        return "candidate does not compile"
    if score != 0:
        return f"score {score}, not a match"
    if dry_run:
        return "WOULD PROMOTE (score 0)"

    with db.tx(conn):
        db.set_state(conn, target, "validating", worker_id=None,
                     candidate_body=body, candidate_source="twin",
                     best_score=0,
                     notes=f"twin_backfill: shape-identical to matched {tmpl}, "
                           f"constants substituted, asm-differ score 0")
    db.log_event(conn, target, "converged", f"score=0 (twin of {tmpl})")
    return "PROMOTED -> validating"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--list-only", action="store_true",
                    help="just report the twin pairs, generate no builds")
    args = ap.parse_args()

    conn = db.connect()
    cands = candidates(conn)
    print(f"{len(cands)} unmatched function(s) have an already-matched structural twin\n")
    if args.list_only:
        for t, tm, _ in cands:
            print(f"  {t:26} <- {tm}")
        return
    if args.limit:
        cands = cands[: args.limit]

    tally: dict[str, int] = {}
    for i, (target, tmpl, body) in enumerate(cands, 1):
        try:
            verdict = try_one(conn, target, tmpl, body, args.dry_run)
        except Exception as e:  # one bad row must not end the sweep
            verdict = f"error: {e}"
        key = verdict.split(" (")[0].split(",")[0]
        tally[key] = tally.get(key, 0) + 1
        flag = "  ->" if verdict.startswith(("PROMOTED", "WOULD")) else "    "
        print(f"{flag} [{i}/{len(cands)}] {target:26} <- {tmpl:22} {verdict}")
        time.sleep(LOCK_BREATH_S)

    print("\n=== summary ===")
    for k, v in sorted(tally.items(), key=lambda kv: -kv[1]):
        print(f"  {v:4}  {k}")
    conn.close()


if __name__ == "__main__":
    main()
