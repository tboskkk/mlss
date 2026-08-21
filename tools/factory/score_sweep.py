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
import m2c_bridge  # noqa: E402


# How many no-compiles in a row before we stop trusting them and go check
# whether it's the TREE that's broken rather than the seeds. With a real
# no-compile rate around 55%, 40 consecutive is astronomically unlikely by
# chance; a broken tree produces it instantly.
NOCOMPILE_TRIPWIRE = 40


def _tree_builds() -> bool:
    """Does the repo currently produce a byte-correct ROM?"""
    r = gitops.run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        return False
    ok, _detail = gitops.layout_ok()
    return ok


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

    # Refuse to start against a broken tree. asm-differ has to BUILD to
    # produce a score, so if the tree doesn't build, every single seed
    # scores as "doesn't compile" -- and this tool would then dutifully
    # pull the entire queue out of the permuter and file it as garbage.
    # That happened for real: a validator killed mid-finish_match left a
    # deleted fragment behind, and the sweep mislabeled 1,291 functions in
    # six minutes before anyone noticed.
    with gitops.repo_lock(what="score_sweep startup check"):
        if not _tree_builds():
            raise SystemExit(
                "REFUSING to sweep: the tree does not build, so every seed would "
                "score as 'does not compile'.\nFix the build first "
                "(./container.sh make, then tools/check_layout.py).")
    print("tree builds -- starting\n")

    zero = nonzero = nocompile = skipped = 0
    consecutive_nocompile = 0
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
            consecutive_nocompile += 1
            if consecutive_nocompile >= NOCOMPILE_TRIPWIRE:
                # Don't guess -- go and look. If the tree really does build,
                # these seeds are genuinely bad and we carry on; if it
                # doesn't, every verdict since the breakage is worthless and
                # continuing would just mislabel the rest of the queue.
                print(f"  !! {consecutive_nocompile} no-compiles in a row -- checking the tree")
                with gitops.repo_lock(what="score_sweep tripwire check"):
                    healthy = _tree_builds()
                if not healthy:
                    conn.commit()
                    raise SystemExit(
                        f"STOPPING at {i}/{len(rows)}: the tree stopped building, so every "
                        f"'does not compile' verdict since then is meaningless.\n"
                        f"Fix the build, then re-run -- rows are only marked as they are "
                        f"scored, so this picks up where it left off.")
                print("  ...tree is fine, those seeds really don't compile")
                consecutive_nocompile = 0
            if not args.dry_run:
                with db.tx(conn):
                    # Stamp it with the ruleset, exactly like tier_m2c's own
                    # declines. Without the stamp tier_m2c does not recognise
                    # this as already-judged and re-generates the identical
                    # seed for the identical verdict: measured at 1,759
                    # pointless re-tries in 30 minutes for 38 useful results,
                    # all of it holding the repo lock that tier2's isolation
                    # and the validator need. The verdict is a property of the
                    # ruleset, so it should expire with the ruleset and not a
                    # moment sooner.
                    db.set_state(conn, name, "needs_attempt", worker_id=None,
                                 notes=f"m2c:{m2c_bridge.ruleset_version()}: seed does "
                                       "not compile (found by score_sweep, pulled out of "
                                       "the permuter queue rather than spending a slot "
                                       "to find out)")
        elif score == 0:
            zero += 1
            consecutive_nocompile = 0
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
            consecutive_nocompile = 0
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
