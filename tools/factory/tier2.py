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

# This box has 6 PHYSICAL cores, not 12 -- serve.sh's own comment documents
# `lscpu -e=CPU,CORE,ONLINE`: logical CPUs 0-5 are each a distinct physical
# core's primary thread, 6-11 are the SAME 6 cores' SMT sibling thread. So
# "6-11" was never a separate bank of cores from llama-server's "0-5" --
# it was always the other hyperthread on the exact same 6 cores.
#
# Widened to the full 0-11 now that tier3's LLM is a rare fallback instead
# of the primary generation path (m2c is): llama-server's --cpu-strict
# only confines ITS OWN threads to 0-5, it does not block other processes
# from being scheduled there, so this lets the permuter opportunistically
# use the (now mostly idle) primary threads too, without touching
# llama-server's own pinning or risking its stability. FARM_CPU_COUNT
# bumped modestly (6 -> 8), not to 12 -- there are still only 6 physical
# cores' worth of real compute, so oversubscribing much past that risks
# thrashing rather than helping.
FARM_CPUSET = "0-11"
# Was 8 while llama-server still held cores 0-5 for tier3's LLM. tier3 is
# gone (see supervisor.PROCESSES), llama-server isn't started, so the
# permuter now has the machine to itself: 12 concurrent searches across
# 6 physical cores / 12 SMT threads. Still oversubscribed relative to
# physical cores on purpose -- permuter workers spend real time blocked on
# compile I/O, so a thread per logical CPU keeps them fed without the
# decode-collapse problem that made SMT bad for llama-server.
FARM_CPU_COUNT = 12

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
    # A leftover isolation dir holds the C from whenever it was created.
    # Returning early on `out_dir.exists()` meant a function tier3 had
    # since RE-DRAFTED got searched with its OLD candidate -- the new draft
    # was never actually tested, and the retry path silently did nothing.
    # That path only just became reachable (stalled retries are no longer
    # throttled), so this would have quietly wasted an entire overnight
    # run's worth of retries. Always re-isolate from the current candidate;
    # permute.py refuses to overwrite, so clear it first.
    if out_dir.exists():
        if not candidate_body:
            return True  # nothing newer to install; reuse what's there
        shutil.rmtree(out_dir, ignore_errors=True)
    # The real src/*.c file has to actually contain the candidate BEFORE
    # permute.py runs -- it reads straight off disk (find_stub_block()),
    # it doesn't know the DB's candidate_body column exists. Found missing
    # live: every tier3-sourced candidate landed here with the file still
    # holding the split_func.py #error placeholder, so permute.py refused
    # every single one, 100% of a 21-minute run's failures. See
    # gitops.splice_into_else()'s docstring for the full story.
    # Writes into a real src/*.c and runs permute.py (which compiles) --
    # shared repo state, so serialize it like every other mutation. Only
    # the SETUP is locked; the long permuter search itself runs outside the
    # lock, entirely inside nonmatchings/<name>/, so searches stay fully
    # parallel with everything else. See gitops.repo_lock().
    with gitops.repo_lock(what=f"tier2 isolate {name}"):
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


def candidate_body_of(name: str) -> str | None:
    conn = db.connect()
    try:
        row = conn.execute("SELECT candidate_body FROM functions WHERE name = ?", (name,)).fetchone()
        return row["candidate_body"] if row else None
    finally:
        conn.close()


def stall_seconds_for(lines_count: int, stall_min: float) -> float:
    """Scale the give-up timeout to how much search space actually exists.

    A 4-line function's permuter search space is exhausted in seconds --
    giving it the same 15 minutes as a 150-line function burns six pinned
    CPU cores for a quarter hour to learn nothing. Measured live: five
    4-line stubs each held a pool slot for the full 15-minute timeout while
    279 functions waited, which is most of why the observed match rate was
    ~6/hr against a theoretical ceiling of ~24/hr.
    """
    return min(max(60.0, lines_count * 6.0), stall_min * 60.0)


def already_matches(name: str, candidate_body: str | None) -> bool:
    """Cheap pre-check: is this candidate ALREADY byte-perfect?

    Most correct tier3 drafts are already exact -- confirmed repeatedly
    (every autonomous match so far has been 'base attempt already
    matched'). Running the full decomp-permuter apparatus to discover that
    costs an import (cpp + agbcc + as), a container start, and a pool slot,
    to reach the same answer one asm-differ invocation gives in seconds.
    This is the single biggest electricity saving in the pipeline: the
    common success path no longer spins up a search at all.

    A false positive here is harmless -- the validator still does the full
    from-scratch build before committing anything, so the real gate is
    unchanged. A false negative just falls through to the permuter, which
    is exactly what would have happened anyway.
    """
    if not candidate_body:
        return False
    with gitops.repo_lock(what=f"tier2 precheck {name}"):
        if gitops.splice_into_else(name, candidate_body) is None:
            return False
        return gitops.asm_differ_matches(name)


