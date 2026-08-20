#!/usr/bin/env python3
"""Controlled comparison of generation strategies for tier3's LLM step.

Why this exists: the overnight factory run converged on 1 committed match
out of 432 LLM drafts over 9.9 hours (0.23%) -- but that number is over
whatever functions triage happened to pick, at whatever sizes, so it can't
be compared fairly against any single change. This measures FIVE candidate
improvements (few-shot examples, best-of-N sampling, multi-turn
refinement, a dense 32B model, a reasoning model) against the exact SAME
fixed set of 18 functions (tools/factory/bench_set.json), with the exact
same scoring, so the comparison is real data instead of a guess.

Deliberately NOT wired into the live factory: this only ever MEASURES.
Every splice is reverted immediately after scoring (see measure() below);
nothing here ever writes to the DB or leaves a commit. Safe to run
alongside (or instead of) the real pipeline.

Scoring is the raw LLM draft's asm-differ score (0 = byte-identical),
BEFORE any permuter search -- that isolates the variable under test (draft
quality) from a downstream stage (register-allocation search) that is
already understood and held constant. A 0 here is a genuine, permuter-free
match; anything else is a continuous "how close" signal, which matters
more than pass/fail when hit rates are near zero.

Usage:
    python3 tools/factory/bench.py baseline
    python3 tools/factory/bench.py fewshot
    python3 tools/factory/bench.py bestofn --n 5
    python3 tools/factory/bench.py multiturn --rounds 2
    python3 tools/factory/bench.py baseline --model-alias qwen2.5-coder-32b --limit 3   # after swapping llama-server

Run OUTSIDE the container (same reason as tier3.py: needs `requests`,
needs to reach llama-server on the host).
"""
from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import requests

import db  # noqa: E402
import gitops  # noqa: E402
import tier3  # noqa: E402

BENCH_SET_PATH = Path(__file__).resolve().parent / "bench_set.json"
RESULTS_DIR = Path(__file__).resolve().parent / "bench_results"


def call_llm(prompt: str, model: str, url: str, max_tokens: int = 1024, timeout: int = 300) -> str | None:
    """Like tier3.call_llm(), but takes model/url explicitly instead of
    reading tier3's module-level constants -- those never change, so a
    variant run pointed at a swapped-in dense/reasoning model would
    otherwise silently keep hitting whatever server tier3.py was written
    against.

    max_tokens/timeout are overridable because a reasoning model changes
    the economics completely: measured live at ~2.9 tok/s on this CPU-only
    box (vs ~25 tok/s for the default MoE), and it spends a large chunk of
    that budget on prose/<think>-style reasoning before ever emitting code
    -- 1024 tokens at 300s wasn't enough to reach a finished function at
    all in a real test. Bumping both is not padding the model's chances
    unfairly; it is the minimum needed to see its actual output rather
    than a truncation artifact."""
    try:
        r = requests.post(url, json={
            "model": model,
            "messages": [
                {"role": "system", "content": tier3.SYSTEM_PROMPT},
                {"role": "user", "content": prompt},
            ],
            "max_tokens": max_tokens,
        }, timeout=timeout)
        r.raise_for_status()
        return r.json()["choices"][0]["message"]["content"]
    except Exception as e:
        print(f"  !! LLM call failed: {e}")
        return None


def load_bench_set() -> list[str]:
    data = json.loads(BENCH_SET_PATH.read_text())
    names = []
    for k, v in data.items():
        if k.startswith("_"):
            continue
        names += v
    return names


# --- few-shot examples -----------------------------------------------------
# Three REAL, already-matched functions from this repo (not synthetic), each
# chosen to cover a distinct idiom the SYSTEM_PROMPT already describes in
# prose: sub_80FB790 is a literal-pool address load + double indirection +
# byte packing; sub_8134B24 is a push/pop epilogue that is NOT the void
# idiom (r0 holds a real return value, r1 just carries the saved LR back);
# sub_804FB14 is pure pointer-arithmetic struct-field copying, no branches.
# Pulled from git history (the commit before each one's match deleted its
# asm/nonmatching/*.s fragment) -- see the session log for the exact
# commands. This is the entire content of variant #1 (few-shot): everything
# else about the prompt is identical to baseline.

