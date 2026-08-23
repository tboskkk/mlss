#!/usr/bin/env python3
"""Requeue rows whose stored seed predates a decompiler improvement.

THE BUG THIS EXISTS FOR (CLAUDE.md finding F11).

`tier_m2c._claim()` reads only `needs_attempt`, then `stalled`. NOTHING ever
claims from `tier2_ready`. So the moment a row is seeded and promoted, its
`candidate_body` is frozen for life -- even when the seeder gets strictly
better afterwards.

That is section D's law ("any tier that declines work must leave SOMETHING
able to reclaim it") applied to the PROMOTE path instead of the decline path,
and it cost more than the decline case ever did:

  * Section J's ldsh/ldsb patch is applied and working (arch_arm.py:137).
  * Section N.1 fixed ruleset_version() so a patch re-opens declined rows.
  * Neither reaches a row that had already moved on to tier2_ready.

Measured on the live DB when this was written:

    1,639 rows still store a body containing M2C_ERROR
      6,905 `ldsh` + 592 `ldsb` occurrences -- exactly what the patch fixed
      863 of them sitting in tier2_ready, fed to the permuter as candidates
      596 permuter launches (9.4% of all 6,335) already spent on them

Smallest example, parked at score 210 with a body that cannot compile:

    sub_8158308:  movs r1, #0x1C / ldsh r0, [r0, r1] / bx lr
    m2c today:    return M2C_FIELD(arg0, s16 *, 0x1C);

WHAT THIS DOES. Clears `candidate_body`, `best_score` and `notes` and sends
the row back to `needs_attempt`, where tier_m2c will re-seed it from the
fragment. The fragment is the source of truth and a seed is regenerable, so
this cannot lose work -- the worst case is one wasted m2c run per row (~5s,
and it parallelises ~30x per section K).

WHY escalation_count IS RESET. tier2 orders its queue by attempt count FIRST
(section E), so a row that burned five searches on an uncompilable seed would
now wait behind everything else despite never having had a valid candidate.
Those attempts measured the broken seed, not the function, so they are not
evidence about it. Section I's measurement is the reason this matters:
first-attempt seeds are where the matches come from (176 of the first 201).
Use --keep-attempts to preserve the counter if that ever looks wrong.

WHAT IT DELIBERATELY WILL NOT TOUCH.

  * `permuting` rows. tier2 owns those in its in-process `procs` dict and
    marks them with worker_id=None, so there is no lock to take and no way to
    hand them back safely from outside. They are left alone; tier2's own
    stall timer returns them to tier2_ready within ~15 minutes, and the next
    run of this tool picks them up.
  * `matched` / `excluded` rows. Never.

Default is a DRY RUN. Pass --apply to write.

    python3 tools/factory/requeue_stale_seeds.py                 # report
    python3 tools/factory/requeue_stale_seeds.py --apply
    python3 tools/factory/requeue_stale_seeds.py --apply --pattern M2C_ERROR

This is DB-only -- it does not touch the working tree, so it needs no
gitops.repo_lock(). It is safe to run against a live factory.
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

# States a stale seed can be sitting in and still be safely reclaimable.
# 'permuting' and 'validating' are excluded on purpose -- another process
# owns those rows right now. See the module docstring.
RECLAIMABLE = ("tier2_ready", "needs_attempt", "stalled", "needs_human")

DEFAULT_PATTERN = "M2C_ERROR"


def survey(conn, pattern: str):
    rows = conn.execute(
        "SELECT name, state, lines, best_score, escalation_count, candidate_body "
        "FROM functions WHERE candidate_body LIKE ?",
        (f"%{pattern}%",),
    ).fetchall()
    return rows


def backfill(conn, apply: bool) -> int:
    """One-time: give existing m2c seeds the CURRENT ruleset stamp.

    tier_m2c._claim_stale_seed() reclaims a tier2_ready row when its
    `seed_ruleset` differs from the current one, and treats NULL as "this
    candidate did not come from m2c" so it never overwrites a twin/permuter/
    rescore candidate with a generated one. Every row seeded before that
    column existed is NULL, which would make the two meanings collide.

    Stamping them CURRENT rather than 'old' is the conservative choice: their
    bodies are already clean (the M2C_ERROR ones were requeued outright), many
    are scored and queued in the permuter, and re-seeding ~2,000 rows would
    churn that for no measured gain. They re-open on their own at the next
    real ruleset change, which is exactly the invariant this is establishing.
    """
    import m2c_bridge  # local: importing it is not free
    cur = m2c_bridge.ruleset_version()
    rows = conn.execute(
        "SELECT name FROM functions WHERE candidate_source = 'm2c' "
        "AND candidate_body IS NOT NULL AND seed_ruleset IS NULL"
    ).fetchall()
    print(f"current ruleset: {cur}")
    print(f"m2c-seeded rows with no ruleset stamp: {len(rows)}")
    if not apply:
        print("\nDRY RUN -- nothing written. Re-run with --apply.")
        return 0
    with db.tx(conn):
        conn.execute(
            "UPDATE functions SET seed_ruleset = ? WHERE candidate_source = 'm2c' "
            "AND candidate_body IS NOT NULL AND seed_ruleset IS NULL", (cur,))
    print(f"stamped {len(rows)} row(s) with {cur}.")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--apply", action="store_true",
                    help="actually write; default is a dry run")
    ap.add_argument("--pattern", default=DEFAULT_PATTERN,
                    help=f"substring identifying a stale body (default: {DEFAULT_PATTERN})")
    ap.add_argument("--keep-attempts", action="store_true",
                    help="do not reset escalation_count (see docstring)")
    ap.add_argument("--limit", type=int, default=0,
                    help="only requeue the first N reclaimable rows (0 = all)")
    ap.add_argument("--backfill-ruleset", action="store_true",
                    help="one-time: stamp existing m2c-seeded rows with the CURRENT "
                         "ruleset, so NULL seed_ruleset means 'not from m2c'")
    args = ap.parse_args()

    conn = db.connect()

    if args.backfill_ruleset:
        return backfill(conn, args.apply)
    rows = survey(conn, args.pattern)
    if not rows:
        print(f"no rows carry {args.pattern!r} in candidate_body -- nothing to do")
        return 0

    by_state = Counter(r["state"] for r in rows)
    reclaimable = [r for r in rows if r["state"] in RECLAIMABLE]
    skipped = [r for r in rows if r["state"] not in RECLAIMABLE]

    # What the stale bodies actually contain, so the report is evidence and
    # not just a count. Section J's whole point was that three mnemonics
    # accounted for every occurrence.
    mn = Counter()
    for r in rows:
        for m in re.findall(r"M2C_ERROR\(/\* (?:unknown instruction: )?(\w+)", r["candidate_body"] or ""):
            mn[m] += 1

    print(f"rows carrying {args.pattern!r}: {len(rows)}")
    for st, n in by_state.most_common():
        mark = "" if st in RECLAIMABLE else "   <- owned elsewhere, skipping"
        print(f"    {st:<16} {n}{mark}")
    if mn:
        print("\n  what is in those bodies:")
        for k, v in mn.most_common(8):
            print(f"    {k:<20} {v}")

    small = sum(1 for r in reclaimable if (r["lines"] or 0) <= 60)
    print(f"\nreclaimable: {len(reclaimable)}   ({small} are <= 60 lines)")
    print(f"skipped:     {len(skipped)}")

    if args.limit:
        reclaimable = reclaimable[: args.limit]
        print(f"--limit {args.limit}: requeueing {len(reclaimable)}")

    if not args.apply:
        print("\nDRY RUN -- nothing written. Re-run with --apply.")
        return 0

    fields = dict(candidate_body=None, candidate_source=None,
                  best_score=None, notes=None, worker_id=None)
    if not args.keep_attempts:
        fields["escalation_count"] = 0

    done = 0
    for r in reclaimable:
        # One transaction per row rather than one big one: this runs against a
        # LIVE factory, and holding a write transaction over 1,600 rows would
        # block every other writer for its duration. Individually they are
        # short enough to interleave.
        with db.tx(conn):
            db.set_state(conn, r["name"], "needs_attempt", **fields)
            db.log_event(conn, r["name"], "requeued_stale_seed",
                         f"body carried {args.pattern}; was {r['state']}, "
                         f"score {r['best_score']}")
        done += 1
        if done % 200 == 0:
            print(f"  ... {done}/{len(reclaimable)}")

    print(f"\nrequeued {done} row(s) to needs_attempt.")
    print("tier_m2c (--loop 10) will re-seed them from their fragments.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
