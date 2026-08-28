#!/usr/bin/env python3
"""Compare branch-instruction COUNT (b/beq/bne/bgt/blt/bge/ble/bhi/bls/
bcc/bcs/bpl/bmi/cbz/cbnz) between each candidate's compiled object and
its retail fragment, for every row in the escalation-exhausted near-miss
pool (objdiff_score >= 90, escalation_count >= 10 -- tier2.py's new
third tier). A candidate with meaningfully FEWER branches than retail is
a lead for m2c control-flow collapse (the sub_808F2A8/sub_802F938 class
found 2026-08-27: a real multi-way cascade compiled down to one
comparison, or an arity guess masking real logic) rather than a
register-allocation or stack-pressure gap (the sub_81458C8/sub_8142D6C
class, which has the SAME branch count as retail almost by definition --
it's the same code, just spilled differently).

NOT a verdict by itself -- a branch deficit is a LEAD, the same way
CLAUDE.md treats every other single-signal classifier in this project.
Confirm by reading the disassembly before assuming a specific function's
gap is control-flow collapse and not, say, a genuinely simpler candidate
that happens to be wrong in an unrelated way.

    python3 tools/factory/branch_deficit_scan.py
    python3 tools/factory/branch_deficit_scan.py --min-deficit 3
"""
from __future__ import annotations

import argparse
import re
import sqlite3
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import in_context_permuter as icp  # noqa: E402

REPO = icp.REPO
BRANCH_RE = re.compile(
    r"^\s*[0-9a-f]+:\s+[0-9a-f ]+\s+"
    r"(b|beq|bne|bgt|blt|bge|ble|bhi|bls|bcc|bcs|bpl|bmi|cbz|cbnz)\.?n?\s"
)


def count_branches(obj: Path, symbol: str) -> int | None:
    r = subprocess.run(["arm-none-eabi-objdump", "-d", f"--disassemble={symbol}", str(obj)],
                        capture_output=True, text=True)
    if r.returncode != 0:
        return None
    return sum(1 for line in r.stdout.splitlines() if BRANCH_RE.match(line))


def scan_one(name: str, body: str, work: Path):
    """(cand_branches, retail_branches) or None if either side fails to build."""
    try:
        c_path = icp.splice_in_memory(name, body, work)
    except SystemExit:
        return None
    obj = icp.compile_tu(c_path, work, "x")
    if obj is None:
        return None
    cand_n = count_branches(obj, name)

    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.is_file():
        frag = REPO / "asm" / f"{name}.s"
    if not frag.is_file():
        return None
    frag_text = frag.read_text()
    if not frag_text.lstrip().startswith(".syntax"):
        frag_text = f"\t.syntax unified\n\t.text\n\n\tthumb_func_start {name}\n{name}:\n" + frag_text
    retail_s = work / "retail_scan.s"
    retail_s.write_text((REPO / "asm" / "macros.inc").read_text() + "\n" + frag_text)
    retail_o = work / "retail_scan.o"
    r = subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-mthumb-interwork",
                         "-I", str(REPO), str(retail_s), "-o", str(retail_o)],
                        capture_output=True, text=True)
    if r.returncode != 0:
        return None
    retail_n = count_branches(retail_o, name)
    if cand_n is None or retail_n is None:
        return None
    return cand_n, retail_n


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--min-deficit", type=int, default=2,
                     help="report rows where retail has at least this many more branches")
    ap.add_argument("--limit", type=int, default=0, help="0 = no limit")
    args = ap.parse_args()

    conn = sqlite3.connect(f"file:{REPO}/.claude/factory/state.db?mode=ro", uri=True)
    conn.row_factory = sqlite3.Row
    rows = conn.execute(
        "SELECT name, candidate_body FROM functions "
        "WHERE objdiff_score >= 90 AND escalation_count >= 10 "
        "AND state IN ('tier2_ready','stalled') AND candidate_body IS NOT NULL"
    ).fetchall()
    if args.limit:
        rows = rows[: args.limit]
    print(f"scanning {len(rows)} exhausted near-miss row(s)...")

    work = REPO / ".scratch_branchscan"
    work.mkdir(exist_ok=True)
    results = []
    build_failures = 0
    for i, row in enumerate(rows, 1):
        r = scan_one(row["name"], row["candidate_body"], work)
        if r is None:
            build_failures += 1
            continue
        cand_n, retail_n = r
        deficit = retail_n - cand_n
        results.append((row["name"], cand_n, retail_n, deficit))
        if i % 20 == 0:
            print(f"  ...{i}/{len(rows)}", file=sys.stderr)

    import shutil
    shutil.rmtree(work, ignore_errors=True)

    results.sort(key=lambda x: -x[3])
    deficit_rows = [r for r in results if r[3] >= args.min_deficit]
    surplus_rows = [r for r in results if r[3] < 0]

    print(f"\nscored {len(results)}/{len(rows)} ({build_failures} failed to build either side)")
    print(f"\n{len(deficit_rows)} row(s) with candidate branches <= retail - {args.min_deficit} "
          f"(control-flow-collapse LEAD):")
    print(f"{'name':<20}{'cand':>6}{'retail':>8}{'deficit':>9}")
    for name, c, r, d in deficit_rows:
        print(f"{name:<20}{c:>6}{r:>8}{d:>9}")

    print(f"\n{len(surplus_rows)} row(s) with MORE branches than retail (different lead, "
          f"e.g. an extra guard the real code doesn't have):")
    for name, c, r, d in surplus_rows[:10]:
        print(f"  {name:<20} cand={c} retail={r}")

    same = len(results) - len(deficit_rows) - len(surplus_rows)
    print(f"\n{same} row(s) with branch count matching within {args.min_deficit - 1} -- "
          f"NOT control-flow collapse, consistent with the register/stack-pressure class instead.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