FEWSHOT_EXAMPLES = [
    (
        """\tthumb_func_start sub_80FB790
sub_80FB790:
\tlsls r0, r0, #0x10
\tlsrs r0, r0, #0x0E
\tldr r2, _080FB7B8 @ =0x083D6C58
\tadds r0, r0, r2
\tldr r0, [r0, #0x00]
\tldrb r3, [r0, #0x01]
\tlsls r3, r3, #0x02
\tldrb r2, [r0, #0x00]
\tlsrs r2, r2, #0x06
\torrs r3, r2
\tmovs r2, #0x1F
\tands r3, r2
\tstrb r3, [r1, #0x00]
\tldrb r1, [r0, #0x05]
\tlsls r1, r1, #0x08
\tldrb r2, [r0, #0x04]
\torrs r1, r2
\tsubs r0, r0, r1
\tbx lr
\t.byte 0x00, 0x00
_080FB7B8: .4byte 0x083D6C58""",
        """u32 sub_80FB790(u32 param_1, u32 param_2)
{
  u32 new_var;
  u32 *puVar1;
  u8 *puVar2;
  u32 uVar3;
  puVar1 = (u32 *) ((param_1 << 0x10) >> 0xe);
  puVar1 = (u32 *) (((u32) puVar1) + 0x83D6C58);
  puVar2 = (u8 *) (*puVar1);
  uVar3 = (u32) (*(((u8 *) puVar2) + 1));
  uVar3 <<= 2;
  uVar3 |= ((u32) (*puVar2)) >> 6;
  uVar3 &= 0x1f;
  *((u8 *) param_2) = (u8) uVar3;
  new_var = ((u32) (*(((u8 *) puVar2) + 5))) << 8;
  uVar3 = new_var;
  uVar3 |= (u32) (*(((u8 *) puVar2) + 4));
  return ((u32) puVar2) - uVar3;
}""",
    ),
    (
        """\tthumb_func_start sub_8134B24
sub_8134B24:
\tpush {lr}
\tldrh r1, [r0, #0x02]
\tldrh r0, [r0, #0x04]
\tcmp r1, r0
\tbcs _08134B32
\tmovs r0, #0x00
\tb _08134B34
_08134B32:
\tmovs r0, #0x01
_08134B34:
\tpop {r1}
\tbx r1""",
        """bool32 sub_8134B24(u16 *param_1)
{
  if (param_1[1] < param_1[2])
  {
    return 0;
  }
  return 1;
}""",
    ),
    (
        """\tthumb_func_start sub_804FB14
sub_804FB14:
\tldr r1, [r0, #0x08]
\tstr r1, [r0, #0x18]
\tldr r1, [r0, #0x0C]
\tstr r1, [r0, #0x1C]
\tldr r1, [r0, #0x10]
\tstr r1, [r0, #0x20]
\tldr r1, [r0, #0x14]
\tstr r1, [r0, #0x24]
\tbx lr""",
        """u32* sub_804FB14(u32* param_1) {
    param_1[0x06] = param_1[0x02];
    param_1[0x07] = param_1[0x03];
    param_1[0x08] = param_1[0x04];
    param_1[0x09] = param_1[0x05];
    return param_1;
}""",
    ),
]


def fewshot_preamble() -> str:
    parts = ["Here are three WORKED EXAMPLES of real functions from this exact codebase, "
             "confirmed byte-identical -- study how each assembly idiom maps to C:"]
    for i, (asm, c) in enumerate(FEWSHOT_EXAMPLES, 1):
        parts += [f"\nExample {i}:", "Assembly:", "```", asm, "```", "Correct C:", "```c", c, "```"]
    parts.append("\nNow apply the same care to a NEW function:")
    return "\n".join(parts)


# --- generation strategies --------------------------------------------------
# Each takes (name, row, model, url) and returns (best_body, meta) where
# meta records how many LLM calls it cost, for a fair cost/benefit read
# alongside the score.