def run_pool(jobs: int, stall_min: float, max_functions: int):
    """Continuously-refilled worker pool.

    Previously this claimed a batch of `max_functions`, then waited for
    EVERY one to finish before claiming any more -- so one slow function
    idled up to five free slots. Now a slot is refilled the moment it
    frees, which is what actually turns spare CPU into throughput.
    """
    procs = {}
    processed = 0

    def claim_one():
        conn = db.connect()
        try:
            # CLOSEST-FIRST, by the seed's actual asm-differ score.
            #
            # This used to be updated_at ASC, which was itself a fix for
            # tractability-first starving older functions (35 of them sat
            # 3.6-12.5 HOURS while newer easy arrivals cut in line). But
            # age is arbitrary with respect to difficulty, and there are
            # only 12 permuter slots -- so what actually matters is not
            # WHEN a seed arrived, it is how far the search has to travel.
            #
            # Measured live, with updated_at ordering: 9 of 12 slots were
            # searching seeds scoring 1,495-12,160 while only 245 seeds
            # under 500 existed in the whole queue, mostly waiting. A
            # 15-minute stochastic search does not close a 12,160-point
            # gap; that function needs a better SEED, which is the
            # project's whole thesis, not more search.
            #
            # This only became possible tonight: score_sweep gave 1,928
            # queued seeds a real score for the first time. Before that
            # best_score was almost entirely NULL and this ordering would
            # have been meaningless.
            #
            # Scored seeds come first, ascending; unscored ones last. The
            # starvation this replaced was functions never being TRIED --
            # here every seed has been tried and measured, and a high score
            # is evidence that searching it again is not where the next
            # match comes from. If that turns out to be wrong the fix is a
            # better seed for it, not an earlier slot.
            # FEWEST-ATTEMPTS first, then closest-first within that round.
            #
            # Pure closest-first (best_score alone) spun. Measured live: 738
            # launches and 736 stalls in ONE hour, producing a single match,
            # with the same dozen function names in the slots across three
            # checks 30 minutes apart. The cycle is: a search stalls ->
            # tier_m2c claims `stalled` and re-seeds it -> it lands back in
            # tier2_ready -> it is still the lowest-scoring row, so it is
            # re-claimed immediately -> it stalls again in ~60s. Twelve
            # slots, permanently, on twelve functions that had already
            # failed. The old updated_at ordering did not have this problem
            # because a re-queued row went to the back of the line.
            #
            # Sorting on attempts first restores that fairness: everything
            # gets a first search before anything gets a second, while
            # closest-first still decides the order within each round --
            # which was the point of the change and is worth keeping.
            return db.claim_for_worker(
                conn, "tier2_ready", WORKER_ID,
                order_by="escalation_count ASC, best_score IS NULL ASC, best_score ASC")
        finally:
            conn.close()

    def resolve(name, state, notes=None, event=None, detail="", body=None, source="tier2"):
        conn = db.connect()
        try:
            fields = {"worker_id": None}
            if notes is not None:
                fields["notes"] = notes
            if body is not None:
                fields["candidate_body"] = body
                fields["candidate_source"] = source
            with db.tx(conn):
                db.set_state(conn, name, state, **fields)
            if event:
                db.log_event(conn, name, event, detail)
                conn.commit()
        finally:
            conn.close()

    while True:
        # --- refill every free slot -------------------------------------
        while len(procs) < max_functions:
            row = claim_one()
            if row is None:
                break
            name = row["name"]
            body = row["candidate_body"]

            # Cheap win first: if it already matches, skip the permuter
            # entirely and hand it straight to the validator.
            try:
                if already_matches(name, body):
                    resolve(name, "validating", event="converged",
                            detail="score=0 (pre-check: candidate already matched)",
                            body=body)
                    print(f"  {name}: already matches -- straight to validator (no search)")
                    processed += 1
                    continue
            except Exception as e:
                print(f"  {name}: pre-check failed ({e}), falling through to permuter")

            if not ensure_isolated(name, body):
                resolve(name, "needs_human",
                        notes="tier2: couldn't isolate for permuter (permute.py failed)")
                processed += 1
                continue

            threads_each = max(1, jobs // max(1, max_functions))
            proc, log_f = launch(name, threads_each)
            procs[name] = {
                "proc": proc, "log": log_f, "last_score": None,
                "last_improved": time.time(),
                "stall_s": stall_seconds_for(row["lines"] or 0, stall_min),
            }
            _active[name] = proc
            conn = db.connect()
            try:
                with db.tx(conn):
                    # Count this attempt. escalation_count was tier3's
                    # (retired) retry counter and is otherwise unused, so
                    # tier2 repurposes it as "how many searches has this
                    # function already had". The claim ordering below sorts
                    # on it FIRST, which is what stops the closest-first
                    # spin loop -- see there.
                    db.set_state(conn, name, "permuting", worker_id=None, best_score=None,
                                 escalation_count=(row["escalation_count"] or 0) + 1,
                                 last_improved_at=time.time())
                db.log_event(conn, name, "t2_launch",
                             f"threads={threads_each}, stall={procs[name]['stall_s']:.0f}s")
                conn.commit()
            finally:
                conn.close()
            print(f"  {name}: searching ({threads_each}t, give up after {procs[name]['stall_s']:.0f}s)")

        if not procs:
            break  # nothing running and nothing left to claim

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
                        db.set_state(conn, name, "permuting", best_score=score,
                                     last_improved_at=info["last_improved"])
                    db.log_event(conn, name, "score_update", str(score))
                    conn.commit()
                finally:
                    conn.close()

            exited = info["proc"].poll() is not None
            stalled = (time.time() - info["last_improved"]) > info["stall_s"]

            if exited:
                info["log"].close()
                zero = has_zero(name)
                base_zero = zero is None and base_already_zero(name)
                if zero or base_zero:
                    if zero:
                        body = trim_source(zero.read_text(), name)
                        detail = "score=0 (permuter found it)"
                    else:
                        body = candidate_body_of(name)
                        detail = "score=0 (base attempt already matched)"
                    # A permuter score-0 is earned in its OWN isolated
                    # sandbox (nonmatchings/<name>/base.c, with its own
                    # includes and helper decls). trim_source() splices
                    # only the function text back into the real src/*.c,
                    # which can drop context the permuter had -- so
                    # score-0-in-isolation does not imply score-0-in-place.
                    # Confirmed live: sub_8163BB8 converged at 0 and the
                    # validator then correctly rejected it, twice. Verify
                    # in the real file before claiming convergence, so the
                    # two stages can't disagree in the first place.
                    verified = body and already_matches(name, body)
                    if verified:
                        resolve(name, "validating", event="converged", detail=detail, body=body)
                        print(f"  {name}: converged -- {detail}")
                    elif body:
                        resolve(name, "stalled", event="t2_exit_no_zero",
                                notes="permuter reached score 0 in isolation but the "
                                      "candidate does not match in its real source file")
                        print(f"  {name}: permuter score 0 didn't hold in context -> stalled")
                    else:
                        resolve(name, "needs_human", event="error",
                                detail="base zero with no candidate_body",
                                notes="permuter says base score 0 but no candidate_body on record")
                else:
                    resolve(name, "stalled", event="t2_exit_no_zero",
                            notes="permuter process exited without reaching score 0")
                    print(f"  {name}: exited, no zero")
                del procs[name]
                _active.pop(name, None)
                processed += 1
            elif stalled:
                kill_search(name, info["proc"])
                info["log"].close()
                resolve(name, "stalled", event="stalled",
                        detail=f"best_score={info['last_score']}",
                        notes=f"no improvement for {info['stall_s']:.0f}s "
                              f"(best={info['last_score']}) -- likely wrong C, needs tier3")
                print(f"  {name}: stalled at {info['last_score']} after {info['stall_s']:.0f}s -> tier3")
                del procs[name]
                _active.pop(name, None)
                processed += 1

    return processed




def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--jobs", type=int, default=FARM_CPU_COUNT,
                     help=f"total concurrent permuter threads (default {FARM_CPU_COUNT})")
    ap.add_argument("--stall-min", type=float, default=15.0,
                     help="minutes without score improvement before handing off to tier3 (default 15)")
    ap.add_argument("--max-functions", type=int, default=FARM_CPU_COUNT,
                     help=f"max functions to run concurrently in one pool pass (default {FARM_CPU_COUNT})")
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
