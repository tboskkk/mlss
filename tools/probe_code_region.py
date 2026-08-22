#!/usr/bin/env python3
"""Probe a raw, undisassembled byte range to tell real (missed) code from
data, and ARM from Thumb -- by actually disassembling it both ways and
measuring how often each mode produces invalid instructions, rather than
eyeballing a sample. Real code from a working compiler disassembles at
~0% invalid; misaligned code or genuine data reliably does not, and the
gap is usually dramatic (single digits vs. tens of percent) once you check
a big enough window.

Grew out of manually investigating whether asm/text08000000.s's raw
~94.5KB preamble (see CLAUDE.md) was really crt0+m4a or something else --
this generalizes that by-hand process (dump bytes, objdump both modes,
bucket by address, eyeball the percentages) into one reusable pass so the
same check is cheap to run against any other still-raw region.

    ./container.sh tools/probe_code_region.py --start ADDR --end ADDR [--window N]

Requires the container (uses arm-none-eabi-objdump from devkitARM).
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000
SCRATCH = splitlib.ROOT / "build" / "probe_scratch"

LINE_RE = re.compile(r"\s*([0-9a-f]+):\t")


def disassemble(data: bytes, addr: int, thumb: bool) -> str:
    SCRATCH.mkdir(parents=True, exist_ok=True)
    bin_path = SCRATCH / "chunk.bin"
    bin_path.write_bytes(data)
    cmd = [
        "arm-none-eabi-objdump", "-D", "-b", "binary", "-m", "arm",
        f"--adjust-vma={addr:#x}",
    ]
    if thumb:
        cmd += ["-M", "force-thumb"]
    cmd.append(str(bin_path.relative_to(splitlib.ROOT)))
    r = subprocess.run(cmd, cwd=splitlib.ROOT, capture_output=True, text=True)
    return r.stdout + r.stderr


def bucket_density(disasm: str, window: int):
    """{bucket_addr: (total, bad)}"""
    buckets: dict[int, list[int]] = {}
    for line in disasm.splitlines():
        m = LINE_RE.match(line)
        if not m:
            continue
        addr = int(m.group(1), 16)
        bucket = addr - (addr % window)
        is_bad = "UNDEFINED" in line or "(bad)" in line
        d = buckets.setdefault(bucket, [0, 0])
        d[0] += 1
        if is_bad:
            d[1] += 1
    return buckets


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", required=True, type=lambda s: int(s, 0))
    ap.add_argument("--end", required=True, type=lambda s: int(s, 0))
    ap.add_argument("--window", type=lambda s: int(s, 0), default=0x1000, help="bucket size in bytes (default 4KB)")
    ap.add_argument("--threshold", type=float, default=5.0, help="bad%% above this flags a window as HIGH")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()
    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    data = rom[lo:hi]

    print(f"Probing 0x{args.start:08X}-0x{args.end:08X} ({len(data):,} bytes), window=0x{args.window:X}\n")

    for mode_name, thumb in (("ARM", False), ("THUMB", True)):
        disasm = disassemble(data, args.start, thumb)
        buckets = bucket_density(disasm, args.window)
        total = sum(t for t, _ in buckets.values())
        bad = sum(b for _, b in buckets.values())
        pct = 100 * bad / total if total else 0
        print(f"=== {mode_name}: {total} instr, {bad} bad ({pct:.1f}% overall) ===")
        for b in sorted(buckets):
            t, bd = buckets[b]
            p = 100 * bd / t if t else 0
            marker = "  <-- HIGH" if p > args.threshold else ""
            print(f"  0x{b:08X}  {t:>4} instr, {bd:>4} bad ({p:5.1f}%){marker}")
        print()

    print("Reading: real code in the correct mode should sit near 0% bad, consistently, not just on\n"
          "average -- a mode/region with scattered HIGH windows is more likely misaligned code or\n"
          "real data than a genuine match. Compare ARM vs THUMB overall %% first; a big gap between\n"
          "them for the same bytes is a strong signal for whichever mode is lower.\n")
    print("!! THE THUMB NUMBER CANNOT DISTINGUISH CODE FROM DATA. Measured directly: known\n"
          "   rodata (0x081E2764) scores 0.0% bad as THUMB -- better than regions that are\n"
          "   definitely not code. Thumb's 16-bit encoding space is dense enough that almost\n"
          "   any byte decodes to something valid, so 'THUMB beats ARM' is close to\n"
          "   meaningless on its own; ARM's sparser encoding makes ITS number worth something.\n"
          "   A low Thumb %% is necessary but nowhere near sufficient. To actually tell code\n"
          "   from data, measure FUNCTION PROLOGUE DENSITY instead -- count `push {...,lr}`\n"
          "   (0xB5xx) / `pop {...,pc}` (0xBDxx) halfwords per KB. Real Thumb code in this ROM\n"
          "   runs 3.4-6.9 per KB; rodata is 0.0; a region well under 1 is data no matter how\n"
          "   cleanly it disassembles. This tool once 'confirmed' 84KB of data as the m4a\n"
          "   sound driver on the strength of its Thumb number alone -- see CLAUDE.md.")


if __name__ == "__main__":
    main()