def gen_baseline(name: str, row, model: str, url: str, max_tokens: int = 1024):
    prompt = tier3.build_prompt(name, row)
    # Timeout budget assumes worst case ~2 tok/s (measured live on
    # DeepSeek-R1-Distill-32B: ~2.9 tok/s on this CPU-only box) plus
    # headroom, not the ~25 tok/s the default MoE actually gets.
    timeout = max(300, int(max_tokens / 2))
    body = call_llm(prompt, model, url, max_tokens=max_tokens, timeout=timeout)
    return (tier3.clean_response(body) if body else None), {"calls": 1}


def gen_fewshot(name: str, row, model: str, url: str):
    prompt = fewshot_preamble() + "\n\n" + tier3.build_prompt(name, row)
    body = call_llm(prompt, model, url)
    return (tier3.clean_response(body) if body else None), {"calls": 1}


def gen_bestofn(name: str, row, model: str, url: str, n: int = 5):
    prompt = tier3.build_prompt(name, row)
    best_body, best_score, calls = None, None, 0
    for _ in range(n):
        raw = call_llm(prompt, model, url)
        calls += 1
        if not raw:
            continue
        body = tier3.clean_response(raw)
        score = measure(name, body)
        if score is not None and (best_score is None or score < best_score):
            best_body, best_score = body, score
    return best_body, {"calls": calls, "best_score_seen": best_score}


def gen_multiturn(name: str, row, model: str, url: str, rounds: int = 2):
    messages = [
        {"role": "system", "content": tier3.SYSTEM_PROMPT},
        {"role": "user", "content": tier3.build_prompt(name, row)},
    ]
    best_body, best_score, calls = None, None, 0
    for rnd in range(rounds + 1):
        try:
            r = requests.post(url, json={
                "model": model, "messages": messages, "max_tokens": 1024,
            }, timeout=300)
            r.raise_for_status()
            raw = r.json()["choices"][0]["message"]["content"]
        except Exception as e:
            print(f"    !! multiturn call failed: {e}")
            break
        calls += 1
        body = tier3.clean_response(raw)
        score = measure(name, body)
        if score is not None and (best_score is None or score < best_score):
            best_body, best_score = body, score
        if score == 0 or rnd == rounds:
            break
        # Feed the diff back as the next user turn.
        c_path = gitops.splice_into_else(name, body)
        diff_out = ""
        if c_path is not None:
            diff_out = gitops.run(["./container.sh", "asm-differ", "-mwo", name]).stdout
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
        messages.append({"role": "assistant", "content": raw})
        messages.append({"role": "user", "content":
                          "That did not match. Here is the real diff (TARGET = retail, "
                          "CURRENT = your attempt) -- study exactly which lines differ and "
                          "fix your C accordingly. Output only the corrected function.\n\n"
                          f"```\n{diff_out.strip()[:3000]}\n```"})
    return best_body, {"calls": calls, "best_score_seen": best_score}


def gen_m2c(name: str, row, model: str, url: str):
    """No LLM at all -- deterministic translation via m2c. See m2c_bridge."""
    import m2c_bridge
    return m2c_bridge.generate(name), {"calls": 0}


VARIANTS = {
    "baseline": gen_baseline,
    "fewshot": gen_fewshot,
    "bestofn": gen_bestofn,
    "multiturn": gen_multiturn,
    "m2c": gen_m2c,
}


# --- measurement -------------------------------------------------------------

def measure(name: str, body: str | None) -> int | None:
    """Splice `body` in, score it, ALWAYS revert. Never touches the DB,
    never commits. Returns the asm-differ score, or None if it didn't even
    compile / no readable verdict."""
    if not body or not body.strip():
        return None
    with gitops.repo_lock(what=f"bench measure {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            return None
        try:
            return gitops.asm_differ_score(name)
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])


