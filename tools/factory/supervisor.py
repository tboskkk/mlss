#!/usr/bin/env python3
"""Factory pipeline, process 6 of 6: the Daemon Supervisor.

The generalized version of what qwen_supervisor.sh already did for one
process (health-check llama-server, restart what dies, keep going past a
single batch) -- now covering all five factory processes at once. This is
the one command that makes the whole pipeline "walk away and it keeps
working": start it, and scanner/validator/tier1/tier2/tier3 all run
continuously, restarting each other's failures, until told to stop.

Startup does a clean slate on purpose: kills any stray factory processes
still running from a previous session, then releases every worker_id claim
in the DB. This is safe specifically because none of the tier processes
carry cross-restart state in a claim -- a fresh process only ever picks up
NEW work each loop iteration, so an inherited claim from a dead process is
always garbage, never legitimate in-flight work. (A permuter search itself
surviving a supervisor restart would be a real problem -- but tier2's own
kill_search()/atexit handling is what's responsible for those, and gets a
real chance to run since children are stopped with SIGTERM here, not
SIGKILL, before this reaper touches the DB.)

Usage:
    systemd-inhibit --what=sleep:idle --why="mlss decomp factory" \\
      ./tools/factory/supervisor.py [--max-hours 10]
"""
from __future__ import annotations

import argparse
import signal
import subprocess
import sys
import time
from pathlib import Path

import requests

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402

REPO = Path(__file__).resolve().parent.parent.parent
FACTORY_DIR = REPO / "tools" / "factory"
LOG_DIR = REPO / ".claude" / "factory" / "logs"
HEALTH_URL = "http://127.0.0.1:8080/health"
SERVE_SCRIPT = Path.home() / "Desktop" / "ai-training" / "qwen-coder" / "serve.sh"

# name -> (script, args, needs_llm). needs_llm processes are only started
# once llama-server answers healthy; the rest don't touch it at all.
#
# NO LLM TIER HERE, DELIBERATELY. tier3.py still exists (tier_m2c and
# m2c_sweep import its blocking_siblings/read_retail_asm helpers) but it
# is no longer RUN. The measured case for removing it, not a preference:
#
#   * a controlled 5-way comparison found no LLM configuration beat a
#     single plain draft, and all of them lost to a plain m2c seed on
#     compile rate, mean score AND match rate (CLAUDE.md, "Generating C:
#     use m2c, not an LLM")
#   * m2c translates 96% of functions and produced 68 exact matches in
#     ~2 minutes; the LLM produced 1 match in 10 hours
#   * once the permuter got the cores it needed, llama-server degraded to
#     ~5 tok/s anyway, so tier3 was contributing ~nothing while holding
#     6 cores hostage
#
# This project is a reverse compiler. A compiler doesn't use an LLM, and
# neither does this: every stall is a MISSING DETERMINISTIC RULE, not a
# prompt to hand to a model. See stall_patterns.py, which mines stalls
# for exactly those rules -- the arg-register fix it inspired
# (m2c_bridge.restore_omitted_leading_params) took functions that had
# stalled through full permuter searches straight to score 0, and applied
# to 15% of the corpus.
PROCESSES = {
    "scanner":   ("scanner.py",   ["--loop", "300"],  False),
    "validator": ("validator.py", ["--loop", "15"],   False),
    "tier1":     ("tier1.py",     ["--loop", "30"],   False),
    "tier_m2c":  ("tier_m2c.py",  ["--loop", "10"],   False),
    "tier2":     ("tier2.py",     ["--loop", "20", "--stall-min", "15"], False),
}


def log(msg: str):
    line = f"[{time.strftime('%H:%M:%S')}] {msg}"
    print(line, flush=True)
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    with open(LOG_DIR / "supervisor.log", "a") as f:
        f.write(line + "\n")


def llama_healthy() -> bool:
    try:
        r = requests.get(HEALTH_URL, timeout=3)
        return r.status_code == 200
    except Exception:
        return False


def restart_llama():
    log("!! llama-server not responding -- restarting it")
    subprocess.run(["pkill", "-KILL", "-f", "bin/llama-server"])
    time.sleep(2)
    subprocess.Popen(
        ["nohup", "./serve.sh"],
        cwd=SERVE_SCRIPT.parent,
        stdout=open(LOG_DIR / f"serve-{time.strftime('%Y%m%d-%H%M%S)')}.log", "w"),
        stderr=subprocess.STDOUT,
        start_new_session=True,
    )
    for _ in range(60):
        if llama_healthy():
            log("llama-server back up")
            return True
        time.sleep(3)
    log("!! llama-server still not responding after 3 minutes")
    return False


REAP_INTERVAL_SECONDS = 300  # check every 5 min
REAP_STALE_MINUTES = 45      # only touch claims stuck well past tier2's own default stall window


