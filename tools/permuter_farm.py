#!/usr/bin/env python3
"""Tier 2 of the factory pipeline: functions that already have a real,
semantically-correct C attempt sitting in a src/*.c file and just need
register-allocation search to become byte-identical. This is a pure CPU
search problem, not a reasoning problem -- decomp-permuter already knows
how to do it (that's its whole job), the only thing missing was a way to
run it across several functions AT ONCE using idle cores instead of one at
a time inside the slow qwen_pilot.sh loop.

No LLM is invoked anywhere in this file. If a function's starting C attempt
is semantically wrong (wrong parameter order, wrong struct field), no
amount of permuter search will ever find a zero-score candidate for it --
that was confirmed directly this session (alloc_zero_8018DB4's permuter
search only succeeded after a human/Claude fixed the actual semantics
first). So a function that times out here without converging isn't
necessarily "hard", it's just unproven whether its starting point is even
right -- still worth a look, just not by this tool.

Usage:
    ./container.sh tools/permuter_farm.py [--jobs N] [--timeout SECONDS]

Runs each in-progress function's permuter search in its own container,
pinned away from the cores llama-server owns (CONTAINER_CPUSET=6-11, see
container.sh) so this can safely run WHILE qwen_pilot.sh/qwen_supervisor.sh
are active without starving them -- the exact failure this tool's sibling
incident today was caused by NOT doing this.
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
import progress  # noqa: E402

REPO = Path(__file__).resolve().parent.parent
SRC_DIR = REPO / "src"
NONMATCHINGS_DIR = REPO / "nonmatchings"

# Cores NOT reserved for llama-server (which owns 0-5 via -Cr/-Crb in
# ~/Desktop/ai-training/qwen-coder/serve.sh). Hardcoded to match that
# config rather than auto-detected -- if the server's pinning ever
# changes, this needs to change with it.
FARM_CPUSET = "6-11"
FARM_CPU_COUNT = 6


def run(cmd, **kw):
    print(f"  $ {' '.join(str(c) for c in cmd)}")
    return subprocess.run(cmd, cwd=REPO, capture_output=True, text=True, **kw)


def in_progress_functions():
    names = []
    for path in sorted(SRC_DIR.glob("*.c")):
        _matched, in_prog, _not_started = progress.classify_c_file(path)
        names.extend(in_prog)
    return names


def ensure_isolated(name: str) -> bool:
    out_dir = NONMATCHINGS_DIR / name
    if out_dir.exists():
        return True
    # Needs arm-none-eabi-as, which only exists inside the toolchain
    # container -- a bare `python3 tools/permute.py` on the host fails with
    # FileNotFoundError, not an obviously-related error.
    r = run(["./container.sh", "tools/permute.py", name])
    if r.returncode != 0:
        print(r.stdout)
        print(r.stderr)
        return False
    return True


def launch_search(name: str, jobs_per_func: int):
    out_dir = NONMATCHINGS_DIR / name
    log_path = out_dir / "farm_search.log"
    log_f = open(log_path, "w")
    proc = subprocess.Popen(
        [
            "env", f"CONTAINER_CPUSET={FARM_CPUSET}",
            "./container.sh", "tools/decomp-permuter/permuter.py",
            "--stop-on-zero", "-j", str(jobs_per_func),
            f"nonmatchings/{name}",
        ],
        cwd=REPO,
        stdout=log_f,
        stderr=subprocess.STDOUT,
    )
    return proc, log_f


def find_zero_result(name: str):
    out_dir = NONMATCHINGS_DIR / name
    hits = sorted(out_dir.glob("output-0-*/source.c"))
    return hits[0] if hits else None


def trim_source(source: str, fn_name: str) -> str:
    """Same logic decomp-permuter itself uses to isolate one function's
    text out of a full source file (tools/decomp-permuter/src/helpers.py) --
    reused directly rather than re-derived, so this always agrees with what
    the permuter considers 'the function' even if that logic changes."""
    fn_index = source.find(fn_name)
    if fn_index != -1:
        newline_index = source.rfind("\n", 0, fn_index)
        if newline_index != -1:
            return source[newline_index:]
    return source


def splice_into_source(name: str, new_body: str) -> Path | None:
    needle = f'asm/nonmatching/{name}.s'
    for c_path in sorted(SRC_DIR.glob("*.c")):
        text = c_path.read_text()
        if needle not in text:
            continue
        guard_re = re.compile(
            r"#ifndef NONMATCHING\n.*?#else\n(.*?)\n#endif\n?",
            re.DOTALL,
        )
        # Only touch the specific guard block for this function -- a file
        # can hold several nonmatching functions, so match by the include
        # line rather than blindly taking the first #else/#endif pair.
        block_re = re.compile(
            rf'#ifndef NONMATCHING\nasm_unified\("\.include \\"{re.escape(needle)}\\""\);\n'
            rf'#else\n.*?\n#endif\n?',
            re.DOTALL,
        )
        new_text, n = block_re.subn(new_body.strip() + "\n", text)
        if n != 1:
            print(f"  !! couldn't find a clean guard block for {name} in {c_path.name}")
            return None
        c_path.write_text(new_text)
        return c_path
    return None


def verify_and_finish(name: str) -> bool:
    r = run(["./container.sh", "asm-differ", "-mwo", name])
    out = r.stdout + r.stderr
    lines = [l.strip() for l in out.splitlines() if l.strip()]
    target_lines = [l for l in lines if l[0].isdigit()]
    if not target_lines:
        print("  !! asm-differ produced no comparable lines")
        return False
    for l in target_lines:
        halves = re.split(r"\s{2,}", l)
        if len(halves) == 2 and halves[0] != halves[1]:
            print(f"  {name}: not actually byte-identical -- permuter's own score-0 said otherwise")
            return False

    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        frag.unlink()
    shutil.rmtree(REPO / "build", ignore_errors=True)
    r = run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        print(f"  !! from-scratch build did NOT say OK for {name}")
        print(r.stdout[-1500:])
        return False
    return True


def revert_to_clean():
    run(["git", "checkout", "--", "."])
    run(["git", "clean", "-fd", "asm/", "src/"])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--jobs", type=int, default=None,
                     help="total concurrent permuter worker threads across all functions "
                          f"(default: {FARM_CPU_COUNT}, matching the {FARM_CPUSET} cpuset)")
    ap.add_argument("--timeout", type=int, default=900,
                     help="seconds to let unconverged searches run before giving up on this pass")
    ap.add_argument("--only", nargs="*", help="restrict to these function names")
    args = ap.parse_args()

    total_jobs = args.jobs or FARM_CPU_COUNT
    targets = args.only or in_progress_functions()
    if not targets:
        print("nothing in progress right now -- nothing for the permuter farm to do")
        return

    # Spread the job budget evenly; at least 1 thread each.
    jobs_per_func = max(1, total_jobs // len(targets))
    print(f"targets: {targets}")
    print(f"{len(targets)} functions, {jobs_per_func} thread(s) each "
          f"({jobs_per_func * len(targets)} total, cpuset {FARM_CPUSET}), "
          f"{args.timeout}s budget")

    procs = {}
    for name in targets:
        if not ensure_isolated(name):
            print(f"  skipping {name}: couldn't set up isolated permuter dir")
            continue
        proc, log_f = launch_search(name, jobs_per_func)
        procs[name] = (proc, log_f)
        print(f"  launched {name} (pid {proc.pid})")

    deadline = time.time() + args.timeout
    converged = []
    while procs and time.time() < deadline:
        time.sleep(10)
        for name in list(procs):
            proc, log_f = procs[name]
            if proc.poll() is not None:
                log_f.close()
                zero = find_zero_result(name)
                if zero:
                    print(f"  {name}: converged (score 0)")
                    converged.append(name)
                else:
                    print(f"  {name}: search process exited without a score-0 result")
                del procs[name]

    # Anything still running at the deadline: stop it, but keep its work
    # directory (nonmatchings/<name>/) so a later run can pick up where
    # this one left off instead of re-searching from scratch.
    for name, (proc, log_f) in procs.items():
        print(f"  {name}: timed out at {args.timeout}s, stopping (progress kept in nonmatchings/{name}/)")
        proc.terminate()
        try:
            proc.wait(timeout=15)
        except subprocess.TimeoutExpired:
            proc.kill()
        log_f.close()

    print(f"\n{len(converged)} converged this pass: {converged}")

    finished = []
    for name in converged:
        print(f"\n=== applying {name} ===")
        zero = find_zero_result(name)
        body = trim_source(zero.read_text(), name)
        c_path = splice_into_source(name, body)
        if c_path is None:
            continue
        if verify_and_finish(name):
            shutil.rmtree(NONMATCHINGS_DIR / name, ignore_errors=True)
            run(["git", "add", "-A"])
            run(["git", "commit", "-m",
                 f"Match {name}\n\nRegister-allocation search only (tools/permuter_farm.py) -- "
                 f"the semantic C attempt already existed and was correct; decomp-permuter found "
                 f"the retail-matching register/instruction ordering on its own, no LLM turn spent."])
            print(f"  [ok] {name} matched and committed")
            finished.append(name)
        else:
            print(f"  [!!] {name}: score-0 candidate didn't survive full verification, reverting")
            revert_to_clean()

    print(f"\n{len(finished)}/{len(targets)} fully matched and committed: {finished}")


if __name__ == "__main__":
    main()
