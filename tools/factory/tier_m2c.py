#!/usr/bin/env python3
"""Factory pipeline: the m2c tier -- deterministic seed generation, no LLM.

Claims `needs_attempt` and `stalled` rows (the same pool tier3 draws from)
and tries m2c FIRST, since it is strictly better on every measured axis: a
controlled 5-way comparison against every plausible LLM improvement (see
CLAUDE.md's "Generating C: use m2c, not an LLM" section and bench.py) found
m2c's raw output beats the best LLM configuration on compile rate, mean
score, AND match rate, at roughly 1/125th the wall-clock cost per function
and zero model calls. A 337-function live sweep of the real backlog found
68 immediate byte-exact matches and 96% translation coverage, in ~2 minutes
total -- against a single match in the entire prior 10-hour LLM run.

Outcomes:
  * m2c declines (returns None) or its output doesn't even compile ->
    leave the row exactly as found. Tier 3's LLM still gets a shot at it --
    a genuine fallback for the minority of functions this tier can't touch
    (BIOS SWI veneers, interworking stubs, anything m2c's control-flow
    recovery can't structure), not a guess this tier is confident about.
  * compiles, score > 0 -> tier2_ready, candidate_source="m2c". A real
    compilable seed for decomp-permuter to search from -- exactly what the
    `#error` placeholder never gave it.
  * score == 0 -> validating, candidate_source="m2c". A genuine
    byte-exact match, found with zero search. Still goes through the
    ordinary validator gate (from-scratch build, byte-identical ROM) like
    every other candidate source -- nothing here bypasses a check.

Usage:
    python3 tools/factory/tier_m2c.py           # drain the queue once
    python3 tools/factory/tier_m2c.py --loop 15
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
import tier3  # noqa: E402

WORKER_ID = "tier_m2c"


def _claim(conn, state: str):
    """Like db.claim_for_worker(), but excludes rows this tier already
    declined -- WITHOUT that exclusion, releasing a declined row back to
    its ORIGINAL state with worker_id cleared (so tier3 can still try it)
    makes it immediately re-claimable by this exact same query, forever,
    with the same deterministic result every time. Hit live: one function
    cycled thousands of times in under a second before this fix."""
    with db.tx(conn):
        row = conn.execute(
            "SELECT * FROM functions WHERE state = ? AND worker_id IS NULL "
            "AND (notes IS NULL OR notes NOT LIKE 'm2c:%') "
            "ORDER BY lines ASC LIMIT 1",
            (state,),
        ).fetchone()
        if row is None:
            return None
        conn.execute("UPDATE functions SET worker_id = ?, updated_at = ? WHERE name = ?",
                     (WORKER_ID, time.time(), row["name"]))
    return row


def process_one(conn) -> str | None:
    row = _claim(conn, "needs_attempt")
    if row is None:
        row = _claim(conn, "stalled")
    if row is None:
        return None
    name = row["name"]

    # Same reason tier3 checks this: a sibling still on the #error
    # placeholder fails the WHOLE translation unit, regardless of how
    # right this function's own C is.
    if tier3.blocking_siblings(name):
        with db.tx(conn):
            db.set_state(conn, name, row["state"], worker_id=None,
                         notes="m2c: blocked by an undrafted #error sibling in the same file")
        return name

    body = m2c_bridge.generate(name)
    if body is None:
        # Not this tier's function -- release it back exactly as found so
        # tier3 (LLM) still gets a shot. Not a claim that m2c "failed" in
        # any strong sense, just outside current coverage.
        with db.tx(conn):
            db.set_state(conn, name, row["state"], worker_id=None,
                         notes="m2c: declined (outside current translation coverage)")
        db.log_event(conn, name, "m2c_declined", "no output")
        return name

    with gitops.repo_lock(what=f"m2c measure {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            with db.tx(conn):
                db.set_state(conn, name, row["state"], worker_id=None,
                             notes="m2c: produced output but couldn't splice (no guard block)")
            return name
        try:
            score = gitops.asm_differ_score(name)
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])

    if score is None:
        with db.tx(conn):
            db.set_state(conn, name, row["state"], worker_id=None,
                         notes="m2c: produced output but it doesn't compile")
        db.log_event(conn, name, "m2c_declined", "output does not compile")
        return name

    new_state = "validating" if score == 0 else "tier2_ready"
    with db.tx(conn):
        db.set_state(conn, name, new_state, worker_id=None, candidate_body=body,
                     candidate_source="m2c",
                     notes=f"m2c seed, raw asm-differ score {score}")
    db.log_event(conn, name, "converged" if score == 0 else "seeded", f"m2c score={score}")
    if score == 0:
        print(f"      -> {name}: byte-exact from m2c, zero search needed")
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    while True:
        did_any = False
        while True:
            conn = db.connect()
            try:
                name = process_one(conn)
            except Exception as e:
                print(f"[{time.strftime('%H:%M:%S')}] !! tier_m2c process_one() failed, skipping: {e}")
                break
            finally:
                conn.close()
            if name is None:
                break
            did_any = True
            print(f"[{time.strftime('%H:%M:%S')}] m2c tried {name}")
        if args.loop is None:
            break
        if not did_any:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
