#!/usr/bin/env python3
"""Factory pipeline, process 4 of 5: Tier 2, the Permuter Pool.

Claims `tier2_ready` rows (functions with a real C attempt already sitting
in a src/*.c, from tier 1, tier 3, or a human) and runs decomp-permuter
against several of them AT ONCE, on cores the LLM doesn't own (taskset,
see container.sh -- proven necessary the hard way: today's incident had
abandoned permuter containers with no cpuset of their own starving a
--cpu-strict-pinned llama-server down to ~0.1 tok/s anyway).

No LLM is invoked here. This is a pure CPU search: the C is either already
semantically right (only register allocation/ordering is wrong, which a
search finds) or it isn't (no amount of search finds a zero-score
candidate for wrong semantics -- confirmed directly this session with
alloc_zero_8018DB4, which only converged after a human/Claude fixed the
actual parameter order first).

Score tracking watches decomp-permuter's own output-{score}-N/ directories
rather than parsing its stdout -- more robust (no ANSI codes, no format
assumptions) and it's already exactly what write_candidate() produces on
every improvement, including the final score-0 win.

Usage:
    ./container.sh tools/factory/tier2.py [--jobs N] [--stall-min M]
"""
from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

REPO = gitops.REPO
NONMATCHINGS_DIR = REPO / "nonmatchings"
WORKER_ID = "tier2"

# Cores NOT reserved for llama-server (owns 0-5 via -Cr/-Crb in
# ~/Desktop/ai-training/qwen-coder/serve.sh). Hardcoded to match that
# config -- if the server's pinning ever changes, this needs to change too.
FARM_CPUSET = "6-11"
FARM_CPU_COUNT = 6

OUTPUT_DIR_RE = re.compile(r"^output-(\d+)-\d+$")


def best_score_seen(name: str) -> int | None:
    out_dir = NONMATCHINGS_DIR / name
    if not out_dir.is_dir():
        return None
    best = None
    for d in out_dir.iterdir():
        m = OUTPUT_DIR_RE.match(d.name)
        if m:
            score = int(m.group(1))
            if best is None or score < best:
                best = score
    return best


def has_zero(name: str) -> Path | None:
    hits = sorted((NONMATCHINGS_DIR / name).glob("output-0-*/source.c"))
    return hits[0] if hits else None


def ensure_isolated(name: str) -> bool:
    out_dir = NONMATCHINGS_DIR / name
    if out_dir.exists():
        return True
    r = gitops.run(["./container.sh", "tools/permute.py", name])
    return r.returncode == 0


def launch(name: str, threads: int):
    log_f = open(NONMATCHINGS_DIR / name / "farm.log", "w")
    proc = subprocess.Popen(
        ["env", f"CONTAINER_CPUSET={FARM_CPUSET}",
         "./container.sh", "tools/decomp-permuter/permuter.py",
         "--stop-on-zero", "-j", str(threads), f"nonmatchings/{name}"],
        cwd=REPO, stdout=log_f, stderr=subprocess.STDOUT,
    )
    return proc, log_f


def trim_source(source: str, fn_name: str) -> str:
    """Same as decomp-permuter's own helpers.trim_source -- reused inline
    so this file has no import-path dependency on the submodule's internal
    layout."""
    idx = source.find(fn_name)
    if idx != -1:
        nl = source.rfind("\n", 0, idx)
        if nl != -1:
            return source[nl:]
    return source


def run_pool(conn, jobs: int, stall_min: float, max_functions: int):
    claimed = []
    for _ in range(max_functions):
        row = db.claim_for_worker(conn, "tier2_ready", WORKER_ID)
        if row is None:
            break
        claimed.append(row["name"])

    if not claimed:
        return 0

    threads_each = max(1, jobs // len(claimed))
    print(f"tier2 pool: {claimed} ({threads_each} thread(s) each, cpuset {FARM_CPUSET})")

    procs = {}
    for name in claimed:
        if not ensure_isolated(name):
            with db.tx(conn):
                db.set_state(conn, name, "needs_human", worker_id=None,
                             notes="tier2: couldn't isolate for permuter (permute.py failed)")
            continue
        proc, log_f = launch(name, threads_each)
        procs[name] = {"proc": proc, "log": log_f, "last_score": None, "last_improved": time.time()}
        with db.tx(conn):
            db.set_state(conn, name, "permuting", best_score=None, last_improved_at=time.time())
        db.log_event(conn, name, "t2_launch", f"threads={threads_each}")

    while procs:
        time.sleep(10)
        for name in list(procs):
            info = procs[name]
            score = best_score_seen(name)
            if score is not None and score != info["last_score"]:
                info["last_score"] = score
                info["last_improved"] = time.time()
                with db.tx(conn):
                    db.set_state(conn, name, "permuting", best_score=score, last_improved_at=info["last_improved"])
                db.log_event(conn, name, "score_update", str(score))

            exited = info["proc"].poll() is not None
            stalled = (time.time() - info["last_improved"]) > stall_min * 60

            if exited:
                info["log"].close()
                zero = has_zero(name)
                if zero:
                    body = trim_source(zero.read_text(), name)
                    with db.tx(conn):
                        db.set_state(conn, name, "validating", worker_id=None,
                                     candidate_body=body, candidate_source="tier2")
                    db.log_event(conn, name, "converged", f"score=0")
                    print(f"  {name}: converged")
                else:
                    with db.tx(conn):
                        db.set_state(conn, name, "stalled", worker_id=None,
                                     notes="permuter process exited without reaching score 0")
                    db.log_event(conn, name, "t2_exit_no_zero", "")
                    print(f"  {name}: exited, no zero")
                del procs[name]
            elif stalled:
                info["proc"].terminate()
                try:
                    info["proc"].wait(timeout=15)
                except subprocess.TimeoutExpired:
                    info["proc"].kill()
                info["log"].close()
                with db.tx(conn):
                    db.set_state(conn, name, "stalled", worker_id=None,
                                 notes=f"no score improvement for {stall_min} min "
                                        f"(best={info['last_score']}) -- likely wrong C, needs tier3")
                db.log_event(conn, name, "stalled", f"best_score={info['last_score']}")
                print(f"  {name}: stalled at score {info['last_score']}, handing to tier3")
                del procs[name]

    return len(claimed)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--jobs", type=int, default=FARM_CPU_COUNT,
                     help=f"total concurrent permuter threads (default {FARM_CPU_COUNT})")
    ap.add_argument("--stall-min", type=float, default=15.0,
                     help="minutes without score improvement before handing off to tier3 (default 15)")
    ap.add_argument("--max-functions", type=int, default=6,
                     help="max functions to run concurrently in one pool pass")
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    conn = db.connect()
    while True:
        n = run_pool(conn, args.jobs, args.stall_min, args.max_functions)
        if args.loop is None:
            break
        if n == 0:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
