#!/usr/bin/env python3
"""Factory pipeline, process 5 of 5: Tier 3, the LLM Bridge.

Claims `needs_attempt` (no C attempt exists yet) and `stalled` (a real
attempt exists but tier 2's permuter search plateaued -- a real signal the
C's MEANING is wrong, not just its shape, per this session's own confirmed
finding with alloc_zero_8018DB4) rows. Packages exactly what's needed --
the retail assembly, the best attempt on record (if any), and a real
asm-differ diff against it (if any) -- into ONE prompt and sends ONE
non-agentic completion request straight to llama-server's own OpenAI-
compatible endpoint. Writes the response back as a new candidate and
returns the row to tier2_ready, per the architecture: a model's answer
still has to survive the same permuter search and the same Validator
check as anything else, it doesn't get to skip either one.

This deliberately does NOT use the old qwen-code/qwen_pilot.sh path (a
full agentic coding session with tool use, multi-turn conversation, and
its own harness overhead). A single completion call with everything it
needs already in the prompt is one inference pass -- no orchestration,
no permission prompts, no partial-progress checkpointing to get right,
and nothing left for a worktree to diverge over.

Usage:
    ./container.sh tools/factory/tier3.py [--max-escalations N] [--limit N]

Note: run this OUTSIDE the container (needs `requests`, needs to reach
llama-server on the host) -- unlike every other factory process, which run
fine either way since they only shell out to ./container.sh themselves.
"""
from __future__ import annotations

import argparse
import re
import sys
import time
from pathlib import Path

import requests

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

WORKER_ID = "tier3"
LLAMA_URL = "http://127.0.0.1:8080/v1/chat/completions"
MODEL = "qwen3-coder-30b-a3b"
MAX_ESCALATIONS_DEFAULT = 3

SYSTEM_PROMPT = """You are decompiling a Game Boy Advance game (Mario & Luigi: Superstar Saga) from ARM/Thumb assembly back to C, targeting `agbcc` (a vintage GCC 2.9-based compiler for the GBA). Your C must compile to instructions BYTE-IDENTICAL to the retail assembly shown -- not just functionally equivalent.

Rules:
- Output ONLY a single C function definition. No markdown code fences, no explanation, no comments about your reasoning.
- Use real GBA/agbcc types where obvious: u8/u16/u32/s8/s16/s32/bool32, not stdint types.
- Trace register moves in the prologue carefully to get the true parameter order -- retail code often shuffles registers into a different order than you'd assume from reading top to bottom.
- A `bx lr`-only body does not always mean the function is void/does nothing -- it can mean a parameter is returned unchanged. Consider what register holds the return value and whether it was ever written to.
- If a diff is shown (TARGET = retail, CURRENT = your predecessor's attempt), the differences tell you exactly what's wrong -- study them, don't just resubmit similar code."""


def extract_c_body(block_text: str) -> str:
    """Pull just the function definition out of a guard block's #else..#endif."""
    m = re.search(r"#else\n(.*?)\n#endif", block_text, re.DOTALL)
    return m.group(1) if m else ""


def read_retail_asm(name: str) -> str:
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        return frag.read_text()
    return ""


def ensure_extracted(name: str) -> bool:
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        return True
    r = gitops.run(["./container.sh", "tools/split_func.py", name])
    if r.returncode != 0:
        return False
    gitops.run(["./container.sh", "make"])
    import shutil
    shutil.rmtree(gitops.REPO / "expected", ignore_errors=True)
    shutil.copytree(gitops.REPO / "build", gitops.REPO / "expected" / "build")
    return True


def build_prompt(name: str, row) -> str:
    asm = read_retail_asm(name)
    parts = [f"Function name: {name}", "", "Retail assembly (must match exactly):", "```", asm.strip(), "```"]

    c_path, block = gitops.find_guard_block(name)
    if block:
        prior_c = extract_c_body(block)
        if prior_c.strip() and "#error" not in prior_c:
            parts += ["", "Best C attempt so far (not yet matching):", "```c", prior_c.strip(), "```"]
            diff_out = gitops.run(["./container.sh", "asm-differ", "-mwo", name]).stdout
            if diff_out.strip():
                parts += ["", "Diff against retail (TARGET = retail, CURRENT = the attempt above):",
                           "```", diff_out.strip()[:3000], "```"]

    if row["notes"]:
        parts += ["", f"Context from earlier analysis: {row['notes']}"]

    parts += ["", "Write the corrected C function now."]
    return "\n".join(parts)


