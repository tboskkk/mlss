#!/usr/bin/env python3
"""Score candidates against retail with objdiff -- a graded number, not a
boolean, on the same isolated agbcc-vs-retail object pair isolation_exact.py
already builds.

WHY THIS EXISTS, and why it is a THIRD number rather than a replacement for
either existing one. Every score this project stored before isolation_exact.py
was taken with asm-differ in OBJECT-DIFF mode -- diffing whole `.o` files,
because `thumb_func_start` emits no `.size` so asm-differ cannot find a
symbol's own boundary. CLAUDE.md N.4a measured the result: the same code,
scored 76x apart, purely from how many functions happen to follow it in its
file. isolation_exact.py fixed the TRANSLATION-UNIT half of that (no sibling
to diff against) by building the candidate alone and comparing raw
`.text`+relocation bytes directly -- but a raw byte distance has no
normalisation: one register-allocation miss and a wholesale rewrite can score
similarly badly, and it says nothing about HOW CLOSE the candidate is in any
sense a permuter search would recognise.

objdiff resolves this properly rather than working around it: it reads ELF
symbol boundaries directly (real `st_size`, or infers one from the next
FUNC/OBJECT symbol when absent -- see objdiff-core's `infer_symbol_sizes()`),
so it can score ONE symbol inside a multi-symbol object without the N.4a
artifact ever entering the picture, and its instruction-level diff is what a
permuter search's own progress looks like -- much closer to "how many
instructions still differ" than "how many raw bytes differ".

RELOCATIONS ARE NOT OPTIONAL. `bl target` and `.word target` are placeholder
zeroes in an object; a raw byte comparison that ignores relocations calls two
different callees identical. `functionRelocDiffs=name_address` is passed
EXPLICITLY on every invocation below, rather than relying on whatever the
binary's own default happens to be -- confirmed by reading objdiff-core's
diff/code.rs directly: `function_reloc_diffs == FunctionRelocDiffs::None` is
specifically the setting that RELAXES relocation comparison, so anything else
enforces it. Klonoa's own objdiff.json sets the relaxed `"none"` -- do not
copy that default here; it would reintroduce exactly the failure this
project cannot tolerate.

REUSES isolation_exact.py's own build: same compiler_variants.stage(), same
one-shot podman script, same scratch-dir object files (`{name}.agbcc.o` /
`{name}.retail.o}`) -- objdiff just runs one more step against files that
already exist before the scratch dir is cleaned up. Requires `objdiff-cli` on
PATH or OBJDIFF=/path/to/it.

    OBJDIFF=/path/to/objdiff-cli python3 tools/factory/objdiff_score.py --limit 200
    OBJDIFF=/path/to/objdiff-cli python3 tools/factory/objdiff_score.py --limit 200 --apply

SAFETY: identical to isolation_exact.py -- repo mounted read-only, all work in
a scratch dir, no gitops.repo_lock() needed, cannot race a live factory.
--apply only writes the objdiff_score column; it never changes state.
"""
from __future__ import annotations

import argparse
import json
import os
import shutil
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

CLAIMABLE = ("tier2_ready", "stalled", "needs_human")
RELOC_CONFIG = "functionRelocDiffs=name_address"


def _objdiff_bin() -> str:
    return os.environ.get("OBJDIFF", "objdiff-cli")


def pick(conn, args):
    if args.names:
        q = ",".join("?" * len(args.names))
        return conn.execute(
            f"SELECT name, candidate_body, best_score, lines, state FROM functions "
            f"WHERE name IN ({q}) AND candidate_body IS NOT NULL", args.names).fetchall()
    states = ",".join("?" * len(CLAIMABLE))
    return conn.execute(
        f"SELECT name, candidate_body, best_score, lines, state FROM functions "
        f"WHERE state IN ({states}) AND worker_id IS NULL "
        f"AND candidate_body IS NOT NULL "
        f"AND candidate_body NOT LIKE '%M2C_ERROR%' "
        f"ORDER BY COALESCE(lines, 9999) ASC LIMIT ?",
        (*CLAIMABLE, args.limit)).fetchall()


