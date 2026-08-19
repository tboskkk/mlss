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
            r = gitops.run(["./container.sh", "tools/split_func.py", name])
            if r.returncode != 0:
                with db.tx(conn):
                    db.set_state(conn, name, "needs_attempt", worker_id=None,
                                 notes=f"tier1 idiom matched ({label}) but extraction failed: {r.stderr[-300:]}")
                return name
            # Refresh expected/ right after extraction -- CLAUDE.md landmine:
            # a stale expected/ has the wrong object for a just-moved symbol,
            # and asm-differ silently diffs against nothing/wrong content.
            gitops.run(["./container.sh", "make"])
            import shutil
            shutil.rmtree(gitops.REPO / "expected", ignore_errors=True)
            shutil.copytree(gitops.REPO / "build", gitops.REPO / "expected" / "build")

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

    conn = db.connect()
    while True:
        did_any = False
        while True:
            name = process_one(conn)
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