# Clearing worker_id alone is NOT enough to recover a stuck claim: nothing
# ever claims FROM "permuting" or "validating" (tier2 claims from
# tier2_ready and transitions itself; the validator claims from
# validating) -- a row left in one of those states with worker_id cleared
# is invisible to every claim_for_worker() call forever, worse off than
# before the reap. Each stuck state needs to go back to wherever it can
# actually be picked up again. validating specifically goes to
# needs_human rather than being retried automatically: it means the
# validator died mid-splice, and the repo's real state at that point isn't
# known from here -- safer for a human/Claude to look than to guess.
REAP_RECOVERY = {
    "permuting": "tier2_ready",
    "validating": "needs_human",
}


def reap_stale_claims(stale_minutes: float) -> int:
    conn = db.connect()
    cutoff = time.time() - stale_minutes * 60
    n = 0
    with db.tx(conn):
        # NOT just `worker_id IS NOT NULL`. tier2 deliberately sets
        # "permuting" with worker_id=None -- it tracks which searches it
        # owns in its own in-process `procs` dict, not in the DB -- so a
        # tier2 that dies (or a machine that reboots) leaves those rows
        # with no worker_id, in a state nothing ever claims FROM, and the
        # worker_id filter made them invisible to this reaper forever.
        # Found after a reboot: 178 rows stranded that way, 139 of them
        # carrying real permuter progress (a recorded best_score) that
        # would simply have been abandoned.
        #
        # Safe against reaping a LIVE search: tier2 only rewrites
        # updated_at when a score improves, so a running search can look
        # stale -- but only up to stall_seconds_for()'s ceiling of 900s
        # (~15 min), after which tier2 transitions the row out of
        # permuting itself. REAP_STALE_MINUTES is 45, a 3x margin. The
        # worst case if that margin were ever wrong is a duplicated
        # search, not a corrupted repo.
        rows = conn.execute(
            "SELECT name, state FROM functions "
            "WHERE (worker_id IS NOT NULL OR state IN ('permuting', 'validating')) "
            "AND updated_at < ?",
            (cutoff,),
        ).fetchall()
        for row in rows:
            recovery_state = REAP_RECOVERY.get(row["state"], row["state"])
            db.set_state(conn, row["name"], recovery_state, worker_id=None,
                         notes=f"reaped: stuck in state={row['state']} with no live "
                                f"worker for >{stale_minutes:.0f} min")
            n += 1
    conn.close()
    return n


def sweep_orphaned_containers() -> int:
    """Kill any permuter container no factory process still owns.

    A child's own atexit/SIGTERM handler can NEVER be sufficient, because
    SIGKILL cannot be caught -- and the supervisor itself sends SIGKILL to
    anything that outlives its shutdown grace period. Observed exactly
    that: tier2 was hard-killed mid-cleanup and left three permuter
    containers running. That is the same failure that once left six
    abandoned containers running for 12+ hours, driving load average to
    26.5 and starving llama-server to ~0.1 tok/s. Over a night of
    restarts these accumulate, so the supervisor sweeps unconditionally
    rather than trusting its children to have cleaned up after themselves.
    """
    r = subprocess.run(["podman", "ps", "--no-trunc", "--format", "{{.ID}} {{.Command}}"],
                       capture_output=True, text=True)
    killed = 0
    for line in r.stdout.splitlines():
        if "nonmatchings/" in line or "decomp-permuter" in line:
            cid = line.split()[0]
            subprocess.run(["podman", "kill", cid], capture_output=True)
            killed += 1
    if killed:
        log(f"swept {killed} orphaned permuter container(s)")
    return killed


def clean_slate():
    log("clean slate: stopping any stray factory processes from a previous session")
    for pyname, _args, _needs_llm in PROCESSES.values():
        subprocess.run(["pkill", "-TERM", "-f", f"tools/factory/{pyname}"])
    time.sleep(3)  # give tier2 its atexit handler's chance to podman-kill real containers
    for pyname, _args, _needs_llm in PROCESSES.values():
        subprocess.run(["pkill", "-KILL", "-f", f"tools/factory/{pyname}"])

    # 0 minutes: at this exact point every factory process was just killed
    # above, so ANY claim still on the board is unconditionally orphaned --
    # no need to wait out a staleness window the way the periodic reaper
    # does. Uses the same per-state recovery mapping (see REAP_RECOVERY) so
    # a claim from "permuting" doesn't just get worker_id cleared and left
    # permanently unclaimable -- that bug existed here too before this
    # was unified with reap_stale_claims().
    sweep_orphaned_containers()
    n = reap_stale_claims(0)
    log(f"reaped {n} orphaned worker claim(s)")

    # Integrity gate. A supervisor (or machine) that dies mid-extraction
    # leaves the working tree inconsistent -- splits.yaml/ld_script.ld
    # updated but the blob split half-done -- and the ROM then fails to
    # reproduce. Seen for real: an 80-second run killed mid-flight left
    # `mlss.gba: FAILED` behind. Nothing downstream can make progress from
    # that state, so a restart must repair it rather than inherit it.
    # Safe to revert unconditionally on failure: the factory only ever
    # COMMITS on a verified match, so anything uncommitted is by
    # definition in-flight work that was going to be redone anyway.
    r = subprocess.run(["./container.sh", "make"], cwd=REPO, capture_output=True, text=True)
    if "mlss.gba: OK" not in r.stdout:
        log("!! repo does not reproduce the ROM (left broken by a previous crash) -- reverting")
        subprocess.run(["git", "checkout", "--", "."], cwd=REPO, capture_output=True)
        subprocess.run(["git", "clean", "-fd", "asm/", "src/"], cwd=REPO, capture_output=True)
        import shutil
        shutil.rmtree(REPO / "build", ignore_errors=True)
        r2 = subprocess.run(["./container.sh", "make"], cwd=REPO, capture_output=True, text=True)
        if "mlss.gba: OK" in r2.stdout:
            log("repo repaired: ROM reproduces byte-identically again")
        else:
            log("!! STILL BROKEN after revert -- refusing to start, needs a human")
            sys.exit(1)


