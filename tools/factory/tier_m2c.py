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
import gitops
import rescore_seeds  # noqa: E402
import m2c_bridge  # noqa: E402
import werror_casts  # noqa: E402
import tier3  # noqa: E402

WORKER_ID = "tier_m2c"


def _declined(reason: str) -> str:
    """A decline note stamped with the ruleset that produced it."""
    return f"m2c:{m2c_bridge.ruleset_version()}: {reason}"


def _claim(conn, state: str):
    """Like db.claim_for_worker(), but excludes rows THIS RULESET already
    declined -- WITHOUT that exclusion, releasing a declined row back to
    its ORIGINAL state with worker_id cleared (so tier3 can still try it)
    makes it immediately re-claimable by this exact same query, forever,
    with the same deterministic result every time. Hit live: one function
    cycled thousands of times in under a second before this fix.

    The exclusion used to be permanent (`notes NOT LIKE 'm2c:%'`), which
    was right while tier3's LLM was still a fallback for whatever m2c gave
    up on. tier3 is gone, so a permanent exclusion means nothing claims
    those rows EVER: 2,882 of them, roughly half the game, sitting
    unreachable -- not hard, invisible. Adding a rule to m2c_bridge could
    not recover them either, because they were excluded by note text rather
    than by anything about the rules.

    Stamping the ruleset version fixes both halves at once. Within a
    ruleset the exclusion is exactly as airtight as before, so the spin
    cannot come back; the moment m2c_bridge (or the pinned m2c revision)
    changes, every previously-declined function becomes claimable again on
    its own. That is the project's own thesis wired into the queue: a new
    deterministic rule automatically re-tries the whole corpus it might
    now handle.

    Oldest-queued-first (updated_at ASC), not smallest-first -- this tier
    itself isn't really bottlenecked (near-instant per function, so size
    bias rarely matters much in practice), but tier3.py's matching fix
    found a real starvation problem one hop downstream from here, and
    there's no reason to leave a smaller version of the same bias sitting
    here too."""
    with db.tx(conn):
        row = conn.execute(
            "SELECT * FROM functions WHERE state = ? AND worker_id IS NULL "
            "AND (notes IS NULL OR notes NOT LIKE ?) "
            "ORDER BY updated_at ASC LIMIT 1",
            (state, f"m2c:{m2c_bridge.ruleset_version()}:%"),
        ).fetchone()
        if row is None:
            return None
        conn.execute("UPDATE functions SET worker_id = ?, updated_at = ? WHERE name = ?",
                     (WORKER_ID, time.time(), row["name"]))
    return row


