#!/usr/bin/env python3
"""Factory pipeline, process 3 of 5: Tier 1, the Mechanical Lifter.

Claims `queued` rows and checks them against a small library of idioms
where the instruction sequence has exactly one honest C interpretation --
no parameter order to derive, no struct to guess. A match writes
candidate_body and moves the row to `validating`; the Validator (process 2)
does the actual proving. No match moves the row to `needs_attempt` so
Tier 3 can write a first real draft.

Deliberately conservative, same scope as the auto_trivial.py script this
replaces: only `nullsub_`-prefixed bx-lr-only bodies. That prefix is a real
signal, not an arbitrary restriction -- it's the original disassembly
pass's own "this is a no-op" naming convention. A bx-lr-only body under any
OTHER name is genuinely ambiguous: `alarm()`'s real signature turns out to
be `unsigned int alarm(unsigned int seconds) { return seconds; }`, not
void-of-nothing -- same instruction, different honest C, because the
untouched register holds a real passed-through parameter. That's a
semantic judgment call outside what blind pattern-matching should be
trusted to make; it belongs at tier 3 (a real answer supplied by a model
or Claude), not tier 1.

Usage:
    ./container.sh tools/factory/tier1.py           # drain the queue once
    ./container.sh tools/factory/tier1.py --loop 60
"""
from __future__ import annotations

import argparse
import re
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent))
import triage  # noqa: E402
import splitlib  # noqa: E402

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

WORKER_ID = "tier1"

CODE_RE = re.compile(r"^\s*[a-z]")
LABEL_RE = re.compile(r"^\S+:")
PAD_RE = re.compile(r"^\s*\.(byte|hword|short|align|space)\b")


def real_code_lines(body):
    out = []
    for l in body:
        if LABEL_RE.match(l) or "func_start" in l or PAD_RE.match(l):
            continue
        if CODE_RE.match(l):
            out.append(l.strip())
    return out


def get_body(name: str, file: str):
    path = triage.ASM_DIR / file
    if not path.exists():
        path = triage.ASM_DIR / "nonmatching" / file
    lines, starts = splitlib.function_starts(path)
    for n, start in starts:
        if n == name:
            idx = starts.index((n, start))
            end = starts[idx + 1][1] if idx + 1 < len(starts) else len(lines)
            return lines[start:end]
    return []


# --- idiom library -----------------------------------------------------
# Each entry: (label, match(name, code) -> bool, generate(name) -> body)

def _is_nullsub_bxlr(name, code):
    return name.startswith("nullsub_") and code == ["bx lr"]


IDIOMS = [
    ("nullsub-bx-lr", _is_nullsub_bxlr, lambda name: f"void {name}(void) {{\n}}\n"),
]


def try_lift(name: str, file: str):
    body = get_body(name, file)
    code = real_code_lines(body)
    for label, match, generate in IDIOMS:
        if match(name, code):
            return label, generate(name)
    return None, None


