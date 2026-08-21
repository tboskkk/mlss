#!/usr/bin/env python3
"""Recover matches decomp-permuter already found and tier2 threw away.

THE BUG THIS CLEANS UP AFTER. The permuter searches an isolated copy of a
function (`nonmatchings/<name>/base.c`) that carries m2c's guessed callee
prototypes above the function body. When a search converged, tier2 spliced
the winning source back with `trim_source()`, which cuts at the function
and so left those prototypes behind. In the real `src/*.c` the callee is
then undeclared -- and agbcc runs `-Wimplicit -Werror`, so the splice did
not merely score differently, it did not COMPILE. `already_matches()`
reported False, tier2 logged "permuter reached score 0 in isolation but the
candidate does not match in its real source file", and the row went back to
`tier2_ready` to be searched again from scratch.

Measured when found: **178 distinct functions** had reached score 0 this
way; only 10 were ever matched. tier2 had spent **1,599 of 2,897 launches
(55%)** over 24h re-searching them, which is why convergence read 0.6% over
12h against a 15.6% historical baseline. The searches were succeeding; the
answers were being discarded.

`tier2.reattach_decls()` fixes it going forward. This tool recovers the
backlog: for every affected function whose permuter output is still on
disk, it reattaches the prototypes, re-scores in the REAL source file, and
promotes a confirmed zero to `validating`.

Nothing here bypasses a gate. A promoted row still goes through the
ordinary validator (from-scratch build, byte-identical ROM) exactly like
any other candidate -- this only stops a real match from being thrown
away before it ever reaches that gate.

Usage:
    python3 tools/factory/rescue_isolated_zeros.py --dry-run
    python3 tools/factory/rescue_isolated_zeros.py [--limit N]
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import tier2  # noqa: E402

# Give other factory processes a chance at the repo lock between functions.
# repo_lock has no fairness: a tool that re-takes it immediately will starve
# the validator, tier2's isolation step, and every git commit indefinitely
# (CLAUDE.md, section E). This tool is a backlog sweep, not a race.
LOCK_BREATH_S = 0.75


def affected(conn) -> list[str]:
    """Functions whose permuter result was recorded but never turned into a
    match. Two shapes, both recoverable from what is still on disk:

      1. The search reached zero in isolation and tier2 rejected it (the
         bug this tool exists for).
      2. The permuter reported the BASE score was already 0 -- the seed
         itself matched -- but `candidate_body` was NULL, so tier2 had
         nothing to promote and filed it under needs_human as "permuter
         says base score 0 but no candidate_body on record". The body is
         not actually lost: `nonmatchings/<name>/base.c` IS the source the
         permuter scored, so winning_source() falls back to it.
    """
    names = {
        r["function_name"]
        for r in conn.execute(
            "SELECT function_name FROM events WHERE kind = 'state:stalled' "
            "AND detail LIKE '%score 0 in isolation%'"
        )
    }
    names |= {
        r["name"]
        for r in conn.execute(
            "SELECT name FROM functions WHERE notes LIKE "
            "'%base score 0 but no candidate_body%'"
        )
    }
    out = []
    for name in sorted(names):
        row = conn.execute("SELECT state FROM functions WHERE name = ?", (name,)).fetchone()
        if row is None or row["state"] in ("matched", "validating", "permuting", "excluded"):
            continue
        if winning_source(name) is None:
            continue  # output cleaned up; the fixed tier2 will re-find it
        out.append(name)
    return out


def winning_source(name: str) -> Path | None:
    """The permuter output directory that actually scored 0.

    Selected by reading score.txt, not by sorting directory names:
    decomp-permuter writes one dir per improvement (`output-405-1`,
    `output-0-1`, ...), and lexical order puts `output-0-1` first only by
    luck of the digits involved.
    """
    for src in Path("nonmatchings", name).glob("output-*/source.c"):
        score_file = src.parent / "score.txt"
        if score_file.is_file() and score_file.read_text().strip() == "0":
            return src
    # No improvement was ever written because none was needed: the base
    # attempt already scored 0. base.c is then the winning source.
    base = Path("nonmatchings", name, "base.c")
    return base if base.is_file() else None


def rescue_one(conn, name: str, dry_run: bool) -> str:
    src = winning_source(name)
    if src is None:
        return "no score-0 output on disk"

    best = None
    for body in tier2.reattach_decls(src.read_text(), name):
        if name not in body:
            continue
        with gitops.repo_lock(what=f"rescue {name}"):
            c_path = gitops.splice_into_else(name, body)
            if c_path is None:
                return "no guard block to splice into"
            try:
                score = gitops.asm_differ_score(name)
            finally:
                gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
        if score == 0:
            best = body
            break
        if best is None:
            best = score  # remember the least-bad verdict for the report
        time.sleep(LOCK_BREATH_S)

    if not isinstance(best, str):
        return "no compiling prefix" if best is None else f"best in-place score {best}, not a match"
    body = best
    if dry_run:
        return "WOULD PROMOTE (score 0)"

    with db.tx(conn):
        db.set_state(conn, name, "validating", worker_id=None,
                     candidate_body=body, candidate_source="permuter",
                     best_score=0,
                     notes="rescued: permuter score 0, callee prototypes reattached "
                           "(see rescue_isolated_zeros.py)")
    db.log_event(conn, name, "converged", "score=0 (rescued from isolation-zero rejection)")
    return "PROMOTED -> validating"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args()

    conn = db.connect()
    names = affected(conn)
    if args.limit:
        names = names[: args.limit]
    print(f"{len(names)} function(s) with a rejected isolation-zero and output still on disk\n")

    tally: dict[str, int] = {}
    for i, name in enumerate(names, 1):
        try:
            verdict = rescue_one(conn, name, args.dry_run)
        except Exception as e:  # keep sweeping; one bad row must not end the pass
            verdict = f"error: {e}"
        tally[verdict.split(" (")[0]] = tally.get(verdict.split(" (")[0], 0) + 1
        flag = "  ->" if verdict.startswith(("PROMOTED", "WOULD")) else "    "
        print(f"{flag} [{i}/{len(names)}] {name:26} {verdict}")
        time.sleep(LOCK_BREATH_S)

    print("\n=== summary ===")
    for k, v in sorted(tally.items(), key=lambda kv: -kv[1]):
        print(f"  {v:4}  {k}")
    conn.close()


if __name__ == "__main__":
    main()
