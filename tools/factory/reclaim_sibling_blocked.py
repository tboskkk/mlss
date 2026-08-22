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
import concurrent.futures
import os
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

# The work is per-function and independent: m2c reads one fragment,
# compiles_in_isolation() writes name-scoped files under .claude/factory/iso
# and never touches src/, asm/ or build/, so no repo lock is involved and
# nothing collides. That makes it safely parallel.
#
# Worth knowing where the time actually goes, because two plausible answers
# were both wrong. Measured: the sweep ran at 7 rows/min with the factory
# live and 11/min with the machine IDLE (load 3.7), so contention was not
# the cost; and container.sh returns in 0.096s because it reuses a warm
# container, so process startup was not it either. The cost is m2c itself,
# roughly 5s per function under --regenerate. That is CPU-bound and
# embarrassingly parallel.
DEFAULT_WORKERS = max(1, (os.cpu_count() or 4) // 2)


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
    ap.add_argument("--workers", type=int, default=DEFAULT_WORKERS,
                    help=f"parallel m2c/compile workers (default {DEFAULT_WORKERS})")
    args = ap.parse_args()

    conn = db.connect()
    names = candidates(conn)
    if args.limit:
        names = names[: args.limit]
    print(f"{len(names)} seed(s) previously judged non-compiling\n")

    stored = {r["name"]: r["candidate_body"] for r in conn.execute(
        "SELECT name, candidate_body FROM functions")}

    def examine(name):
        """Pure: returns (name, body_or_None). No DB writes off the main thread."""
        try:
            body = m2c_bridge.generate(name) if args.regenerate else stored.get(name)
            if not body:
                return name, None
            return name, (body if gitops.compiles_in_isolation(name, body) else None)
        except Exception:
            return name, None

    promoted = failed = noseed = 0
    started = time.time()
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        for i, (name, body) in enumerate(pool.map(examine, names), 1):
            if body is None:
                if stored.get(name):
                    failed += 1
                else:
                    noseed += 1
            else:
                promoted += 1
                print(f"  [{i}/{len(names)}] {name:24} compiles alone -> "
                      f"{'WOULD PROMOTE' if args.dry_run else 'tier2_ready'}")
                if not args.dry_run:
                    with db.tx(conn):
                        db.set_state(conn, name, "tier2_ready", worker_id=None,
                                     candidate_body=body, candidate_source="m2c",
                                     notes="reclaimed: compiles in ISOLATION; its "
                                           "shared translation unit was failing on a "
                                           "sibling's draft. The permuter works in "
                                           "isolation too.")
                    db.log_event(conn, name, "seeded", "reclaimed via isolated compile")
            if i % 100 == 0:
                rate = i / max(1e-9, time.time() - started) * 60
                print(f"    ...{i}/{len(names)}  promoted={promoted} failed={failed} "
                      f"({rate:.0f}/min)")

    print(f"\n=== {len(names)} examined ===")
    print(f"  promoted (compile alone) : {promoted}")
    print(f"  genuinely broken         : {failed}")
    print(f"  no seed available        : {noseed}")
    conn.close()


if __name__ == "__main__":
    main()
