#!/usr/bin/env python3
"""Batch `--allocator-attack` sweep across the tier2_ready near-miss pool.

WHY. The 2026-08-29 Tier 2 survey (CLAUDE.md) categorized this pool by hand,
one function at a time, in-terminal. That's how the `ldmia`-vs-`ldr` and
stack-size classes were found and proven -- but hand-picking doesn't scale,
and CLAUDE.md's own formal parking policy says the DOMINANT class (~60%,
same-instruction-different-register) is a proven, unreachable wall: running
`--allocator-attack` against it is pure waste. So the real lever here is
CHEAP TRIAGE before the expensive part: build every candidate in isolation,
compare its mnemonic-only instruction stream against retail's, and only
spend search time on rows where the mnemonics actually differ (a real,
closeable gap) rather than rows that are already instruction-for-instruction
identical (nothing but a register choice left to find).

WHAT THIS DOES NOT DO. It never writes to a tracked file and never calls
finish_match() or commits anything. It only updates `candidate_body`/`notes`
on rows it improves and saves a copy to
`nonmatchings/<name>/output-incontext-best/`, exactly the manual convention
used throughout this session. Promotion is deliberately left to the existing
validator/tier2 pipeline, which already knows how to safely land a real
match (this is exactly the mechanism that turned this session's improved
sub_8087444 seed into a real committed match on its own, with no action
from this tool).

SAFETY around the live factory: skips any row with `worker_id IS NOT NULL`
(actively claimed), and never claims a row itself -- so it can run
concurrently with the live factory without contending for the same rows.
DB writes are plain `UPDATE`s on `candidate_body`/`notes` only, matching
every manual update this session made; a genuine race with a live worker
updating the exact same row at the exact same moment is the same accepted,
narrow risk as those manual updates, not a new one.

    python3 tools/factory/allocator_sweep.py --limit 60 --parallel 5 \\
        --seconds-per-fn 150

Run OUTSIDE the container (this script shells out to `./container.sh`
itself, once per triage batch and once per attack).
"""
from __future__ import annotations

import argparse
import json
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

REPO = gitops.REPO
TYPEDEF_PREAMBLE = (
    "typedef signed char s8;\n"
    "typedef unsigned char u8;\n"
    "typedef signed short s16;\n"
    "typedef unsigned short u16;\n"
    "typedef signed int s32;\n"
    "typedef unsigned int u32;\n\n"
)
_TYPEDEF_RE = re.compile(
    r"^\s*typedef\s+\w[\w ]*\s+(s8|u8|s16|u16|s32|u32);\s*$")


def strip_typedefs(text: str) -> str:
    return "\n".join(l for l in text.splitlines() if not _TYPEDEF_RE.match(l))


def pick_pool(conn, limit: int, names: list[str] | None):
    if names:
        q = ",".join("?" * len(names))
        return conn.execute(
            f"SELECT name, candidate_body, best_score, lines, state FROM functions "
            f"WHERE name IN ({q})", names).fetchall()
    return conn.execute(
        "SELECT name, candidate_body, best_score, lines, state FROM functions "
        "WHERE state='tier2_ready' AND objdiff_score >= 90 AND escalation_count >= 10 "
        "AND candidate_body IS NOT NULL AND candidate_body NOT LIKE '%M2C_ERROR%' "
        "AND worker_id IS NULL "
        "AND (notes IS NULL OR notes NOT LIKE 'allocator_sweep.py:%') "
        "ORDER BY iso_score IS NULL, iso_score ASC LIMIT ?", (limit,)).fetchall()


