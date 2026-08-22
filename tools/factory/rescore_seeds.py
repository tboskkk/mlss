#!/usr/bin/env python3
"""Re-score seeds against a PLAIN build, because the stored scores measure
object layout rather than code quality.

THE BUG THIS EXISTS FOR.

`gitops.asm_differ_score()` splices the candidate into the guard's `#else`
branch and lets asm-differ rebuild with `NONMATCHING=1` (diff_settings.py's
`make_command`). In that build every sibling whose `#else` is the empty
"no C attempt yet" placeholder simply does not exist, so the object holds a
handful of functions while `expected/` holds all of them. asm-differ `-o`
then diffs the OBJECTS -- 869 lines for one 24-line function -- and the
score is dominated by hundreds of target-only rows for functions the
candidate side was never going to contain.

So the score is mostly a measure of HOW MANY FUNCTIONS FOLLOW THIS ONE IN
ITS FILE. Measured across all 3,251 scored `tier2_ready` rows:

    position in object            n     median score   %>=20000
    LAST (nothing follows)      433          1,200        0.9%
    1-2 functions after         597          5,250       13.1%
    3-10 after                  975         16,050       46.4%
    >10 after                 1,246         91,130       77.3%

Same code quality, 76x the score, purely from position. That artifact then
drives the whole queue: `tier2.SEED_SCORE_CEILING` (5000) deprioritises
"expensive" seeds, and CLAUDE.md's own conversion table -- "227 seeds above
20,000 have been searched and none has ever matched" -- is measuring
position, not difficulty. Functions early in a big file were being starved
no matter how close their C was.

THE FIX. Remove the guard (`splice_candidate`) and build PLAIN. Then both
objects contain every function, the trailing functions are identical retail
bytes on both sides and contribute nothing, and the score reflects only this
candidate. First function tried went from a stored **84,310 to 10** -- ten
points from a match, sitting in the band the scheduler refuses to spend a
slot on.

Declarations are supplied by declare_missing before the build, in plain mode,
because a plain build cannot see declarations that live inside a sibling's
`#else` branch.
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import declare_missing  # noqa: E402
import gitops  # noqa: E402

LOCK_BREATH_S = 0.3
SCORE_RE = re.compile(r"CURRENT \((\d+)\)")
_known: frozenset[str] | None = None


def known() -> set[str]:
    global _known
    if _known is None:
        _known = frozenset(declare_missing.rom_symbols())
    return set(_known)


def plain_score(name: str, body: str, keep_decls: bool = False,
                assume_spliced: bool = False) -> int | None:
    """asm-differ's score for `name` measured against a plain build.

    `keep_decls` retains the declarations the build needed. The candidate
    BODY is always reverted -- the validator re-splices it from
    candidate_body -- but the declarations have to survive or the validator's
    from-scratch build fails on the very symbols this candidate needs, and a
    real match is thrown away. They emit no code.
    """
    stem = gitops._owning_source_stem(name)
    if stem is None:
        return None
    c_path = gitops.REPO / "src" / f"{stem}.c"
    pre = c_path.read_text()
    obj = gitops.REPO / "build" / "src" / f"{stem}.o"
    added: list[str] = []
    try:
        # `assume_spliced` is for the validator, which has ALREADY removed the
        # guard before it asks. Calling splice_candidate() again there finds no
        # guard block and returns None -- the documented trap in CLAUDE.md N.4a
        # -- which silently turns this into "no verdict".
        if not assume_spliced and gitops.splice_candidate(name, body) is None:
            return None
        _, added = declare_missing.repair_in_place(stem, known(), nonmatching=False)
        for stale in (obj, gitops.REPO / "build" / "src" / f"{stem}.s"):
            stale.unlink(missing_ok=True)
        if gitops.run(["./container.sh", "make",
                       f"build/src/{stem}.o"]).returncode != 0:
            return None
        # No -m: the object is already built, and -m would rebuild it with
        # NONMATCHING=1, which is the whole bug.
        r = subprocess.run(["./container.sh", "asm-differ", "-o", name],
                           cwd=gitops.REPO, capture_output=True, text=True)
        m = SCORE_RE.search(r.stdout + r.stderr)
        return int(m.group(1)) if m else None
    finally:
        # When the caller owns the splice (the validator), leave the tree as we
        # found it -- spliced, with the declarations the plain build needed.
        # Restoring `pre` there would undo the candidate finish_match() is
        # about to build.
        if not assume_spliced:
            c_path.write_text(pre)
        obj.unlink(missing_ok=True)
        if keep_decls and added and not assume_spliced:
            text = c_path.read_text()
            at = declare_missing.insert_point(text)
            # Header region only: a guard's #else often already carries the
            # declaration, but splice_candidate deletes the guard with it.
            fresh = [d for d in added if d not in text[:at]]
            if fresh:
                c_path.write_text(text[:at] + "\n\n" + "\n".join(fresh) + "\n"
                                  + text[at:])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=50)
    ap.add_argument("--min-score", type=int, default=0,
                    help="only rows whose STORED score is at least this")
    ap.add_argument("--dry-run", action="store_true",
                    help="report the change, do not write best_score")
    ap.add_argument("--promote", action="store_true",
                    help="send plain-score-0 rows to validating (the real gate)")
    args = ap.parse_args()

    conn = db.connect()
    rows = [(r["name"], r["best_score"], r["candidate_body"]) for r in conn.execute(
        "SELECT name, best_score, candidate_body FROM functions "
        "WHERE state = 'tier2_ready' AND candidate_body IS NOT NULL "
        "AND best_score >= ? ORDER BY best_score DESC LIMIT ?",
        (args.min_score, args.limit))]
    print(f"re-scoring {len(rows)} seed(s) against a plain build\n")

    improved = big = 0
    for i, (name, old, body) in enumerate(rows, 1):
        try:
            with gitops.repo_lock(what=f"rescore {name}"):
                new = plain_score(name, body, keep_decls=args.promote)
        except Exception as e:
            print(f"    [{i}/{len(rows)}] {name:22} error: {e}")
            continue
        if new is None:
            print(f"    [{i}/{len(rows)}] {name:22} stored {old:>7} -> no score")
            continue
        delta = (old or 0) - new
        if delta > 0:
            improved += 1
        if new < 5000 <= (old or 0):
            big += 1
        flag = "  ->" if new < 5000 <= (old or 0) else "    "
        print(f"{flag}[{i}/{len(rows)}] {name:22} stored {old:>7} -> plain {new:>7}")
        if not args.dry_run:
            with db.tx(conn):
                conn.execute(
                    "UPDATE functions SET best_score = ?, updated_at = ? WHERE name = ?",
                    (new, time.time(), name))
            if args.promote and new == 0:
                # asm-differ score 0 is NOT proof -- it compares instructions
                # and cannot see a length difference. validator's from-scratch
                # ROM sha1 remains the gate; this only queues the candidate.
                with db.tx(conn):
                    db.set_state(conn, name, "validating", worker_id=None,
                                 candidate_body=body, candidate_source="rescore",
                                 best_score=0,
                                 notes="rescore_seeds: plain-build asm-differ score 0 "
                                       "(stored NONMATCHING score was measuring object "
                                       "layout, not this function)")
                db.log_event(conn, name, "converged", "score=0 (plain-build rescore)")
        time.sleep(LOCK_BREATH_S)

    print(f"\n=== {improved}/{len(rows)} scored lower; "
          f"{big} crossed below the 5000 slot ceiling ===")
    conn.close()


if __name__ == "__main__":
    main()
