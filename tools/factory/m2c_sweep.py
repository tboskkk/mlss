#!/usr/bin/env python3
"""Run m2c over every unmatched function and seed the pipeline with what it
produces.

Generation is effectively free here (milliseconds per function, no GPU, no
model), so unlike the LLM tier there is no reason to be selective about
which functions to attempt -- just try everything and let the measurement
decide. Two useful outcomes per function:

  * score 0 -> a real byte-exact match, found with no search at all.
    Queued as `validating` for the ordinary validator gate (from-scratch
    build + byte-identical ROM). Nothing is committed from here.
  * score > 0 -> a real compilable seed, which is exactly what
    decomp-permuter needs to start from and what the `#error` placeholder
    never gave it. Queued as `tier2_ready`.

Scoring is the expensive part (each measurement is a real container
rebuild), so --generate-only is available to survey raw yield cheaply
first.

Usage:
    python3 tools/factory/m2c_sweep.py --generate-only          # fast survey
    python3 tools/factory/m2c_sweep.py --limit 50               # measure + seed
    python3 tools/factory/m2c_sweep.py                          # everything
"""
from __future__ import annotations

import argparse
import json
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402
import tier3  # noqa: E402

RESULTS = Path(__file__).resolve().parent / "bench_results" / "m2c_sweep.json"


def candidates(conn, states: list[str]) -> list[str]:
    q = ",".join("?" for _ in states)
    rows = conn.execute(
        f"SELECT name FROM functions WHERE state IN ({q}) ORDER BY lines ASC", states
    ).fetchall()
    out = []
    for r in rows:
        name = r["name"]
        if not (gitops.REPO / "asm" / "nonmatching" / f"{name}.s").exists():
            continue
        c_path, block = gitops.find_guard_block(name)
        if block is None:
            continue
        # A sibling still stuck on the #error placeholder fails the whole
        # translation unit no matter how good this function's C is.
        if tier3.blocking_siblings(name):
            continue
        out.append(name)
    return out


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--states", nargs="*",
                    default=["needs_attempt", "stalled", "needs_human", "queued", "raw"])
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--generate-only", action="store_true",
                    help="report how many functions m2c can translate at all, without scoring")
    args = ap.parse_args()

    conn = db.connect()
    names = candidates(conn, args.states)
    if args.limit:
        names = names[: args.limit]
    print(f"{len(names)} candidate function(s) from {args.states}\n")

    t0 = time.time()
    generated, results = 0, {}
    for i, name in enumerate(names, 1):
        body = m2c_bridge.generate(name)
        if body is None:
            results[name] = {"generated": False}
            continue
        generated += 1
        if args.generate_only:
            results[name] = {"generated": True}
            if i % 50 == 0:
                print(f"  ...{i}/{len(names)} surveyed, {generated} translated")
            continue

        # Deliberately imported here, not at module scope: bench pulls in the
        # LLM plumbing, which this tool otherwise has no need for.
        import bench
        score = bench.measure(name, body)
        results[name] = {"generated": True, "score": score}
        tag = "MATCH!" if score == 0 else (f"score={score}" if score is not None else "no compile")
        print(f"  [{i}/{len(names)}] {name}: {tag}")

        if score is None:
            continue
        state = "validating" if score == 0 else "tier2_ready"
        with db.tx(conn):
            db.set_state(conn, name, state, worker_id=None, candidate_body=body,
                         candidate_source="m2c",
                         notes=f"m2c seed, raw asm-differ score {score}")
        db.log_event(conn, name, "converged" if score == 0 else "seeded",
                     f"m2c raw score={score}")
        conn.commit()
        if score == 0:
            print("      -> byte-exact; queued for the validator")

    conn.close()
    RESULTS.parent.mkdir(exist_ok=True)
    RESULTS.write_text(json.dumps(results, indent=2))

    scored = [r["score"] for r in results.values() if r.get("score") is not None]
    matches = sum(1 for r in results.values() if r.get("score") == 0)
    print(f"\n=== m2c sweep ===")
    print(f"  {len(names)} attempted, {generated} translated by m2c "
          f"({100*generated/max(len(names),1):.0f}%)")
    if not args.generate_only:
        print(f"  {len(scored)} compiled, {matches} byte-exact match(es)")
        if scored:
            print(f"  mean score {sum(scored)/len(scored):.0f}, "
                  f"median {sorted(scored)[len(scored)//2]}")
    print(f"  wall time {time.time()-t0:.0f}s")
    print(f"  saved: {RESULTS}")


if __name__ == "__main__":
    main()
