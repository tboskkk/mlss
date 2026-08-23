#!/usr/bin/env python3
"""Does Klonoa's highest-value agbcc lever pay on THIS corpus? Measure first.

THE LEVER. `docs/learnings/agbcc-source-shape-levers.md` in the Klonoa: Empire
of Dreams decomp puts this first, ahead of everything else they measured:

    extern const u8 gBgLayerLookup[][2][2];     /* a symbol_ref */
    ((const u8 (*)[2][2])0x08057ACC)            /* a CONST_INT -- same address */

Numerically identical, and agbcc compiles them differently: with a symbol_ref
it keeps the address live in a callee-saved register; with a CONST_INT it
rematerialises or strength-reduces it. Worth 20-29 points on four of their
functions, and the whole match on two.

WHY IT IS NOT SIMPLY TRUE HERE. CLAUDE.md T.10: `tools/symbols/rom.txt` holds
56 symbols, while unmatched seeds reference **1,863 raw `0x08xxxxxx` constants
across 684 distinct addresses**, only 3.2% of which have a name. So the lever
cannot be applied until those addresses are named -- and naming 684 addresses
is only worth doing if the lever actually pays on our code, which is a
different corpus with a different compiler build and different seed shapes.

Three permuter passes have already been killed this session by counting the
corpus before building them (bitfields 0/3,124, arrays 1/3,124, this at 3.2%).
This tool is the same discipline applied one level deeper: measure the VALUE
before building the pipeline.

MINTING IS SAFE BY CONSTRUCTION, which is the non-obvious part. We do not need
to know where the underlying data object starts or how big it is. We need one
thing only -- that the symbol resolves to exactly the address the code already
loads -- and that is true by definition, because we take the address FROM the
load. 81% of these point into the 14MB `rodata081E2764` blob that has never
been split, and that does not matter.

The type comes free as well: m2c already emits the access width at each site
(`*(u8 *)`, `*(u16 *)`, `*(s32 *)`), so `extern u8 X[];` versus
`extern s32 X[];` is read off the seed rather than guessed.

THE MEASUREMENT TRAP THIS AVOIDS. Retail bakes the address into the literal
pool as a plain word with NO relocation. An `extern` emits `.word symbol` plus
an `R_ARM_ABS32` relocation, so the object's bytes there are ZERO and the
relocation carries the address. A naive comparison therefore calls the two
different even when the LINKED bytes are identical -- it would report the lever
as harmful in every single case.

So relocations are resolved by hand before comparing, the same way
`tools/decode_jumptable.py:text_bytes` does, which is sound here precisely
because we chose each symbol's address.

    python3 tools/factory/extern_lever.py --limit 30
    python3 tools/factory/extern_lever.py --limit 30 --keep

Read-only: the repo is mounted read-only in the container and nothing is
written outside a scratch dir, so this needs no repo lock and is safe against
a live factory. It reports; it never mints into tools/symbols/rom.txt.
"""
from __future__ import annotations

import argparse
import os
import re
import shutil
import struct
import subprocess
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

ADDR_RE = re.compile(r"0x0[89A-Fa-f][0-9A-Fa-f]{6}")

# `*(u8 *)(0x08123456 ...` -- the cast immediately governing the constant.
# Falls back to u8 (the least assuming element type) when the site is not a
# plain cast-deref; the point is the symbol_ref/CONST_INT distinction, not the
# element type, but a wrong width would change codegen so it is read where it
# can be read.
WIDTH_RE = re.compile(r"\*\(\s*(u8|s8|u16|s16|u32|s32)\s*\*\s*\)\s*\(?\s*(0x0[89A-Fa-f][0-9A-Fa-f]{6})")

NAME_FOR = {"u8": "byte", "s8": "sbyte", "u16": "word", "s16": "sword",
            "u32": "dword", "s32": "sdword"}


def mint(body: str) -> tuple[str, dict[str, int]]:
    """-> (rewritten body, {symbol: address}). Empty dict if nothing applied."""
    widths: dict[str, str] = {}
    for w, a in WIDTH_RE.findall(body):
        widths.setdefault(a, w)

    addrs = sorted(set(ADDR_RE.findall(body)))
    if not addrs:
        return body, {}

    syms: dict[str, int] = {}
    decl_lines = []
    out = body
    for a in addrs:
        w = widths.get(a, "u8")
        name = f"{NAME_FOR[w]}_{a[2:].upper()}"
        syms[name] = int(a, 16)
        decl_lines.append(f"extern {w} {name}[];")
        # Replace the literal TOKEN only. An earlier version also swallowed a
        # neighbouring parenthesis, which silently produced unbalanced code
        # like `*(u16 *)((u32)word_X)+ 4)` -- it still "compiled" often enough
        # to look like the lever failing rather than the rewrite being broken.
        # The whole point is a symbol_ref where there was a CONST_INT.
        out = re.sub(rf"\b{a}\b", f"((u32){name})", out)

    return "\n".join(decl_lines) + "\n" + out, syms


