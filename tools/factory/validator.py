#!/usr/bin/env python3
"""Factory pipeline, process 2 of 5: the Validator / Committer.

The ONE process allowed to touch git. Deliberately serialized (a plain
loop, not a worker pool) -- two processes racing to commit is exactly the
class of bug that hit this session twice in one afternoon (a worktree
diverging from master because two things extracted the same function
independently). Making the committer single-threaded by construction turns
that from "something to be careful about" into "structurally can't
happen."

Claims `validating` rows (written by tier 1's idiom matcher or tier 2's
permuter pool -- see their candidate_body/candidate_source columns),
splices the candidate in, and runs the one check every match in this
project has always required: rm -rf build/ && make, confirm
`mlss.gba: OK`. A permuter's own "score 0" or a pattern-matcher's
confidence is a CLAIM, not proof -- this is where it actually gets
checked, every time, no exceptions.

Usage:
    ./container.sh tools/factory/validator.py           # drain the queue once
    ./container.sh tools/factory/validator.py --loop 15  # poll every 15s
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
import twins  # noqa: E402

WORKER_ID = "validator"


def _matches_in_plain_build(name: str, body: str) -> bool:
    """Byte-identity pre-check, measured against a PLAIN build.

    gitops.asm_differ_matches() rebuilds with NONMATCHING=1 (diff_settings.py's
    make_command). In that build every sibling whose `#else` is the empty "no C
    attempt yet" placeholder DOES NOT EXIST, while expected/ holds all of them
    -- and asm-differ -o diffs OBJECTS. So the score is dominated by functions
    that merely FOLLOW this one in its file, and a finished, byte-identical
    candidate scores in the thousands purely because of where it sits.

    Measured on this exact path: `sub_80291C8` scores 0 in a plain build and
    13,467 through the NONMATCHING one. It was rejected here and sent back to
    tier2 to be searched again from nothing -- 179 times.

    A false negative here is NOT harmless, whatever the old docstring said: the
    winning body is discarded and the function is re-searched forever. A false
    positive costs one from-scratch build, because finish_match() -- a full
    rebuild plus the ROM sha1 -- is still the real gate and is untouched.
    That asymmetry is why an unreadable verdict falls back to the legacy check
    rather than rejecting: strictly more permissive than before, never less.
    """
    # assume_spliced: the caller has already removed the guard, so plain_score
    # must not try to find one -- see CLAUDE.md N.4a.
    score = rescore_seeds.plain_score(name, body, assume_spliced=True)
    if score is not None:
        return score == 0
    return gitops.asm_differ_matches(name)


def validate_one(conn) -> str | None:
    """Claim and process exactly one validating row. Returns the function
    name processed, or None if the queue was empty."""
    row = db.claim_for_worker(conn, "validating", WORKER_ID, order_by="updated_at ASC")
    if row is None:
        return None

    # The ENTIRE validate sequence (splice -> asm-differ -> from-scratch
    # build -> commit, or revert on any failure) has to hold the repo lock
    # as one unit. Both halves need it for different reasons: the build
    # fails outright if another process's extraction lands mid-build, and
    # the revert-on-failure path is repo-wide, so without the lock it
    # destroys other processes' uncommitted extractions. See
    # gitops.repo_lock()'s docstring -- both were observed live.
    try:
        with gitops.repo_lock(what=f"validate {row['name']}"):
            return _validate_claimed(conn, row)
    except Exception as e:
        # A crash mid-processing here is worse than in any other tier: this
        # is the ONE process that touches git, so a half-done failure can
        # leave the repo itself dirty (a candidate spliced in but never
        # committed or reverted), not just a stuck DB claim. Both get
        # cleaned up explicitly rather than trusting the generic per-loop
        # catch in main() to be enough.
        name = row["name"]
        print(f"  !! {name}: validate_one crashed mid-processing, reverting repo and releasing claim: {e}")
        try:
            with gitops.repo_lock(timeout=600, what=f"revert after crash on {name}"):
                gitops.revert_to_clean()
        except Exception as e2:
            print(f"  !! {name}: could not acquire repo lock to revert: {e2}")
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes=f"validator crashed mid-processing: {e}")
        db.log_event(conn, name, "error", f"validator crash: {e}")
        return name


def propagate_to_twins(conn, name: str, src_asm: str, src_c: str) -> int:
    """A confirmed match is a solved TEMPLATE, not just one function.

    86 unmatched functions fall into 31 groups whose assembly is identical
    except for immediates and symbol names (largest group: 8 members), so
    the factory was running up to 8 separate permuter searches on what is
    really one problem. Now that one member is proven byte-exact, its
    twins can be generated mechanically by substituting the differing
    constants.

    These are still only CANDIDATES -- they go back through tier2 and the
    same from-scratch validator gate as everything else. The substitution
    refuses outright unless every mapping is consistent in both
    directions, so a wrong guess is rare, and when it happens it costs one
    build and nothing more. Pure DB work, so no repo lock is needed.
    """
    try:
        states = {r["name"]: r["state"] for r in
                  conn.execute("SELECT name, state FROM functions")}
        siblings = twins.twins_of(name, states)
    except Exception as e:
        print(f"  twin lookup failed for {name}: {e}")
        return 0

    seeded = 0
    for sib in siblings:
        st = states.get(sib)
        if st in ("matched", "validating", "permuting"):
            continue
        frag = gitops.REPO / "asm" / "nonmatching" / f"{sib}.s"
        if not frag.exists():
            continue
        cand = twins.propagate(src_asm, src_c, frag.read_text())
        if not cand:
            continue
        with db.tx(conn):
            db.set_state(conn, sib, "tier2_ready", worker_id=None,
                         candidate_body=cand, candidate_source="twin",
                         tractability=-500,  # a template win: try it before novel work
                         notes=f"propagated from twin {name} (identical shape, "
                               f"constants substituted)")
        db.log_event(conn, sib, "twin_seeded", f"from {name}")
        seeded += 1
    if seeded:
        conn.commit()
        print(f"  propagated {name}'s solution to {seeded} structural twin(s)")
    return seeded


def _validate_claimed(conn, row) -> str:
    name = row["name"]
    source = row["candidate_source"] or "unknown"
    body = row["candidate_body"]

    if not body:
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes=f"reached validating with no candidate_body (source={source})")
        db.log_event(conn, name, "error", "validating with empty candidate_body")
        return name

    c_path = gitops.splice_candidate(name, body)
    if c_path is None:
        gitops.revert_to_clean()
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes=f"couldn't splice candidate from {source} -- guard block not found/matched")
        db.log_event(conn, name, "error", "splice_candidate failed")
        return name

    if not _matches_in_plain_build(name, body):
        gitops.revert_to_clean()
        # LOOP GUARD. Sending a rejected candidate back to tier2 is right
        # when tier2 might do something new with it -- but if tier2's
        # pre-check and this validator DISAGREE about the same unchanged
        # candidate, it ping-pongs forever, burning a full rebuild every
        # lap. That happened for real (a stale-object bug made the
        # pre-check say "match" on bytes the validator then correctly
        # rejected; one function cycled 10+ times in nine minutes and the
        # run produced 40 converges with 0 matches). The underlying bug is
        # fixed, but a disagreement must never be able to spin unbounded
        # again -- so count rejections and give up after a couple.
        prior = conn.execute(
            "SELECT COUNT(*) c FROM events WHERE function_name = ? AND kind = 'rejected'",
            (name,),
        ).fetchone()["c"]
        db.log_event(conn, name, "rejected", f"source={source}")
        conn.commit()
        with db.tx(conn):
            # Not proof the candidate is worthless -- just not byte-perfect.
            # Send it back to the tier that produced it rather than the
            # dead-end needs_human queue, EXCEPT tier1 (idiom matches are
            # deterministic -- if it didn't match, retrying it won't help,
            # that's a real bug in the idiom rule and deserves a look).
            if source == "tier1" or prior >= 2:
                db.set_state(conn, name, "needs_human", worker_id=None,
                             notes=f"candidate from {source} wasn't byte-identical "
                                    f"({prior + 1} rejections -- not retrying)")
            else:
                db.set_state(conn, name, "tier2_ready", worker_id=None,
                             notes=f"candidate from {source} wasn't byte-identical")
        db.log_event(conn, name, "reverted", f"asm-differ mismatch, source={source}")
        return name

    # Capture the retail assembly BEFORE finish_match deletes the fragment.
    # Propagation to structural twins needs it, and once the match lands
    # the file is gone for good.
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    src_asm = frag.read_text() if frag.exists() else None

    ok, detail = gitops.finish_match(name)
    if not ok:
        gitops.revert_to_clean()
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes=f"asm-differ said match but from-scratch build FAILED "
                                f"(source={source}) -- real anomaly, needs a look: {detail[:300]}")
        db.log_event(conn, name, "error", f"from-scratch build failed after apparent match: {detail}")
        return name

    committed = gitops.commit(
        name,
        f"Match {name}\n\nFactory pipeline (tools/factory), source={source}. "
        f"Verified with a from-scratch build before commit, per the project's standing rule.",
    )
    with db.tx(conn):
        db.set_state(conn, name, "matched", worker_id=None, candidate_body=None,
                     notes=f"matched via {source}")
    db.log_event(conn, name, "matched", f"source={source}, committed={committed}")
    if src_asm:
        propagate_to_twins(conn, name, src_asm, body)
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    while True:
        did_any = False
        while True:
            # Fresh connection every iteration, closed at the end -- see
            # tier1.py's main() and its immediately-following commit.
            # Matters especially here: this is the one process that
            # touches git, so a wedged/silent validator means real matches
            # sit unverified indefinitely with no visible sign anything's
            # wrong.
            conn = db.connect()
            try:
                name = validate_one(conn)
            except Exception as e:
                # See scanner.py's main() for why this matters.
                print(f"[{time.strftime('%H:%M:%S')}] !! validator validate_one() failed, skipping: {e}")
                break
            finally:
                conn.close()
            if name is None:
                break
            did_any = True
            print(f"[{time.strftime('%H:%M:%S')}] validated {name}")
        if args.loop is None:
            break
        if not did_any:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
