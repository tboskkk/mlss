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
import fix_decl_conflicts
import rescore_seeds
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


def all_on_disk(conn) -> list[str]:
    """Every unmatched function with a score-0 permuter output still on disk.

    Broader than affected(), which keys on specific event/note text. A win can
    end up unused for reasons that left no such marker - the run was killed,
    the row was requeued by another tool, the note was overwritten - and the
    output directory is the ground truth either way. The scoring gate below
    decides whether it is real, so widening the candidate set costs a build per
    function and cannot promote anything unearned.
    """
    out = []
    for d in sorted(Path("nonmatchings").glob("*/")):
        name = d.name
        row = conn.execute("SELECT state FROM functions WHERE name = ?", (name,)).fetchone()
        if row is None or row["state"] in ("matched", "validating", "permuting", "excluded"):
            continue
        # Require a real permuter WIN, not winning_source()'s base.c fallback.
        # That fallback is right for affected(), where an event already said the
        # base scored 0; in a blind sweep it matches every function that merely
        # has a seed on disk (2,413 of them) and replays m2c output as though a
        # search had endorsed it.
        if not any((d / "score.txt").is_file()
                   and (d / "score.txt").read_text().strip() == "0"
                   and (d / "source.c").is_file()
                   for d in Path("nonmatchings", name).glob("output-*")):
            continue
        out.append(name)
    return out


def rescue_one(conn, name: str, dry_run: bool) -> str:
    src = winning_source(name)
    if src is None:
        return "no score-0 output on disk"

    # Variants: what reattach_decls produces, plus a decl-conflict repair of
    # each. Measured on the first 37 of this sweep, EVERY "no compiling prefix"
    # failure (10 of 10) was the same cause - `X redeclared as different kind
    # of symbol`, where m2c's `extern s32 X;` for an address-taken symbol
    # collides with the same file DEFINING X as a function. See
    # fix_decl_conflicts.py; the repair is byte-neutral.
    variants = [b for b in tier2.reattach_decls(src.read_text(), name) if name in b]
    _cp, _block = gitops.find_guard_block(name)
    file_backup = None
    if _cp is not None and variants:
        ftext = _cp.read_text()
        # Shape 2, and the common one here: the stale `extern s32 <name>;` is at
        # FILE scope, emitted earlier for a sibling that takes `&name` while
        # name was still a guard. Splicing name's definition collides with it.
        # Repairing that means editing the file, so keep a backup and put it
        # back unless this candidate actually wins.
        newf, _proto = fix_decl_conflicts.repair_file_scope(ftext, name, variants[0])
        if newf is not None:
            ftext = newf
        # Shape 3: some OTHER symbol the file declares as data (because it
        # takes its address) but this candidate CALLS. Both declarations land
        # in one unit and the object dies. Measured on the second sweep: this
        # was most of what still reported "no compiling prefix".
        newf3, _syms = fix_decl_conflicts.repair_file_third_party(ftext, variants[0])
        if newf3 is not None:
            ftext = newf3
        if ftext != _cp.read_text():
            file_backup = _cp.read_text()
            with gitops.repo_lock(what=f"decl repair {name}"):
                _cp.write_text(ftext)
        # Shape 1: the declaration is inside the candidate itself.
        for b in list(variants):
            repaired, _syms = fix_decl_conflicts.repair(b, ftext)
            if repaired:
                variants.append(repaired)

    best = None
    for body in variants:
        if name not in body:
            continue
        # Scored against a PLAIN build, not asm_differ_score()'s NONMATCHING
        # one. Under NONMATCHING=1 every sibling with an empty `#else` vanishes
        # from the object while expected/ still holds all of them, so asm-differ
        # -o diffs whole objects and the score is dominated by functions that
        # merely FOLLOW this one in its file (CLAUDE.md N.4a: same code, 76x the
        # score, purely from position). Gating a finished permuter win on that
        # number threw real matches away -- which is the exact failure this
        # tool exists to clean up after.
        with gitops.repo_lock(what=f"rescue {name}"):
            score = rescore_seeds.plain_score(name, body)
        if score == 0:
            best = body
            break
        if best is None and score is not None:
            best = score  # remember the least-bad verdict for the report
        time.sleep(LOCK_BREATH_S)

    if not isinstance(best, str):
        if file_backup is not None and _cp is not None:
            with gitops.repo_lock(what=f"revert decl repair {name}"):
                _cp.write_text(file_backup)
        if best is None:
            return "no compiling prefix"
        # Keep the plain-build score. The row's stored best_score is usually
        # the positional artifact (CLAUDE.md N.4a), and tier2 claims
        # closest-first within a round -- so a genuine near-miss like 5 or 12
        # stays buried behind inflated numbers unless the real figure is
        # written back. Costs nothing: the score was already measured.
        with db.tx(conn):
            db.set_state(conn, name, "tier2_ready", worker_id=None,
                         best_score=best,
                         notes=f"rescue: permuter zero did not reproduce in the real "
                               f"file; plain-build score {best}")
        return f"best in-place score {best}, not a match"
    body = best
    if dry_run:
        return "WOULD PROMOTE (score 0)"

    # Re-run once purely to install the declarations the plain build needed.
    # Without them the validator's from-scratch build fails on the very symbols
    # this candidate references and a real match is discarded. They emit no
    # code. Only winners pay this extra build.
    with gitops.repo_lock(what=f"rescue {name} decls"):
        rescore_seeds.plain_score(name, body, keep_decls=True)

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
    ap.add_argument("--all-on-disk", action="store_true",
                    help="replay EVERY unmatched function with a score-0 output "
                         "on disk, not just the ones tier2 marked")
    args = ap.parse_args()

    conn = db.connect()
    names = all_on_disk(conn) if args.all_on_disk else affected(conn)
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