def process_one(conn, no_score: bool = False) -> str | None:
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
                         notes=_declined("blocked by an undrafted #error sibling in the same file"))
        return name

    # EXTRACT FIRST. m2c_bridge.generate() reads asm/nonmatching/<name>.s,
    # so a function that was never split out yields nothing -- and this
    # tier would mark it "declined" without m2c having seen a single byte.
    # That is exactly what happened when tier3 was dropped from the
    # pipeline: tier3 owned ensure_extracted(), nothing inherited it, and
    # the moment the unknown-callee gate opened, ~5,200 never-extracted
    # functions were burned through at ~6/second and falsely marked
    # declined -- starving tier2_ready to ZERO and stalling the permuter.
    if not tier3.ensure_extracted(name):
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes="extraction failed (split_func.py) -- cannot generate a seed")
        db.log_event(conn, name, "error", "tier_m2c: extraction failed")
        return name

    body = m2c_bridge.generate(name)
    if body is None:
        # Not this tier's function -- release it back exactly as found.
        # Not a claim that m2c "failed" in any strong sense, just outside
        # current coverage.
        with db.tx(conn):
            db.set_state(conn, name, row["state"], worker_id=None,
                         notes=_declined("declined (outside current translation coverage)"))
        db.log_event(conn, name, "m2c_declined", "no output")
        return name

    if no_score:
        # FAST DRAIN MODE. Scoring costs ~2.4s of the ~2.55s per function
        # AND runs under the repo lock, so it is the whole serialization
        # bottleneck: measured at load 1.45 on 6 cores, i.e. ~25% machine
        # utilisation, with extra workers unable to help because they would
        # just queue on the same lock.
        #
        # Skipping it loses nothing permanent. The score is only used here
        # to pick `validating` vs `tier2_ready`, and tier2 detects a
        # perfect seed on its own -- decomp-permuter prints
        # "base score = 0 / Found zero score!" and tier2.base_already_zero()
        # catches exactly that. So a byte-exact m2c seed still becomes a
        # match; it just gets discovered one hop later instead of here.
        with db.tx(conn):
            db.set_state(conn, name, "tier2_ready", worker_id=None,
                         candidate_body=body, candidate_source="m2c",
                         notes="m2c seed (fast drain -- not scored here; tier2 will "
                               "detect it if it is already byte-exact)")
        db.log_event(conn, name, "seeded", "m2c fast-drain seed, unscored")
        return name

    cast_note = ""
    with gitops.repo_lock(what=f"m2c measure {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            with db.tx(conn):
                db.set_state(conn, name, row["state"], worker_id=None,
                             notes=_declined("produced output but couldn't splice (no guard block)"))
            return name
        try:
            # Scored against a PLAIN build, not asm_differ_score()'s
            # NONMATCHING one. Two reasons, both measured.
            #
            # 1. Under NONMATCHING=1 every sibling whose `#else` is the empty
            #    "no C attempt yet" placeholder does not exist in the object,
            #    while expected/ holds all of them -- and asm-differ -o diffs
            #    OBJECTS. The score therefore tracks POSITION IN FILE, not
            #    code quality (CLAUDE.md N.4a: same code, 76x the score).
            #    Every jump-table seed decoded in commit 2a4fae50 landed here
            #    scored 25,800-78,000 with a perfectly good switch() body, so
            #    all of them sat behind SEED_SCORE_CEILING and were never
            #    claimed. That is why that work produced no matches.
            # 2. A plain build compiles each SIBLING as its retail `.include`,
            #    not as its unproven `#else` draft -- so a broken neighbour
            #    can no longer fail this measurement at all. That is the
            #    translation-unit poisoning of CLAUDE.md section I, removed
            #    from scoring by construction rather than worked around.
            score = rescore_seeds.plain_score(name, body)
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])

        # Doesn't compile? Before declining, check whether the ONLY thing
        # wrong is a pointer/integer warning that -Werror promoted to an
        # error. Measured across a 40-seed sample: 18% of this pile builds
        # as soon as warnings are allowed, and werror_casts recovers 7.5%
        # outright -- roughly 116 seeds over the full 1,547.
        #
        # Codegen-neutral by construction (a cast between a 32-bit int and a
        # pointer changes what the front end accepts, not what the back end
        # emits) and PROVEN per function: apply() requires the -Werror
        # object to be byte-identical to the warnings-allowed one, and
        # rejects the candidate otherwise. So this can add a match but
        # cannot invent one.
        if score is None:
            fixed, why = werror_casts.apply(name, body)
            if fixed is not None:
                body = fixed
                cast_note = " (casts inserted to satisfy -Werror; object verified identical)"
                c_path = gitops.splice_into_else(name, body)
                try:
                    score = rescore_seeds.plain_score(name, body)
                finally:
                    gitops.run(["git", "checkout", "--",
                                str(c_path.relative_to(gitops.REPO))])

    if score is None:
        # "Doesn't compile" here means the whole TRANSLATION UNIT failed,
        # and split_func.py appends every extraction to an existing src/*.c
        # -- so the file holds dozens of unproven `#else` drafts and any one
        # of them fails the object. Measured on a random 30 of this pile:
        # 16.7% compile perfectly well alone, i.e. ~377 seeds were filed as
        # broken because a NEIGHBOUR was.
        #
        # Such a seed is fully usable: decomp-permuter works on an isolated
        # copy too (ensure_isolated -> permute.py builds
        # nonmatchings/<name>/ with its own single-function .c), so the
        # search can match it however broken its real file is. Declining it
        # threw away work the permuter could have done.
        if gitops.compiles_in_isolation(name, body):
            with db.tx(conn):
                db.set_state(conn, name, "tier2_ready", worker_id=None,
                             candidate_body=body, candidate_source="m2c",
                             notes="m2c seed: compiles in ISOLATION but not in its "
                                   "shared translation unit (a sibling's draft is "
                                   "broken) -- the permuter works in isolation, so "
                                   "this is searchable")
            db.log_event(conn, name, "seeded", "compiles in isolation")
            print(f"      -> {name}: blocked by a sibling, not itself -- seeded anyway")
            return name
        with db.tx(conn):
            db.set_state(conn, name, row["state"], worker_id=None,
                         notes=_declined("produced output but it doesn't compile "
                                         "(checked in isolation too)"))
        db.log_event(conn, name, "m2c_declined", "output does not compile, even alone")
        return name

    new_state = "validating" if score == 0 else "tier2_ready"
    with db.tx(conn):
        db.set_state(conn, name, new_state, worker_id=None, candidate_body=body,
                     candidate_source="m2c",
                     notes=f"m2c seed, plain-build asm-differ score {score}{cast_note}")
    db.log_event(conn, name, "converged" if score == 0 else "seeded", f"m2c score={score}")
    if score == 0:
        print(f"      -> {name}: byte-exact from m2c, zero search needed")
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    ap.add_argument("--no-score", action="store_true",
                     help="fast drain: seed without scoring (tier2 still catches "
                          "byte-exact seeds via base_already_zero)")
    args = ap.parse_args()

    while True:
        did_any = False
        while True:
            conn = db.connect()
            try:
                name = process_one(conn, no_score=args.no_score)
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
