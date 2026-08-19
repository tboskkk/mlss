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
import gitops  # noqa: E402

WORKER_ID = "validator"


def validate_one(conn) -> str | None:
    """Claim and process exactly one validating row. Returns the function
    name processed, or None if the queue was empty."""
    row = db.claim_for_worker(conn, "validating", WORKER_ID, order_by="updated_at ASC")
    if row is None:
        return None

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

    if not gitops.asm_differ_matches(name):
        gitops.revert_to_clean()
        with db.tx(conn):
            # Not proof the candidate is worthless -- just not byte-perfect.
            # Send it back to the tier that produced it rather than the
            # dead-end needs_human queue, EXCEPT tier1 (idiom matches are
            # deterministic -- if it didn't match, retrying it won't help,
            # that's a real bug in the idiom rule and deserves a look).
            next_state = "needs_human" if source == "tier1" else "tier2_ready"
            db.set_state(conn, name, next_state, worker_id=None,
                         notes=f"candidate from {source} wasn't byte-identical")
        db.log_event(conn, name, "reverted", f"asm-differ mismatch, source={source}")
        return name

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
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    conn = db.connect()
    while True:
        did_any = False
        while True:
            name = validate_one(conn)
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