def resolve(obj_bin: Path, rel_txt: Path, syms: dict[str, int]) -> bytes | None:
    """Patch R_ARM_ABS32 relocations in place using the minted addresses.

    Without this the comparison is meaningless -- see the module docstring.
    Only ABS32 is handled; anything else (a `bl` to an unrelated callee) is
    left alone, and appears identically on both sides.
    """
    if not obj_bin.exists():
        return None
    data = bytearray(obj_bin.read_bytes())
    if rel_txt.exists():
        for off, kind, sym in re.findall(
                r"^([0-9a-f]+)\s+(\S+)\s+(\S+)", rel_txt.read_text(), re.M):
            if kind != "R_ARM_ABS32":
                continue
            base = sym.split("+")[0]
            if base not in syms:
                continue
            o = int(off, 16)
            if o + 4 <= len(data):
                data[o:o + 4] = struct.pack("<I", syms[base])
    return bytes(data)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=30)
    ap.add_argument("--keep", action="store_true")
    args = ap.parse_args()

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=True)
    rows = conn.execute(
        "SELECT name, candidate_body, best_score, lines FROM functions "
        "WHERE state IN ('tier2_ready','stalled','needs_human') "
        "AND candidate_body IS NOT NULL "
        "AND candidate_body NOT LIKE '%M2C_ERROR%' "
        "AND candidate_body GLOB '*0x08*' "
        "ORDER BY COALESCE(lines, 9999) ASC LIMIT ?", (args.limit,)).fetchall()
    if not rows:
        print("no candidates carry a ROM address constant")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"externlever.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    try:
        allsyms: dict[str, dict[str, int]] = {}
        staged = []
        # Two variants per function: the stored body, and the minted rewrite.
        pairs = []
        for r in rows:
            base, syms = mint(r["candidate_body"])
            if not syms:
                continue
            pairs.append((r, base, syms))
        if not pairs:
            print("nothing to rewrite")
            return 0

        class Row(dict):
            def __getitem__(self, k):
                return dict.__getitem__(self, k)

        staged_rows = []
        for r, newbody, syms in pairs:
            staged_rows.append(Row(name=r["name"], candidate_body=r["candidate_body"]))
            staged_rows.append(Row(name=r["name"] + "__EXT", candidate_body=newbody))
            allsyms[r["name"] + "__EXT"] = syms

        # Stage the ORIGINALS through cv.stage (it needs a real fragment on
        # disk), then write each __EXT twin by hand: it reuses its original's
        # retail fragment and carries the minted body. Letting cv.stage try the
        # twins silently dropped them -- no asm/nonmatching/<name>__EXT.s
        # exists, so it skipped them and never wrote their .body.c, and every
        # twin then reported "does not compile". That is a broken instrument
        # reporting a verdict, which is exactly what this tool exists to avoid.
        originals = [x for x in staged_rows if not x["name"].endswith("__EXT")]
        cv.stage(originals, work, ctx)
        for r, newbody, _s in pairs:
            src = work / f"{r['name']}.frag.s"
            if not src.exists():
                continue
            shutil.copy(src, work / f"{r['name']}__EXT.frag.s")
            (work / f"{r['name']}__EXT.body.c").write_text(newbody)
        staged = [n for n in
                  [x["name"] for x in staged_rows]
                  if (work / f"{n}.frag.s").exists() and (work / f"{n}.body.c").exists()]
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        (work / "variants.txt").write_text("agbcc agbcc \n")
        print(f"comparing {len(pairs)} function(s), stored body vs minted-extern rewrite")

        script = cv.SCRIPT.replace("FLAGS", " ".join(cv.BASE_FLAGS))
        subprocess.run(["podman", "run", "--rm",
                        "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
                        cv.IMAGE, "bash", "-c", script],
                       capture_output=True, text=True, timeout=3600)

        def dist(n):
            cand = resolve(work / f"{n}.agbcc.bin", work / f"{n}.agbcc.rel",
                           allsyms.get(n, {}))
            ret = work / f"{n}.retail.bin"
            if cand is None or not ret.exists():
                return None
            b = ret.read_bytes()
            m = min(len(cand), len(b))
            return sum(1 for i in range(m) if cand[i] != b[i]) + abs(len(cand) - len(b))

        verdict = Counter()
        rowsout = []
        for r, _b, _s in pairs:
            a, e = dist(r["name"]), dist(r["name"] + "__EXT")
            if a is None and e is None:
                verdict["neither compiles"] += 1
                continue
            if e is None:
                verdict["extern rewrite does not compile"] += 1
                continue
            if a is None:
                verdict["only the extern form compiles"] += 1
                rowsout.append((r["name"], a, e))
                continue
            if e < a:
                verdict["extern CLOSER"] += 1
            elif e > a:
                verdict["extern worse"] += 1
            else:
                verdict["identical"] += 1
            rowsout.append((r["name"], a, e))

        measured = sum(v for k, v in verdict.items() if k != "neither compiles")
        if not measured:
            print("\nNOTHING WAS MEASURED -- no verdict. Re-run with --keep and read "
                  "*.cc.err in the scratch dir.")
            return 2

        # Only the rows where the lever CHANGED something. Printing all of them
        # buried the handful that matter under a wall of "same".
        diff_rows = [x for x in rowsout if x[1] != x[2]]
        print(f"\n{'function':<20}{'stored':>9}{'extern':>9}   verdict"
              f"   ({len(diff_rows)} of {len(rowsout)} changed)")
        for n, a, e in diff_rows[:40]:
            tag = "same" if a == e else ("BETTER" if (a is not None and e < a) else "worse")
            print(f"  {n:<18}{str(a):>9}{str(e):>9}   {tag}")
        print()
        for k, v in verdict.most_common():
            print(f"  {v:>4}  {k}")
        better = verdict["extern CLOSER"]
        print(f"\nlever helps on {better}/{measured} measured "
              f"({100 * better / max(measured, 1):.0f}%)")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