def clean_response(text: str) -> str:
    """Strip markdown fences if the model added them despite instructions --
    defensive, since a model following instructions imperfectly shouldn't
    corrupt the pipeline, just get its candidate rejected downstream by the
    same asm-differ check everything else goes through."""
    text = text.strip()
    text = re.sub(r"^```[a-zA-Z]*\n", "", text)
    text = re.sub(r"\n```$", "", text)
    return text.strip()


def call_llm(prompt: str) -> str | None:
    try:
        r = requests.post(LLAMA_URL, json={
            "model": MODEL,
            "messages": [
                {"role": "system", "content": SYSTEM_PROMPT},
                {"role": "user", "content": prompt},
            ],
            "max_tokens": 1024,
        }, timeout=300)
        r.raise_for_status()
        return r.json()["choices"][0]["message"]["content"]
    except Exception as e:
        print(f"  !! LLM call failed: {e}")
        return None


def process_one(conn, max_escalations: int) -> str | None:
    row = db.claim_for_worker(conn, "needs_attempt", WORKER_ID)
    if row is None:
        row = db.claim_for_worker(conn, "stalled", WORKER_ID)
    if row is None:
        return None

    name = row["name"]

    if row["escalation_count"] >= max_escalations:
        # Already used every LLM attempt this function gets in a prior
        # tier2<->tier3 cycle -- without this check, a function that keeps
        # stalling would bounce between tier2 and tier3 forever, each lap
        # spending a real LLM call for no new outcome. Give up cleanly here
        # instead.
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes=f"tier3: {row['escalation_count']} escalations exhausted, no convergence")
        db.log_event(conn, name, "t3_exhausted", str(row["escalation_count"]))
        return name

    if not ensure_extracted(name):
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes="tier3: extraction failed")
        return name

    prompt = build_prompt(name, row)
    t0 = time.time()
    response = call_llm(prompt)
    elapsed = time.time() - t0

    if response is None:
        with db.tx(conn):
            db.set_state(conn, name, "needs_human", worker_id=None,
                         notes="tier3: LLM call failed")
        db.log_event(conn, name, "t3_error", "LLM call failed")
        return name

    candidate = clean_response(response)
    new_escalation_count = row["escalation_count"] + 1
    db.log_event(conn, name, "t3_response", f"{elapsed:.1f}s, {len(candidate)} chars, "
                                              f"escalation {new_escalation_count}")

    with db.tx(conn):
        db.set_state(conn, name, "tier2_ready", worker_id=None,
                     candidate_body=candidate, candidate_source="tier3",
                     escalation_count=new_escalation_count,
                     notes=f"tier3 attempt {new_escalation_count}/{max_escalations} ({elapsed:.0f}s)")
    print(f"  {name}: got a response in {elapsed:.1f}s ({len(candidate)} chars), -> tier2_ready")
    return name


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-escalations", type=int, default=MAX_ESCALATIONS_DEFAULT)
    ap.add_argument("--limit", type=int, default=None, help="stop after this many functions")
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    processed = 0
    while True:
        did_any = False
        while args.limit is None or processed < args.limit:
            try:
                # Fresh connection every iteration -- see tier1.py's main()
                # for why: a long-lived connection can wedge silently after
                # an early lock-contention error and never recover.
                conn = db.connect()
                name = process_one(conn, args.max_escalations)
            except Exception as e:
                # See scanner.py's main() for why this matters.
                print(f"[{time.strftime('%H:%M:%S')}] !! tier3 process_one() failed, skipping: {e}")
                break
            if name is None:
                break
            did_any = True
            processed += 1
        if args.loop is None:
            break
        if not did_any:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
