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
import atexit
import re
import shutil
import signal
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


# decomp-permuter prints this when the attempt it was GIVEN already matches
# retail perfectly, before it randomizes anything.
BASE_ZERO_RE = re.compile(r"^\[.*\] base score = 0\s*$", re.MULTILINE)


def base_already_zero(name: str) -> bool:
    """True if the permuter reported the STARTING attempt as a perfect match.

    This is the single most important detection case in the whole pipeline,
    and missing it made the factory structurally incapable of recognizing
    its own successes. When the candidate handed to decomp-permuter is
    already byte-perfect, it prints 'base score = 0' / 'Found zero score!
    Exiting.' and exits immediately -- WITHOUT ever writing an
    output-0-N/source.c directory, because write_candidate() only fires for
    randomized candidates it decides are worth outputting, and a base that's
    already perfect never goes through that path.

    has_zero() above only looks for that output directory. So every
    already-correct candidate -- exactly the ones the pipeline most wants --
    was being reported as 'exited, no zero' and thrown back to tier3 to be
    redrafted, forever. Confirmed directly: sub_80E92A8's tier3 draft
    (`return *param_1;` against retail `ldr r0,[r0,#0]; bx lr`) was a
    perfect match, and the pipeline discarded it. Zero 'converged' events
    had ever been logged before this was found, despite tier3 producing
    plenty of correct C.
    """
    log = NONMATCHINGS_DIR / name / "farm.log"
    if not log.exists():
        return False
    try:
        text = log.read_text(errors="replace")
    except OSError:
        return False
    return bool(BASE_ZERO_RE.search(text))


def ensure_isolated(name: str, candidate_body: str | None) -> bool:
    out_dir = NONMATCHINGS_DIR / name
    if out_dir.exists():
        return True
    # The real src/*.c file has to actually contain the candidate BEFORE
    # permute.py runs -- it reads straight off disk (find_stub_block()),
    # it doesn't know the DB's candidate_body column exists. Found missing
    # live: every tier3-sourced candidate landed here with the file still
    # holding the split_func.py #error placeholder, so permute.py refused
    # every single one, 100% of a 21-minute run's failures. See
    # gitops.splice_into_else()'s docstring for the full story.
    if candidate_body:
        if gitops.splice_into_else(name, candidate_body) is None:
            return False
    r = gitops.run(["./container.sh", "tools/permute.py", name])
    return r.returncode == 0


def kill_search(name: str, proc: subprocess.Popen):
    """Actually stop a running permuter search. Popen.terminate()/.kill()
    on our direct child (the `env`/`container.sh` wrapper) is NOT enough --
    confirmed the hard way while testing this module: an outer timeout
    killed tier2.py itself mid-poll, and even though its own stall-handling
    code path DID call proc.terminate() + a 15s wait + proc.kill() for one
    function, the real container (podman run --rm's actual crun-managed
    process tree via conmon) survived all of it and kept burning CPU. This
    is very likely the same root mechanism behind today's earlier incident
    (6 abandoned permuter containers, still running 12+ hours later,
    starving llama-server) -- killing the CLI wrapper process was never
    enough to kill the container it launched. `podman kill` on the actual
    container is the only version of this that's actually reliable."""
    proc.terminate()
    try:
        proc.wait(timeout=5)
    except subprocess.TimeoutExpired:
        proc.kill()
    # --no-trunc is load-bearing, not cosmetic: podman ps's default
    # {{.Command}} column truncates long commands, and `nonmatchings/<name>`
    # sits near the END of ours -- past the truncation point every time.
    # Without it this silently matches nothing, no error, and the
    # container just keeps running. Found live: both of THIS run's stalled
    # searches survived their own "stalled, cleaning up" log line intact.
    r = gitops.run(["podman", "ps", "--no-trunc", "--format", "{{.ID}} {{.Command}}"])
    for line in r.stdout.splitlines():
        if f"nonmatchings/{name}" in line:
            cid = line.split()[0]
            gitops.run(["podman", "kill", cid])


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


# Every actively-launched search this process owns right now, so a kill
# signal (or an unhandled exception) can still clean up real containers
# instead of orphaning them -- see kill_search()'s docstring for why that
# matters: an outer `timeout` killing THIS process mid-poll orphaned two
# real containers the first time this was tested, live.
_active: dict[str, subprocess.Popen] = {}


def _cleanup_all():
    for name, proc in list(_active.items()):
        print(f"  cleanup: stopping {name}'s search (process exiting)")
        kill_search(name, proc)


atexit.register(_cleanup_all)
signal.signal(signal.SIGTERM, lambda *_a: sys.exit(0))  # let atexit run, don't skip it