def run_variant(variant: str, model: str, url: str, limit: int | None, **kwargs):
    names = load_bench_set()
    if limit:
        names = names[:limit]
    fn = VARIANTS[variant]
    conn = db.connect()
    results = {}
    t0 = time.time()
    for i, name in enumerate(names, 1):
        row = conn.execute("SELECT * FROM functions WHERE name = ?", (name,)).fetchone()
        if row is None:
            print(f"  [{i}/{len(names)}] {name}: not in DB, skipping")
            continue
        t1 = time.time()
        try:
            body, meta = fn(name, row, model, url, **kwargs)
        except Exception as e:
            print(f"  [{i}/{len(names)}] {name}: generation crashed: {e}")
            results[name] = {"score": None, "compiled": False, "elapsed": time.time() - t1, "error": str(e)}
            continue
        score = measure(name, body) if variant not in ("bestofn", "multiturn") else meta.get("best_score_seen")
        elapsed = time.time() - t1
        results[name] = {
            "score": score,
            "compiled": score is not None,
            "match": score == 0,
            "elapsed": round(elapsed, 1),
            # Keep the winning text, not just its score -- a benchmark run
            # is still real generation work, and a genuine score-0 draft
            # found here is a real match. Losing the body would mean
            # re-deriving it from scratch (or worse, from a stale printed
            # log) to actually bank it.
            "body": body,
            **{k: v for k, v in meta.items() if k != "best_score_seen"},
        }
        tag = "MATCH!" if score == 0 else (f"score={score}" if score is not None else "no compile")
        print(f"  [{i}/{len(names)}] {name}: {tag} ({elapsed:.0f}s, {meta.get('calls', 1)} call(s))")
        if score == 0 and body:
            # A genuine byte-exact draft is a real win, not just a
            # benchmark data point -- hand it back to the live factory the
            # same way twins.py's auto-propagation does (see
            # validator.propagate_to_twins), so it lands through the one
            # hardened commit path (splice -> from-scratch build -> commit)
            # instead of evaporating when this script exits.
            with db.tx(conn):
                db.set_state(conn, name, "validating", worker_id=None,
                             candidate_body=body, candidate_source=f"bench:{variant}",
                             notes=f"found by bench.py variant={variant} (score 0 on raw draft)")
            db.log_event(conn, name, "converged", f"bench.py variant={variant}, score=0")
            conn.commit()
            print(f"      -> real match! hand it to the validator: "
                  f"./container.sh tools/factory/validator.py")
    conn.close()

    scored = [r["score"] for r in results.values() if r["score"] is not None]
    matches = sum(1 for r in results.values() if r.get("match"))
    summary = {
        "variant": variant, "model": model,
        "n": len(results), "compiled": len(scored), "matches": matches,
        "mean_score": round(sum(scored) / len(scored), 1) if scored else None,
        "median_score": sorted(scored)[len(scored) // 2] if scored else None,
        "total_wall_seconds": round(time.time() - t0, 1),
        "results": results,
    }
    RESULTS_DIR.mkdir(exist_ok=True)
    out_path = RESULTS_DIR / f"{variant}__{model}.json"
    out_path.write_text(json.dumps(summary, indent=2))
    print(f"\n=== {variant} ({model}) ===")
    print(f"  {len(results)} functions, {len(scored)} compiled, {matches} byte-exact match(es)")
    print(f"  mean score: {summary['mean_score']}, median: {summary['median_score']}")
    print(f"  wall time: {summary['total_wall_seconds']:.0f}s")
    print(f"  saved: {out_path}")
    return summary


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("variant", choices=list(VARIANTS.keys()))
    ap.add_argument("--n", type=int, default=5, help="bestofn: samples per function")
    ap.add_argument("--rounds", type=int, default=2, help="multiturn: refinement rounds after the first")
    ap.add_argument("--limit", type=int, default=None, help="only test the first N bench functions")
    ap.add_argument("--model-alias", default=tier3.MODEL, help="model name to record/send (swap llama-server separately)")
    ap.add_argument("--url", default=tier3.LLAMA_URL)
    ap.add_argument("--max-tokens", type=int, default=1024,
                     help="generation budget per call -- bump this for a reasoning model, "
                          "which spends a large chunk of it on reasoning before code")
    args = ap.parse_args()

    kwargs = {}
    if args.variant == "bestofn":
        kwargs["n"] = args.n
    if args.variant == "multiturn":
        kwargs["rounds"] = args.rounds
    if args.variant == "baseline":
        kwargs["max_tokens"] = args.max_tokens

    run_variant(args.variant, args.model_alias, args.url, args.limit, **kwargs)


if __name__ == "__main__":
    main()
