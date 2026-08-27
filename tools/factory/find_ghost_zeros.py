#!/usr/bin/env python3
"""Sweep nonmatchings/ + the DB for isolation-zero results that never
promoted -- "ghosts": a real decomp-permuter score.txt=0 sitting on disk
whose row is not state='matched'.

WHY THIS EXISTS. sub_81458C8 (2026-08-27) showed this is a real, recurring
class: tier_m2c's stale-seed reclaim (see tier_m2c._claim_stale_seed) used
to overwrite candidate_body on ANY tier2_ready row whose seed_ruleset had
gone stale, with no check for whether the row had ever reached isolation
score 0. That reseed is now guarded (tier_m2c._ghost_zero_source), but the
guard only stops FUTURE damage -- it does nothing for ghosts that already
exist. This tool finds them.

A ghost is not automatically a match: sub_81458C8 itself proved
isolation-zero and still differs from retail by 2 bytes once compiled in
its real translation unit (agbcc's register allocation is coupled across
the TU -- see the same incident). So this reports COUNTS AND NAMES, never
a verdict -- every ghost needs the same in-context check before anyone
believes it is a real match.

    python3 tools/factory/find_ghost_zeros.py
    python3 tools/factory/find_ghost_zeros.py --names sub_81458C8 sub_80E3D1C
"""
from __future__ import annotations

import argparse
import sqlite3
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
NONMATCHINGS_DIR = REPO / "nonmatchings"


def ghost_source(name: str) -> Path | None:
    d = NONMATCHINGS_DIR / name
    if not d.is_dir():
        return None
    for hit in sorted(d.glob("output-0-*/source.c")):
        score_file = hit.parent / "score.txt"
        if score_file.is_file() and score_file.read_text().strip() == "0":
            return hit
    return None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--names", nargs="*", help="check only these names, skip the DB sweep")
    ap.add_argument("--near-miss-only", action="store_true",
                     help="restrict the DB sweep to objdiff_score >= 90 (the near-miss band)")
    args = ap.parse_args()

    if args.names:
        candidates = args.names
        conn = None
    else:
        # Every name that HAS a nonmatchings/ dir is a candidate -- cheaper
        # than iterating the whole functions table, and this can only find
        # what the permuter actually ran on.
        if not NONMATCHINGS_DIR.is_dir():
            print("no nonmatchings/ directory found", file=sys.stderr)
            return 1
        candidates = sorted(p.name for p in NONMATCHINGS_DIR.iterdir() if p.is_dir())
        conn = sqlite3.connect(f"file:{REPO}/.claude/factory/state.db?mode=ro", uri=True)
        conn.row_factory = sqlite3.Row

    print(f"scanning {len(candidates)} nonmatchings/ director{'y' if len(candidates)==1 else 'ies'}...")

    ghosts = []
    for name in candidates:
        src = ghost_source(name)
        if src is None:
            continue
        row = None
        if conn is not None:
            row = conn.execute(
                "SELECT state, objdiff_score, iso_score, best_score, candidate_source "
                "FROM functions WHERE name=?", (name,)).fetchone()
        if row is not None and row["state"] == "matched":
            continue  # not a ghost -- it promoted, correctly
        if args.near_miss_only and row is not None:
            if row["objdiff_score"] is None or row["objdiff_score"] < 90:
                continue
        ghosts.append((name, src, row))

    print(f"\n{len(ghosts)} ghost(s): isolation score.txt=0 on disk, row not state='matched'\n")
    if ghosts:
        print(f"{'name':<20}{'state':<14}{'objdiff':>9}{'iso':>6}{'best':>7}  candidate_source (current, may be stale)")
        for name, src, row in ghosts:
            if row is None:
                print(f"{name:<20}{'(no DB row?)':<14}")
                continue
            od = f"{row['objdiff_score']:.1f}" if row["objdiff_score"] is not None else "-"
            iso = row["iso_score"] if row["iso_score"] is not None else "-"
            best = row["best_score"] if row["best_score"] is not None else "-"
            print(f"{name:<20}{row['state']:<14}{od:>9}{str(iso):>6}{str(best):>7}  {row['candidate_source']}")

    if conn is not None:
        conn.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
