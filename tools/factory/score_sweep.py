#!/usr/bin/env python3
"""Score every unscored seed in the tier2_ready queue, cheaply, up front.

Why this exists: `tier_m2c.py --no-score` (fast drain mode) deliberately
skips scoring, because scoring runs under the repo lock and is ~90% of the
per-function cost during a drain. That is the right trade WHILE draining --
tier2 detects a byte-exact seed on its own via base_already_zero(), so
nothing is lost permanently.

But "not lost permanently" is not the same as "cheap". tier2 only finds out
when the function reaches the front of the queue and gets one of 12
permuter slots, and a slot is held for up to stall_seconds_for() = 900s.
With a queue thousands deep, that is the difference between finding a
byte-exact seed in one second and finding it in days.

Measured on a random 50 of 4,413 unscored seeds:

    byte-exact (score 0)   6%    -> ~264 matches sitting in the queue
    real score > 0        38%    -> genuine permuter work
    does not compile      56%    -> will never permute at all
    cost                  0.9s each, ~1.1h for the whole queue

So the sweep does two things, and the second one matters as much as the
first:

  1. Byte-exact seeds go straight to `validating` -- ~264 matches that
     would otherwise each wait on a 15-minute search.
  2. Seeds that do not compile leave the queue instead of being discovered
     one permuter slot at a time. Over half the queue is these; every one
     of them is a slot not spent on a function that could actually match.

Usage:
    python3 tools/factory/score_sweep.py              # sweep the whole queue
    python3 tools/factory/score_sweep.py --limit 200  # or just some of it
    python3 tools/factory/score_sweep.py --dry-run    # measure, change nothing

Safe to run against a live factory: every repo touch is inside
gitops.repo_lock() and the spliced candidate is always reverted, whether
scoring succeeded or not.
"""
from __future__ import annotations

import argparse
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402


def score_one(name: str, body: str):
    """-> score (0 = byte-exact), or None if the seed doesn't compile.

    Splices into the #else branch (keeping the guard) exactly the way
    tier_m2c's own scoring path does, and always reverts.
    """
    with gitops.repo_lock(what=f"score_sweep {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            return None
        try:
            return gitops.asm_differ_score(name)
        finally:
            gitops.run(["git", "checkout", "--",
                        str(c_path.relative_to(gitops.REPO))])


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true",
                    help="score and report, but leave every row's state alone")
    args = ap.parse_args()

    conn = db.connect()
    rows = conn.execute(
        "SELECT name, candidate_body FROM functions "
        "WHERE state = 'tier2_ready' AND best_score IS NULL "
        "AND candidate_body IS NOT NULL AND worker_id IS NULL "
        "ORDER BY lines ASC"
    ).fetchall()
    if args.limit:
        rows = rows[: args.limit]

    print(f"{len(rows)} unscored seed(s) in the tier2_ready queue"
          f"{' (dry run)' if args.dry_run else ''}\n")

    zero = nonzero = nocompile = skipped = 0
    t0 = time.time()

    for i, row in enumerate(rows, 1):
        name, body = row["name"], row["candidate_body"]

        # Re-check state under the lock's shoulder: tier2 may have claimed
        # this row since the query. Losing the race is fine -- tier2 does
        # the same job -- but writing over its claim is not.
        cur = conn.execute("SELECT state, worker_id FROM functions WHERE name = ?",
                           (name,)).fetchone()
        if cur is None or cur["state"] != "tier2_ready" or cur["worker_id"] is not None:
            skipped += 1
            continue

        try:
            score = score_one(name, body)
        except Exception as e:
            print(f"  !! {name}: {e}")
            skipped += 1
            continue

        if score is None:
            nocompile += 1
            if not args.dry_run:
                with db.tx(conn):
                    db.set_state(conn, name, "needs_attempt", worker_id=None,
                                 notes="score_sweep: seed does not compile -- pulled "
                                       "out of the permuter queue rather than "
                                       "spending a slot to find out")
        elif score == 0:
            zero += 1
            print(f"  [{i}/{len(rows)}] BYTE-EXACT: {name}")
            if not args.dry_run:
                with db.tx(conn):
                    db.set_state(conn, name, "validating", worker_id=None,
                                 best_score=0,
                                 notes="score_sweep: byte-exact straight from the "
                                       "seed, zero search needed")
                db.log_event(conn, name, "converged", "score_sweep: score=0")
        else:
            nonzero += 1
            if not args.dry_run:
                with db.tx(conn):
                    db.set_state(conn, name, "tier2_ready", worker_id=None,
                                 best_score=score,
                                 notes=f"score_sweep: real seed, asm-differ score {score}")

        if i % 50 == 0:
            el = time.time() - t0
            done = zero + nonzero + nocompile
            print(f"  ...{i}/{len(rows)}  byte-exact={zero}  scored={nonzero}  "
                  f"no-compile={nocompile}  ({el/max(done,1):.1f}s each)")
            conn.commit()

    conn.commit()
    conn.close()

    el = time.time() - t0
    done = zero + nonzero + nocompile
    print(f"\n=== swept {done} in {el/60:.1f} min ===")
    print(f"  byte-exact -> validating : {zero}")
    print(f"  real score -> stays queued: {nonzero}")
    print(f"  no-compile -> needs_attempt: {nocompile}")
    print(f"  skipped (claimed/raced)  : {skipped}")


if __name__ == "__main__":
    main()