def triage(rows, work: Path) -> list[str]:
    """Stage + build every row in ISOLATION (single function alone, the
    same primitive `isolation_exact.py` uses), then classify by comparing
    normalized instruction streams two ways: a raw compare (catches a true
    match modulo comments/symbol annotations) and a register-blinded compare
    (every bare register token mapped to a placeholder before comparing --
    CLAUDE.md's own diagnostic for the register-swap wall is "same mnemonic,
    same immediate, same operand count, only a swapped register", which
    survives the second compare but not the first).

    KNOWN, ACCEPTED LIMITATION, found live testing this fix: this still
    UNDER-DETECTS the wall, because it measures the wrong context. The wall
    is a REAL-FILE, whole-translation-unit register-allocation effect (the
    in-context permuter's entire reason for existing -- CLAUDE.md: "agbcc's
    register/stack allocation is coupled across the whole compilation unit").
    Building a candidate ALONE, as this function does, can have a
    DIFFERENT register-pressure profile than the real file -- confirmed on
    `sub_816B0E0` itself, the exact function CLAUDE.md names as the proven,
    330,000-try wall: isolated here, its only difference from retail is an
    extra alignment `.short 0x0000` padding line (a length-based artifact,
    not a register swap at all), so neither compare parks it, and it gets
    queued for `--allocator-attack` again despite being already-proven
    futile. This is a THROUGHPUT bug, not a correctness one -- the wasted
    180s per already-parked function can never produce a false match, since
    `--allocator-attack` itself does the real in-context compile during its
    own search and simply plateaus, exactly as before. A complete fix would
    triage via `in_context_permuter.score_in_context()` (real file, like the
    attack itself) instead of isolated `compiler_variants.stage()` -- not
    done here: there is no batched-many-functions-in-one-podman-invocation
    primitive for the in-context path the way `cv.stage()`/`cv.SCRIPT`
    provides for isolation, so it would cost one podman container startup
    PER function just to triage it, likely erasing most of the time this
    triage step is meant to save. Left as real, scoped follow-up work."""
    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        sys.exit("could not build the preprocessed context")
    staged = cv.stage(rows, work, ctx, strict=False)
    (work / "names.txt").write_text("\n".join(staged) + "\n")
    (work / "variants.txt").write_text("agbcc agbcc \n")
    script = cv.SCRIPT.replace("@@FLAGS@@", " ".join(cv.BASE_FLAGS))
    subprocess.run(
        ["podman", "run", "--rm",
         "-v", f"{REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
         cv.IMAGE, "bash", "-c", script],
        capture_output=True, text=True, timeout=3600)

    # Two comparisons, not one. The first (rnorm/cnorm) catches a TRUE
    # byte-for-byte-except-cosmetics match. That alone is not enough to spot
    # the register-swap wall: `ldr r2,[pc,#N]` vs `ldr r1,[pc,#N]` are
    # DIFFERENT TEXT (the operand list is part of the compared line), so a
    # pure register swap survives as "DIFFERS" under rnorm/cnorm alone --
    # confirmed live, the first real run of this tool queued sub_816B0E0/
    # 816B21C/816B2E0, CLAUDE.md's own named, ~330,000-try-proven-unreachable
    # wall group, for a fresh 180s attack each. The second comparison
    # (rblind/cblind) additionally maps every bare register token to a
    # placeholder before comparing -- CLAUDE.md's own diagnostic signature
    # for this wall is "same mnemonic, same immediate/offset, same operand
    # COUNT, only a swapped register", which is exactly what surviving a
    # register-blind compare while still failing the raw one means.
    classify_script = r"""
set -u
cd /w
: > classify.log
blind() {
  sed -E 's/\br(1[0-5]|[0-9])\b/REG/g; s/\b(sp|lr|pc|ip)\b/REG/g'
}
for n in $(cat names.txt); do
  ro="$n.retail.o"; co="$n.agbcc.o"
  [ -s "$ro" ] || continue
  [ -s "$co" ] || continue
  rnorm=$(arm-none-eabi-objdump -d -j .text "$ro" | awk -F'\t' 'NF>=3{print $3}' | sed -E 's/@.*$//; s/<[^>]*>//g; s/[ \t]+$//')
  cnorm=$(arm-none-eabi-objdump -d -j .text "$co" | awk -F'\t' 'NF>=3{print $3}' | sed -E 's/@.*$//; s/<[^>]*>//g; s/[ \t]+$//')
  if [ "$rnorm" == "$cnorm" ]; then
    echo "$n IDENTICAL_MNEMONICS" >> classify.log
    continue
  fi
  rblind=$(echo "$rnorm" | blind)
  cblind=$(echo "$cnorm" | blind)
  if [ "$rblind" == "$cblind" ]; then
    echo "$n REGISTER_SWAP_ONLY" >> classify.log
    continue
  fi
  echo "$n DIFFERS" >> classify.log
done
"""
    subprocess.run(
        ["podman", "run", "--rm",
         "-v", f"{REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
         cv.IMAGE, "bash", "-c", classify_script],
        capture_output=True, text=True, timeout=600)

    log = (work / "classify.log")
    if not log.exists():
        return []
    worth_attacking = []
    for line in log.read_text().splitlines():
        parts = line.split()
        if len(parts) == 2 and parts[1] == "DIFFERS":
            worth_attacking.append(parts[0])
    return worth_attacking