def run_pool(jobs: int, stall_min: float, max_functions: int):
    """No `conn` parameter on purpose -- see the module-level note below for
    why. Every DB touch here opens, uses, and closes its own short-lived
    connection instead."""
    claimed = []
    candidate_bodies = {}
    conn = db.connect()
    try:
        for _ in range(max_functions):
            row = db.claim_for_worker(conn, "tier2_ready", WORKER_ID)
            if row is None:
                break
            claimed.append(row["name"])
            candidate_bodies[row["name"]] = row["candidate_body"]
    finally:
        conn.close()

    if not claimed:
        return 0

    threads_each = max(1, jobs // len(claimed))
    print(f"tier2 pool: {claimed} ({threads_each} thread(s) each, cpuset {FARM_CPUSET})")

    procs = {}
    for name in claimed:
        if not ensure_isolated(name, candidate_bodies.get(name)):
            conn = db.connect()
            try:
                with db.tx(conn):
                    db.set_state(conn, name, "needs_human", worker_id=None,
                                 notes="tier2: couldn't isolate for permuter (permute.py failed)")
            finally:
                conn.close()
            continue
        proc, log_f = launch(name, threads_each)
        procs[name] = {"proc": proc, "log": log_f, "last_score": None, "last_improved": time.time()}
        _active[name] = proc
        conn = db.connect()
        try:
            with db.tx(conn):
                db.set_state(conn, name, "permuting", best_score=None, last_improved_at=time.time())
            db.log_event(conn, name, "t2_launch", f"threads={threads_each}")
            conn.commit()
        finally:
            conn.close()

    # This loop can run for the full --stall-min minutes (default 15) --
    # found live, running the whole pipeline together for the first time:
    # a SINGLE connection held open across that entire span, doing
    # periodic small transactions on it every 10s, was leaving every OTHER
    # process (tier1, tier3, scanner, validator) blocked on writes the
    # whole time -- confirmed directly, tier1's CPU time was flat to the
    # second across a 100+-second window while a tier2 cycle was mid-run.
    # Not just "connection per iteration" (that fixed a DIFFERENT, shorter-
    # lived version of the same class of bug in every other tier) --
    # HERE it has to be "connection per individual DB touch", because one
    # iteration of THIS loop can legitimately span minutes.
    while procs:
        time.sleep(10)
        for name in list(procs):
            info = procs[name]
            score = best_score_seen(name)
            if score is not None and score != info["last_score"]:
                info["last_score"] = score
                info["last_improved"] = time.time()
                conn = db.connect()
                try:
                    with db.tx(conn):
                        db.set_state(conn, name, "permuting", best_score=score, last_improved_at=info["last_improved"])
                    db.log_event(conn, name, "score_update", str(score))
                    conn.commit()
                finally:
                    conn.close()

            exited = info["proc"].poll() is not None
            stalled = (time.time() - info["last_improved"]) > stall_min * 60

            if exited:
                info["log"].close()
                zero = has_zero(name)
                # Two genuinely different ways to win, and missing the
                # second one made this pipeline unable to recognize its own
                # successes at all -- see base_already_zero()'s docstring.
                base_zero = zero is None and base_already_zero(name)
                conn = db.connect()
                try:
                    if zero or base_zero:
                        if zero:
                            body = trim_source(zero.read_text(), name)
                            detail = "score=0 (permuter found it)"
                        else:
                            # The attempt we HANDED the permuter was already
                            # perfect, so the winning C is the candidate
                            # body itself -- there's no output dir to read.
                            body = candidate_bodies.get(name)
                            detail = "score=0 (base attempt already matched)"
                            if not body:
                                # Shouldn't happen (we spliced it in to get
                                # here) but never guess at a body -- send it
                                # for a human to look at instead.
                                with db.tx(conn):
                                    db.set_state(conn, name, "needs_human", worker_id=None,
                                                 notes="permuter says base score 0 but no candidate_body on record")
                                db.log_event(conn, name, "error", "base zero with no candidate_body")
                                conn.commit()
                                del procs[name]
                                _active.pop(name, None)
                                continue
                        with db.tx(conn):
                            db.set_state(conn, name, "validating", worker_id=None,
                                         candidate_body=body, candidate_source="tier2")
                        db.log_event(conn, name, "converged", detail)
                        conn.commit()
                        print(f"  {name}: converged -- {detail}")
                    else:
                        with db.tx(conn):
                            db.set_state(conn, name, "stalled", worker_id=None,
                                         notes="permuter process exited without reaching score 0")
                        db.log_event(conn, name, "t2_exit_no_zero", "")
                        conn.commit()
                        print(f"  {name}: exited, no zero")
                finally:
                    conn.close()
                del procs[name]
                _active.pop(name, None)
            elif stalled:
                kill_search(name, info["proc"])
                info["log"].close()
                conn = db.connect()
                try:
                    with db.tx(conn):
                        db.set_state(conn, name, "stalled", worker_id=None,
                                     notes=f"no score improvement for {stall_min} min "
                                            f"(best={info['last_score']}) -- likely wrong C, needs tier3")
                    db.log_event(conn, name, "stalled", f"best_score={info['last_score']}")
                    conn.commit()
                finally:
                    conn.close()
                print(f"  {name}: stalled at score {info['last_score']}, handing to tier3")
                del procs[name]
                _active.pop(name, None)

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

    while True:
        # No connection managed at this level at all -- run_pool() now
        # opens and closes its own short-lived connection around every
        # individual DB touch, since one iteration of its internal poll
        # loop can legitimately span the full --stall-min minutes. See
        # run_pool()'s own docstring/comment for why that's a materially
        # different fix from "one connection per --loop iteration" (which
        # is what every other tier actually needed).
        try:
            n = run_pool(args.jobs, args.stall_min, args.max_functions)
        except Exception as e:
            # See scanner.py's main() for why this matters. Note this one
            # matters more than most: run_pool() owns real running
            # containers via _active, and _cleanup_all() is only wired to
            # atexit/SIGTERM, not to an in-loop exception -- so on a real
            # crash here those containers rely on the atexit handler still
            # firing during process teardown, which it does (exceptions
            # don't skip atexit), just calling it out since this is the one
            # process where "crashed" and "orphaned containers" are close.
            print(f"[{time.strftime('%H:%M:%S')}] !! tier2 run_pool() failed, will retry next cycle: {e}")
            n = 0
        if args.loop is None:
            break
        if n == 0:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