def score_one(objdiff: str, work: Path, name: str) -> float | None:
    """-> match_percent for symbol `name`, diffing {name}.agbcc.o against
    {name}.retail.o, or None if either object is missing or objdiff itself
    failed (never a silent 0.0 -- a real failure must not look like a real
    score of zero)."""
    agbcc_o = work / f"{name}.agbcc.o"
    retail_o = work / f"{name}.retail.o"
    if not agbcc_o.exists() or not retail_o.exists():
        return None
    try:
        r = subprocess.run(
            [objdiff, "diff", "-1", str(agbcc_o), "-2", str(retail_o), name,
             "-o", "-", "--format", "json", "-c", RELOC_CONFIG],
            capture_output=True, text=True, timeout=30)
    except (subprocess.TimeoutExpired, FileNotFoundError):
        return None
    if r.returncode != 0 or not r.stdout.strip():
        return None
    try:
        d = json.loads(r.stdout)
    except json.JSONDecodeError:
        return None
    for sym in d.get("left", {}).get("symbols", []):
        if sym.get("name") == name and "match_percent" in sym:
            return float(sym["match_percent"])
    return None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=200)
    ap.add_argument("--names", nargs="*")
    ap.add_argument("--apply", action="store_true",
                    help="write objdiff_score for every measured candidate")
    ap.add_argument("--keep", action="store_true")
    ap.add_argument("--loop", type=float, default=0, metavar="SECONDS",
                    help="run continuously, sweeping every SECONDS (implies --apply)")
    args = ap.parse_args()

    # Never wired into supervisor.py's PROCESSES after being built - the
    # objdiff_score column tier2.py ranks by (OBJDIFF_ADMIT_FLOOR) was only
    # ever populated by a one-time manual sweep. Same staleness problem
    # isolation_exact.py's own --loop docstring already documents for
    # iso_score: tier_m2c clears/creates candidate bodies continuously, so a
    # score taken once decays as fast as the backlog moves. Mirrors that
    # tool's loop exactly, including implying --apply.
    if args.loop:
        args.apply = True

    objdiff = _objdiff_bin()
    if shutil.which(objdiff) is None and not Path(objdiff).exists():
        print(f"objdiff-cli not found ({objdiff}). Set OBJDIFF=/path/to/objdiff-cli.",
              file=sys.stderr)
        return 1

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=not args.apply)
    rows = pick(conn, args)
    if not rows:
        print("nothing to test with those filters")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"objdiffscore.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    t0 = time.time()
    try:
        staged = cv.stage(rows, work, ctx, strict=False)
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        (work / "variants.txt").write_text("agbcc agbcc \n")
        print(f"building {len(staged)} candidate(s) for objdiff")

        script = cv.SCRIPT.replace("@@FLAGS@@", " ".join(cv.BASE_FLAGS))
        subprocess.run(
            ["podman", "run", "--rm",
             "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
             cv.IMAGE, "bash", "-c", script],
            capture_output=True, text=True, timeout=7200)

        measured: dict[str, float] = {}
        for name in staged:
            pct = score_one(objdiff, work, name)
            if pct is not None:
                measured[name] = pct

        dt = time.time() - t0
        if not measured:
            print("\nNOTHING WAS MEASURED -- no verdict. Re-run with --keep and "
                  "invoke objdiff-cli by hand on the scratch dir's .o files.")
            return 2

        by = {r["name"]: r for r in rows}
        exact = sorted((n for n, p in measured.items() if p == 100.0))
        dist = sorted(measured.values())
        n = len(dist)
        print(f"\nmeasured {n} of {len(staged)} in {dt:.0f}s ({n / max(dt, 1) * 60:.0f}/min)")
        print(f"100.0% (byte-exact): {len(exact)}")
        if n:
            def pct_at(p):
                return dist[min(n - 1, int(n * p))]
            print(f"distribution: p10={pct_at(.10):.1f} p25={pct_at(.25):.1f} "
                  f"p50={pct_at(.50):.1f} p75={pct_at(.75):.1f} p90={pct_at(.90):.1f}")

        if args.apply:
            with db.tx(conn):
                for n_, p in measured.items():
                    conn.execute("UPDATE functions SET objdiff_score = ? WHERE name = ?",
                                 (p, n_))
            print(f"recorded objdiff_score for {len(measured)} candidate(s)")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


def loop(interval: float) -> int:
    while True:
        try:
            main()
        except Exception as e:                     # never let one sweep kill the worker
            print(f"sweep failed: {type(e).__name__}: {e}", flush=True)
        time.sleep(interval)


if __name__ == "__main__":
    _argv = sys.argv[1:]
    if "--loop" in _argv:
        _iv = float(_argv[_argv.index("--loop") + 1])
        sys.argv = [a for i, a in enumerate(sys.argv)
                    if a != "--loop" and (i == 0 or sys.argv[i - 1] != "--loop")]
        sys.argv.append("--apply")
        raise SystemExit(loop(_iv))
    raise SystemExit(main())