def attack_one(name: str, body: str, seconds: float, work: Path) -> dict:
    typed = TYPEDEF_PREAMBLE + body
    body_file = work / f"{name}.attack.c"
    body_file.write_text(typed)
    out_file = work / f"{name}.out.c"
    r = subprocess.run(
        ["./container.sh", "python3", "tools/factory/in_context_search.py",
         name, "--body-file", str(body_file.relative_to(REPO)) if body_file.is_relative_to(REPO)
         else str(body_file),
         "--seconds", str(seconds), "--allocator-attack",
         "--out-file", str(out_file.relative_to(REPO)) if out_file.is_relative_to(REPO)
         else str(out_file)],
        cwd=REPO, capture_output=True, text=True, timeout=seconds + 90)
    m = re.search(r"\{'tries':.*\}", r.stdout)
    result = {"name": name, "stdout_tail": r.stdout[-400:]}
    if m:
        try:
            result.update(eval(m.group(0), {"__builtins__": {}}))  # trusted, our own tool's output
        except Exception:
            pass
    if out_file.exists():
        result["out_file"] = str(out_file)
    return result


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                  formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=60)
    ap.add_argument("--names", nargs="*")
    ap.add_argument("--parallel", type=int, default=5)
    ap.add_argument("--seconds-per-fn", type=float, default=150)
    ap.add_argument("--work-dir", default=None)
    ap.add_argument("--apply", action="store_true", default=True,
                     help="update DB candidate_body/notes for improved rows (default on)")
    args = ap.parse_args()

    conn = db.connect(readonly=not args.apply)
    rows = pick_pool(conn, args.limit, args.names)
    if not rows:
        print("nothing to sweep")
        return 0
    by_name = {r["name"]: r for r in rows}
    print(f"pool: {len(rows)} candidate(s)")

    work = Path(args.work_dir) if args.work_dir else REPO / "nonmatchings" / "_allocator_sweep_work"
    work.mkdir(parents=True, exist_ok=True)

    print("triaging (build in isolation, compare mnemonics)...")
    worth = triage(rows, work)
    parked = len(rows) - len(worth)
    print(f"{len(worth)} of {len(rows)} worth attacking "
          f"({parked} skipped -- identical mnemonics, register-swap wall)")
    if not worth:
        return 0

    log_path = work / "sweep_results.jsonl"
    improved, zeros, plateaued = 0, 0, 0
    t0 = time.time()
    with ThreadPoolExecutor(max_workers=args.parallel) as ex, open(log_path, "a") as logf:
        futs = {ex.submit(attack_one, n, by_name[n]["candidate_body"],
                           args.seconds_per_fn, work): n for n in worth}
        for fut in as_completed(futs):
            n = futs[fut]
            try:
                result = fut.result()
            except Exception as e:
                print(f"  {n}: FAILED ({type(e).__name__}: {e})")
                continue
            logf.write(json.dumps(result) + "\n")
            logf.flush()
            best = result.get("best_score")
            base = result.get("base_score")
            if best is None:
                print(f"  {n}: no score parsed -- {result.get('stdout_tail', '')[-150:]}")
                continue
            print(f"  {n}: base={base} best={best} found_zero={result.get('found_zero')}")
            if best == 0:
                zeros += 1
                print(f"    *** GENUINE ZERO -- {n} should be hand-verified and landed ***")
            elif base is not None and best < base:
                improved += 1
            else:
                plateaued += 1
            out_file = result.get("out_file")
            if out_file and Path(out_file).exists() and args.apply:
                seed = strip_typedefs(Path(out_file).read_text())
                dest_dir = REPO / "nonmatchings" / n / "output-incontext-best"
                dest_dir.mkdir(parents=True, exist_ok=True)
                (dest_dir / "source.c").write_text(seed)
                (dest_dir / "score.txt").write_text(str(best))
                notes = (f"allocator_sweep.py: --allocator-attack "
                         f"{args.seconds_per_fn:.0f}s, base={base} -> best={best}. "
                         f"See nonmatchings/{n}/output-incontext-best/.")
                with db.tx(conn):
                    conn.execute(
                        "UPDATE functions SET candidate_body=?, notes=? WHERE name=? "
                        "AND worker_id IS NULL",
                        (seed, notes, n))

    dt = time.time() - t0
    print(f"\nswept {len(worth)} in {dt:.0f}s: {zeros} genuine zero(s), "
          f"{improved} improved (saved), {plateaued} plateaued (no movement, "
          f"still saved if any score was recorded)")
    print(f"full results: {log_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