def process_one(conn) -> str | None:
    row = db.claim_for_worker(conn, "queued", WORKER_ID)
    if row is None:
        return None
    name, file = row["name"], row["file"]

    label, candidate = try_lift(name, file)
    if candidate is not None:
        # Extraction is the Validator's/pipeline's mechanical prerequisite,
        # not a Tier 1 concern -- but the guard block has to exist before a
        # candidate body can be spliced in. Extract here if it isn't
        # already (the common case: still raw).
        frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
        if not frag.exists():
            # Extraction mutates shared repo state (asm blobs, splits.yaml,
            # ld_script.ld) and runs a build -- must be serialized against
            # the validator and the other tiers. See gitops.repo_lock().
            with gitops.repo_lock(what=f"tier1 extract {name}"):
                r = gitops.run(["./container.sh", "tools/split_func.py", name])
                if r.returncode != 0:
                    with db.tx(conn):
                        db.set_state(conn, name, "needs_attempt", worker_id=None,
                                     notes=f"tier1 idiom matched ({label}) but extraction failed: {r.stderr[-300:]}")
                    return name
                # Refresh expected/ right after extraction -- CLAUDE.md landmine:
                # a stale expected/ has the wrong object for a just-moved symbol,
                # and asm-differ silently diffs against nothing/wrong content.
                # CHECK the build before freezing it as the baseline.
                # This used to discard make's exit code and refresh
                # expected/ unconditionally -- the same bug CLAUDE.md
                # records as fixed in tier3.ensure_extracted(), which tier1
                # never got. A bad extraction would then be frozen as
                # "known good" for every subsequent asm-differ -o
                # comparison, so one broken split would silently corrupt
                # every verdict after it. layout_ok() is checked too,
                # because an extraction can build fine and still shift the
                # ROM (the alignment-padding landmine).
                build = gitops.run(["./container.sh", "make"])
                if "mlss.gba: OK" not in build.stdout or not gitops.layout_ok():
                    gitops.revert_to_clean()
                    with db.tx(conn):
                        db.set_state(conn, name, "needs_attempt", worker_id=None,
                                     notes="tier1: extraction built badly or shifted "
                                           "the ROM layout -- reverted rather than "
                                           "freezing it into expected/")
                    db.log_event(conn, name, "error", "tier1 extraction failed the build/layout check")
                    return name
                gitops.refresh_expected()
                # Commit the extraction itself, separately from any eventual
                # match, and while STILL HOLDING the lock so it's atomic
                # with the extraction. Root-caused live: revert_to_clean()
                # (correctly) wipes every uncommitted file under
                # FACTORY_PATHS when some OTHER, unrelated function's
                # candidate gets rejected -- and an extraction left
                # uncommitted for the (possibly long) time between "split
                # out" and "confirmed matching" is exactly the kind of file
                # that describes. 144 functions lost their extraction this
                # way in one session before this fix (see
                # reclaim_extraction.py, which recovers the symptom; this
                # closes the actual hole). Once committed, `git checkout`/
                # `git clean` in a later, unrelated revert have nothing
                # left to touch here.
                gitops.commit(name, f"Extract {name}\n\nFactory pipeline (tools/factory) -- "
                                     f"mechanical extraction via split_func.py, not yet matched.")

        with db.tx(conn):
            db.set_state(conn, name, "validating", worker_id=None,
                         candidate_body=candidate, candidate_source="tier1",
                         notes=f"idiom: {label}")
        db.log_event(conn, name, "t1_attempt", f"idiom={label}")
    else:
        with db.tx(conn):
            db.set_state(conn, name, "needs_attempt", worker_id=None,
                         notes="no tier1 idiom matched")
        db.log_event(conn, name, "t1_no_match", "")
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    while True:
        did_any = False
        while True:
            # A fresh connection every iteration, not one reused for the
            # whole process lifetime -- found live, running the full
            # pipeline together for the first time: a single "database is
            # locked" error early on (5 processes hitting the DB at once on
            # startup) can leave a long-lived connection wedged in a way
            # that silently hangs on every later call instead of raising
            # again. MUST be closed at the end of every iteration, not just
            # reassigned -- found THIS the hard way immediately after
            # deploying the fix above: reassigning conn without closing the
            # old one leaked a new connection every ~20-30s, and a process
            # with a dozen simultaneous open connections to the same
            # SQLite file turned out to be exactly the kind of self-
            # contention this was supposed to fix, not a improvement over
            # it.
            conn = db.connect()
            try:
                name = process_one(conn)
            except Exception as e:
                # See scanner.py's main() for why this matters: a transient
                # error (DB lock contention from the other four processes,
                # a mid-extraction race) shouldn't crash a process meant to
                # run unattended for hours.
                print(f"[{time.strftime('%H:%M:%S')}] !! tier1 process_one() failed, skipping: {e}")
                break
            finally:
                conn.close()
            if name is None:
                break
            did_any = True
            print(f"[{time.strftime('%H:%M:%S')}] tier1 processed {name}")
        if args.loop is None:
            break
        if not did_any:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
