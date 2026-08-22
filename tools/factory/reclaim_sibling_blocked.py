#!/usr/bin/env python3
"""Reclaim seeds that were failed by a SIBLING, not by themselves.

agbcc compiles a whole translation unit, and split_func.py appends every
newly extracted function to an existing src/*.c -- so one file holds dozens
of unproven `#else` drafts, and any one of them fails the object. Every
"does not compile" verdict in this project was taken that way, in the shared
tree, so an unknown share of them were never about the function being
judged.

Measured on a random 30 of the 2,256-seed pile: **16.7% compile perfectly
well alone**, i.e. roughly 377 seeds filed as broken because a neighbour
was.

Those seeds are not merely mislabelled, they are USABLE: decomp-permuter
works on an isolated copy as well (tier2.ensure_isolated -> permute.py
builds nonmatchings/<name>/ with its own single-function .c), so the search
can match them however broken their real file happens to be.

This re-tests the backlog in isolation and promotes what passes. tier_m2c
does the same check going forward; this is the one-time catch-up.

Nothing bypasses a gate: a promoted row still goes to the permuter and then
through the validator's from-scratch build like any other candidate.

Usage:
    python3 tools/factory/reclaim_sibling_blocked.py --dry-run
    python3 tools/factory/reclaim_sibling_blocked.py [--limit N]
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

# compiles_in_isolation() writes two small files and shells out twice; it
# does NOT take the repo lock, because it never touches src/, asm/ or
# build/. Still pause between rows so a long sweep cannot monopolise the
# container or the CPU the permuter is using.
BREATH_S = 0.3


def candidates(conn) -> list[str]:
    return [r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state IN ('needs_attempt', 'stalled') "
        "AND candidate_body IS NOT NULL AND notes LIKE '%compile%' "
        "ORDER BY lines ASC")]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--regenerate", action="store_true",
                    help="re-run m2c instead of using the stored candidate "
                         "(picks up ruleset changes such as the ldsb/ldsh patch)")
    args = ap.parse_args()

    conn = db.connect()
    names = candidates(conn)
    if args.limit:
        names = names[: args.limit]
    print(f"{len(names)} seed(s) previously judged non-compiling\n")

    promoted = failed = noseed = 0
    for i, name in enumerate(names, 1):
        row = conn.execute("SELECT candidate_body FROM functions WHERE name = ?",
                           (name,)).fetchone()
        body = m2c_bridge.generate(name) if args.regenerate else row["candidate_body"]
        if not body:
            noseed += 1
            continue
        if gitops.compiles_in_isolation(name, body):
            promoted += 1
            print(f"  [{i}/{len(names)}] {name:24} compiles alone -> "
                  f"{'WOULD PROMOTE' if args.dry_run else 'tier2_ready'}")
            if not args.dry_run:
                with db.tx(conn):
                    db.set_state(conn, name, "tier2_ready", worker_id=None,
                                 candidate_body=body, candidate_source="m2c",
                                 notes="reclaimed: compiles in ISOLATION; its shared "
                                       "translation unit was failing on a sibling's "
                                       "draft. The permuter works in isolation too.")
                db.log_event(conn, name, "seeded", "reclaimed via isolated compile")
        else:
            failed += 1
        if i % 100 == 0:
            print(f"    ...{i}/{len(names)}  promoted={promoted} failed={failed}")
        time.sleep(BREATH_S)

    print(f"\n=== {len(names)} examined ===")
    print(f"  promoted (compile alone) : {promoted}")
    print(f"  genuinely broken         : {failed}")
    print(f"  no seed available        : {noseed}")
    conn.close()


if __name__ == "__main__":
    main()
