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
import asmfacts  # noqa: E402

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
- If a diff is shown (TARGET = retail, CURRENT = your predecessor's attempt), the differences tell you exactly what's wrong -- study them, don't just resubmit similar code.
- Do NOT invent struct type names. If you don't know a struct, use explicit pointer casts on u8*/u16*/u32* with the exact byte offsets from the assembly. Inventing `struct Foo` guarantees a compile failure.
- Check branch polarity carefully. `cmp r0,#0` + `beq LABEL` SKIPS the code between the branch and LABEL when the value is zero -- so that code runs when the value is NON-zero. Getting this inverted is a common and costly error.

CRITICAL THUMB IDIOMS -- the most frequent sources of error:

1. RETURN TYPE.
   - `pop {rN}` immediately followed by `bx rN` (SAME register) means the
     function pushed LR and is returning through it. That register holds a
     RETURN ADDRESS, not a value. The function is `void`.
   - `bx lr` where r0 was only ever scratch is also `void`.

2. LITERAL POOLS NAME SYMBOLS. A trailing `_08068164: .4byte sub_808750C`
   means the loaded constant IS that symbol -- write the NAME, never the
   raw address. A set low bit (...0D vs ...0C) is just the Thumb flag; it is
   still that function. These are usually function pointers stored into a
   struct field.

3. POINTER INDIRECTION -- count the loads.
       ldr  r0, [r2, #0x08]   ; r0 = a POINTER stored at offset 8
       ldrb r1, [r0, #0x12]   ; byte at offset 0x12 OF THAT POINTER
   That is TWO dereferences. Collapsing them into `*(u8*)(p + 8 + 0x12)`
   is wrong.

4. ACCESS WIDTH must match exactly: `ldr`/`str` 32-bit, `ldrh`/`strh`
   16-bit, `ldrb`/`strb` 8-bit. `ldrsh`/`ldrsb` sign-extend (s16/s8);
   `ldrh`/`ldrb` zero-extend.

5. SHIFTED CONSTANTS. `movs r2,#0x81` + `lsls r2,r2,#0x02` builds
   0x81 << 2 = 0x204, a BYTE offset.

6. Pointer arithmetic scales by pointee size: on a `u32*`, `p + 1` is 4
   bytes. Choose the pointer type so indices match the assembly's offsets."""


ERROR_SIBLING_RE_FACTS = re.compile(r"pop\s*\{r(\d)\}\s*\n\s*bx\s+r\1")
POOL_SYMBOL_RE = re.compile(r"\.4byte\s+(sub_\w+|[a-zA-Z_]\w*)")


def derive_facts(asm: str) -> list[str]:
    """Compute what is MECHANICALLY determinable from the assembly, so the
    model is told it as fact rather than asked to infer it.

    Measured directly: phrasing the void-return rule as guidance did not
    work -- the model kept writing `return x;` anyway. Stating "RETURN TYPE
    IS void" as a given fixed it immediately, along with the literal-pool
    symbol rule. This is the reusable technique for this whole pipeline:
    precompute whatever can be derived, and only ask the LLM for what
    genuinely needs judgement. The void idiom alone appears in ~50% of
    queued functions, and pool symbols in ~20%.
    """
    facts = []
    if ERROR_SIBLING_RE_FACTS.search(asm):
        facts.append(
            "RETURN TYPE IS `void`. The epilogue is `pop {rN}` + `bx rN`, which "
            "returns through the saved link register -- that register is NOT a "
            "return value. The signature MUST start with `void` and the body MUST "
            "NOT contain any `return <expr>;`.")
    facts += asmfacts.describe(asm)
    for sym in dict.fromkeys(POOL_SYMBOL_RE.findall(asm)):
        facts.append(
            f"The literal pool constant is the symbol `{sym}` (usually a function "
            f"pointer). Use the name `{sym}` verbatim, never its numeric address. "
            f"`{sym}` is NOT declared in this translation unit, so you MUST emit "
            f"`extern void {sym}();` on its own line ABOVE your function "
            f"definition -- without it the file does not compile at all, and the "
            f"candidate is discarded before it can even be compared.")
    return facts


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
    # Extraction mutates shared repo state and runs a build -- serialize it
    # against the validator and the other tiers. See gitops.repo_lock().
    with gitops.repo_lock(what=f"tier3 extract {name}"):
        r = gitops.run(["./container.sh", "tools/split_func.py", name])
        if r.returncode != 0:
            return False
        build = gitops.run(["./container.sh", "make"])
        # The build result was previously thrown away here. That is exactly
        # how a ROM-shifting extraction got COMMITTED: split_func.py
        # succeeded, `make` failed, nobody looked, and from then on every
        # match in the pipeline failed to validate against a ROM that no
        # longer reproduced -- surfacing as a needs_human/stalled spike
        # rather than as the one bad extraction it was. Check both the
        # build and the layout, and undo the extraction if either is
        # unhappy, so a bad extraction costs one function instead of the
        # whole run.
        ok, detail = gitops.layout_ok()
        if build.returncode != 0 or not ok:
            why = "build failed" if build.returncode != 0 else "ROM layout shifted"
            print(f"      !! {name}: extraction reverted -- {why}\n{detail}")
            gitops.revert_to_clean()
            return False
        gitops.refresh_expected()
        # Commit immediately, still under the lock -- see tier1.py's
        # matching comment. An uncommitted extraction is vulnerable to
        # being wiped by revert_to_clean() when a completely unrelated
        # function's candidate gets rejected later; committing here closes
        # that window to zero instead of leaving it open until a match.
        gitops.commit(name, f"Extract {name}\n\nFactory pipeline (tools/factory) -- "
                             f"mechanical extraction via split_func.py, not yet matched.")
    return True


def build_prompt(name: str, row) -> str:
    asm = read_retail_asm(name)
    parts = [f"Function name: {name}", "", "Retail assembly (must match exactly):", "```", asm.strip(), "```"]

    facts = derive_facts(asm)
    if facts:
        parts += ["", "ESTABLISHED FACTS about this function -- derived mechanically "
                      "from the assembly above. These are NOT optional and NOT "
                      "suggestions; contradicting them guarantees a wrong answer:"]
        parts += [f"  * {f}" for f in facts]

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


ERROR_SIBLING_RE = re.compile(r'#error "TODO: write (\w+)')


def blocking_siblings(name: str) -> list[str]:
    """Other functions in the SAME src/*.c that are still #error placeholders.

    split_func.py appends a newly extracted function to the preceding
    src/*.c when one already claims that slot, so several functions share a
    translation unit. agbcc has to compile the WHOLE unit -- so a single
    un-drafted `#error` sibling makes asm-differ and decomp-permuter fail
    for EVERY function in that file, no matter how correct their own C is
    (the same root cause CLAUDE.md already records for title_screen.c).
    Found live: 24 files were in this state at once, silently failing
    everything inside them.
    """
    c_path, _block = gitops.find_guard_block(name)
    if c_path is None:
        return []
    return [n for n in ERROR_SIBLING_RE.findall(c_path.read_text()) if n != name]


def process_one(conn, max_escalations: int) -> str | None:
    # Oldest-queued-first, not tractability-first -- see tier2.py's
    # matching fix and commit message for the full story. Same disease
    # here: confirmed live, 109 of 110 needs_attempt rows and 582 of 658
    # stalled rows sitting untouched for 4+ hours, because tier3 is now a
    # genuinely slow, single-slot fallback (m2c handles the easy ~90%
    # instantly) and tractability-first lets every new arrival tier_m2c
    # declines cut in line ahead of older ones still waiting.
    row = db.claim_for_worker(conn, "needs_attempt", WORKER_ID, order_by="updated_at ASC")
    if row is None:
        row = db.claim_for_worker(conn, "stalled", WORKER_ID, order_by="updated_at ASC")
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

    # A candidate can't be verified while a SIBLING in the same translation
    # unit is still an #error placeholder -- agbcc compiles the whole file.
    # Pull those to the front of the queue so this file becomes testable;
    # they need drafting anyway, so this is ordering, not extra work.
    for sib in blocking_siblings(name):
        sib_row = conn.execute("SELECT state FROM functions WHERE name = ?", (sib,)).fetchone()
        if sib_row and sib_row["state"] in ("raw", "queued", "needs_attempt"):
            with db.tx(conn):
                db.set_state(conn, sib, "needs_attempt", worker_id=None,
                             tractability=-1000,  # jump the queue: unblocks a whole file
                             notes=f"prioritized: its #error blocks {name}'s translation unit")
            print(f"    ^ prioritized sibling {sib} (blocks this file from compiling)")

    return name


def backlog_depth() -> int:
    """How many drafted-but-unverified candidates are already waiting."""
    conn = db.connect()
    try:
        return conn.execute(
            "SELECT COUNT(*) c FROM functions WHERE state = 'tier2_ready'"
        ).fetchone()["c"]
    finally:
        conn.close()


def has_stalled_work() -> bool:
    """Functions tier2 tried and gave up on, still under the escalation cap.
    Re-drafting these is the pipeline's only forward path for them."""
    conn = db.connect()
    try:
        return conn.execute(
            "SELECT COUNT(*) c FROM functions WHERE state = 'stalled' "
            "AND escalation_count < ?", (MAX_ESCALATIONS_DEFAULT,)
        ).fetchone()["c"] > 0
    finally:
        conn.close()


def has_unblocking_work() -> bool:
    """Is there a queued draft that would unblock a whole translation unit?

    These must NEVER be throttled. Without this exemption the pipeline
    deadlocks outright: the backlog throttle stops tier3 drafting -> the
    #error siblings blocking whole files never get drafted -> every
    candidate in those files keeps failing verification -> the backlog
    never drains -> tier3 stays throttled forever. Caught by reasoning
    through the interaction before launching, not by burning an hour on it.
    """
    conn = db.connect()
    try:
        return conn.execute(
            "SELECT COUNT(*) c FROM functions WHERE state = 'needs_attempt' "
            "AND tractability <= -1000"
        ).fetchone()["c"] > 0
    finally:
        conn.close()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-escalations", type=int, default=MAX_ESCALATIONS_DEFAULT)
    ap.add_argument("--limit", type=int, default=None, help="stop after this many functions")
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    ap.add_argument("--max-backlog", type=int, default=40,
                     help="pause drafting while this many candidates are already "
                          "queued unverified (default 40; 0 disables the throttle)")
    args = ap.parse_args()

    processed = 0
    while True:
        # THE BIGGEST ELECTRICITY SAVING IN THE PIPELINE. llama-server runs
        # ~500%% CPU sustained while generating, and it drafts far faster
        # than tier2 can verify: measured live at ~290 drafts/hr against a
        # tier2 ceiling of ~24/hr, with the tier2_ready queue growing
        # 188 -> 279 in nine minutes. Everything past the queue depth is
        # inference burned to produce work nobody can consume for hours --
        # and a draft that sits unverified that long is often stale anyway
        # (its dependencies may have been matched meanwhile, which would
        # change what the right answer looks like). Idling here instead
        # costs nothing and gives the cores back to tier2's searches.
        # Retries of functions tier2 already REJECTED are not speculative
        # work -- they're the pipeline's only path forward for those, and
        # blocking them strands every stalled function permanently. The
        # throttle exists to stop drafting NEW candidates nobody can
        # consume, so it must not apply when there is stalled work waiting.
        # (Bounded by --max-escalations, so this cannot spin.)
        if args.max_backlog > 0 and not has_unblocking_work() and not has_stalled_work():
            depth = backlog_depth()
            if depth >= args.max_backlog:
                print(f"[{time.strftime('%H:%M:%S')}] backlog {depth} >= {args.max_backlog}, "
                      f"pausing drafting (saves LLM inference until tier2 catches up)")
                time.sleep(args.loop or 60)
                continue

        did_any = False
        while args.limit is None or processed < args.limit:
            # Fresh connection every iteration, closed at the end -- see
            # tier1.py's main() and its immediately-following commit: a
            # long-lived connection can wedge after early lock contention,
            # and reassigning without closing just leaks one connection
            # per cycle instead. Worth noting here specifically: the
            # connection stays open for the whole LLM call (60-90+ seconds
            # observed) since process_one() holds it throughout -- that's
            # fine, an idle open connection isn't itself a problem, it just
            # has to actually get closed afterward, which is the part that
            # was missing.
            conn = db.connect()
            try:
                name = process_one(conn, args.max_escalations)
            except Exception as e:
                # See scanner.py's main() for why this matters.
                print(f"[{time.strftime('%H:%M:%S')}] !! tier3 process_one() failed, skipping: {e}")
                break
            finally:
                conn.close()
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