def start(name: str) -> subprocess.Popen:
    pyname, args, _needs_llm = PROCESSES[name]
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    log_f = open(LOG_DIR / f"{name}.log", "a")
    # -u (unbuffered). Child stdout goes to a FILE, so Python block-buffers
    # it at 4-8KB and the log lags arbitrarily far behind reality. That is
    # not cosmetic: tier2.log stopped updating at 13:57 while tier2 was
    # very much alive, so the one exception that explains a live incident
    # (run_pool() crashing and leaving its containers behind) was sitting
    # unflushed in a buffer during the entire investigation of it. A log
    # you cannot read during the incident is not a log.
    proc = subprocess.Popen(
        [sys.executable, "-u", str(FACTORY_DIR / pyname), *args],
        cwd=REPO, stdout=log_f, stderr=subprocess.STDOUT,
    )
    log(f"started {name} (pid {proc.pid})")
    return proc


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--max-hours", type=float, default=None,
                     help="wall-clock budget; omit to run indefinitely until stopped")
    ap.add_argument("--check-interval", type=int, default=20,
                     help="seconds between health/liveness checks (default 20)")
    args = ap.parse_args()

    deadline = time.time() + args.max_hours * 3600 if args.max_hours else None

    clean_slate()

    procs: dict[str, subprocess.Popen | None] = {}
    for name in PROCESSES:
        _pyname, _args, needs_llm = PROCESSES[name]
        if needs_llm and not llama_healthy():
            if not restart_llama():
                log(f"skipping {name} this round -- llama-server unavailable")
                procs[name] = None
                continue
        procs[name] = start(name)

    stopping = False

    def _handle_sigterm(*_a):
        nonlocal stopping
        stopping = True

    signal.signal(signal.SIGTERM, _handle_sigterm)
    signal.signal(signal.SIGINT, _handle_sigterm)

    log("=== supervisor running -- all processes launched ===")
    last_reap = time.time()
    while not stopping:
        if deadline and time.time() >= deadline:
            log("wall-clock budget reached, stopping")
            break
        time.sleep(args.check_interval)

        # Periodic reaper, not just the startup one: a process surviving
        # its own errors (see the resilient-loop fix in every tier's
        # main()) is good for uptime, but it also means the supervisor's
        # crash-triggered restart -- which used to be what caught an
        # orphaned worker_id claim -- may never fire. A claim genuinely
        # stuck (a hang, or a crash the tier's own try/except couldn't
        # fully clean up after) needs its own safety net. 45 minutes is
        # deliberately generous -- tier2's default --stall-min is 15,
        # so a legitimate permuting claim can sit that long before tier2
        # itself resolves it; this only catches things well past that.
        if time.time() - last_reap > REAP_INTERVAL_SECONDS:
            # A tier that crashed (rather than exiting cleanly) can leave
            # containers behind mid-run, not just at shutdown.
            if not any(p is not None and p.poll() is None for p in procs.values()):
                sweep_orphaned_containers()
            n = reap_stale_claims(REAP_STALE_MINUTES)
            if n:
                log(f"reaper: released {n} stale worker claim(s) (stuck > {REAP_STALE_MINUTES} min)")
            last_reap = time.time()

        for name, (pyname, _args, needs_llm) in PROCESSES.items():
            proc = procs.get(name)
            if proc is not None and proc.poll() is None:
                continue  # alive
            if proc is not None:
                log(f"!! {name} died (exit code {proc.returncode}) -- restarting")
            if needs_llm and not llama_healthy():
                if not restart_llama():
                    procs[name] = None
                    continue
            procs[name] = start(name)

    log("stopping: sending SIGTERM to all children")
    for name, proc in procs.items():
        if proc is not None and proc.poll() is None:
            proc.terminate()
    for name, proc in procs.items():
        if proc is not None:
            try:
                # tier2's shutdown has real work to do -- a `podman kill`
                # per running search -- so give it room. 20s was not
                # enough and it got SIGKILLed mid-cleanup.
                proc.wait(timeout=90)
            except subprocess.TimeoutExpired:
                log(f"!! {name} didn't exit cleanly, killing")
                proc.kill()
    sweep_orphaned_containers()
    log("=== supervisor stopped ===")


if __name__ == "__main__":
    main()
