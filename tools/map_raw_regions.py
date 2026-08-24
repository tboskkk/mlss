#!/usr/bin/env python3
"""Map every contiguous run of raw, un-disassembled `.byte` data still
remaining in .text across asm/*.s, with exact addresses.

    ./container.sh tools/map_raw_regions.py [--min-size N]

Luvdis (the original disassembler used on this project) emits `.byte`
sequences wherever it couldn't identify code - either genuine data sitting
between functions, or code it never reached (a jump target it didn't trace,
an ARM-mode routine, a function only called through a pointer table).
Nothing downstream currently distinguishes those two cases; that's what
Phase 3 is for. This tool just finds the boundaries precisely, from an
actual per-line address walk (not the whole-file byte-count average used
before this tool existed), as a starting point for classifying them.

Reads asm/*.s directly and tracks address by decoding each line's size
(thumb_func_start/arm_func_start switch mode and 4-byte-align, matching
asm/macros.inc's actual .macro bodies) rather than trusting any prior
build - this has to work even on files with zero real instructions yet.

A bare Luvdis-style label (`_0XXXXXXX:`, or any other plain label) does NOT
close a run - see the comment on CLASSIFIED_DATA_LABEL_RE below for the one
exception, and why a generic label still isn't enough on its own even then.
"""
from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

FUNC_START_RE = re.compile(
    r"^\s*(thumb_func_start|arm_func_start|non_word_aligned_thumb_func_start)\s+(\S+)\s*$"
)
LABEL_RE = re.compile(r"^(\w+):")

# A label DOES close a run when it uses one of this project's IDA-style
# classified-data prefixes (mint_data_symbols.py's byte_/word_/dword_
# convention, plus unk_ for "real structure, content not yet interpreted"
# and custom_lz_ for a proven compressed-stream boundary - see
# tools/gba_compress.py). Unlike a bare Luvdis label (a jump/reference
# target Luvdis found automatically, carrying no claim about what's there),
# one of these prefixes is only ever placed by a human/tool that actually
# determined a real boundary exists at that address - see
# docs/formats/README.md's "Custom sprite compression" section for the
# 84KB-blob pass that first needed this. Luvdis's own emitted labels are
# always `_0XXXXXXX:` and never collide with these prefixes.
CLASSIFIED_DATA_LABEL_RE = re.compile(
    r"^(?:byte|word|dword|off|unk|custom_lz)_[0-9A-Fa-f]+:"
)
# The label alone only proves a boundary exists, not how much of what
# follows it belongs to that classified item - a gap or the next raw
# stretch can sit right after with no label of its own. So the label's
# OWN comment must also carry `len=N` (bytes) for the exemption to apply;
# without it this is treated as an ordinary label (conservative default,
# not a guess - CLAUDE.md's "a tool must refuse to answer when it cannot").
CLASSIFIED_DATA_LEN_RE = re.compile(r"\blen=(\d+)\b")
BYTE_RE = re.compile(r"^\s*\.byte\s+(.*)$")
WORD_RE = re.compile(r"^\s*\.(2byte|4byte|short|hword|word|long)\s+(.*)$")
DIRECTIVE_SKIP_RE = re.compile(r"^\s*\.(include|syntax|text|section|global)\b")

WORD_SIZES = {"2byte": 2, "short": 2, "hword": 2, "4byte": 4, "word": 4, "long": 4}

THUMB_4BYTE_MNEMONICS = {"bl", "blx"}


@dataclass
class RawRun:
    obj: str
    start: int
    end: int  # exclusive

    @property
    def size(self) -> int:
        return self.end - self.start


def scan_file(path: Path, base_addr: int, obj_name: str) -> list:
    runs = []
    addr = base_addr
    mode = "thumb"
    run_start = None
    classified_until = None  # addr below which .byte lines are NOT raw

    def close_run(end_addr: int):
        nonlocal run_start
        if run_start is not None and end_addr > run_start:
            runs.append(RawRun(obj_name, run_start, end_addr))
        run_start = None

    for raw_line in path.read_text().splitlines():
        line = raw_line.split("@", 1)[0].rstrip()
        if not line.strip():
            continue

        m = FUNC_START_RE.match(line)
        if m:
            close_run(addr)
            if m.group(1) != "non_word_aligned_thumb_func_start":
                addr = (addr + 3) & ~3  # .align 2, 0 (4-byte)
            mode = "arm" if m.group(1) == "arm_func_start" else "thumb"
            continue

        if DIRECTIVE_SKIP_RE.match(line):
            continue

        if CLASSIFIED_DATA_LABEL_RE.match(line):
            close_run(addr)
            lm = CLASSIFIED_DATA_LEN_RE.search(raw_line)
            classified_until = addr + int(lm.group(1)) if lm else None
            continue

        if LABEL_RE.match(line):
            # A plain label doesn't by itself mean disassembled code - Luvdis
            # labels data reference targets inside raw blobs too. Don't close
            # the run; just strip the label and keep scanning the rest of
            # the line (labels here are always alone on their line in this
            # codebase, so there's nothing left after stripping).
            continue

        bm = BYTE_RE.match(line)
        if bm:
            n = bm.group(1).count(",") + 1
            if classified_until is not None and addr < classified_until:
                # Inside a labeled, length-declared classified span - not raw,
                # whether or not this exact line's bytes reach its end (a
                # classified item's own body is never itself raw data, and a
                # length mismatch would be a real bug worth its own check,
                # not silently absorbed here).
                addr += n
                if addr >= classified_until:
                    classified_until = None
                continue
            if run_start is None:
                run_start = addr
            addr += n
            continue

        wm = WORD_RE.match(line)
        if wm:
            # Literal pools / jump tables inside already-disassembled code.
            # Never observed inside a genuine raw dump in this project (verified
            # by spot-checking) - treat as closing any run, like an instruction.
            close_run(addr)
            addr += WORD_SIZES[wm.group(1)] * (wm.group(2).count(",") + 1)
            continue

        # A real instruction.
        close_run(addr)
        mnem = line.split()[0]
        addr += 4 if (mode == "arm" or mnem in THUMB_4BYTE_MNEMONICS) else 2

    close_run(addr)
    return runs


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--min-size", type=int, default=1, help="only show runs >= this many bytes")
    ap.add_argument("--csv", action="store_true", help="machine-readable output: obj,start,end,size")
    args = ap.parse_args()

    manifest = splitlib.load_manifest()
    all_runs = []
    for group in manifest.groups:
        for entry in group.entries:
            if not entry.is_asm or entry.section != "text":
                continue
            base = splitlib.file_base_address(entry)
            if base is None:
                continue
            all_runs += scan_file(entry.source_path, base, entry.obj)

    all_runs = [r for r in all_runs if r.size >= args.min_size]
    total = sum(r.size for r in all_runs)

    if args.csv:
        print("obj,start,end,size")
        for r in all_runs:
            print(f"{r.obj},0x{r.start:08X},0x{r.end:08X},{r.size}")
        return

    print(f"{'object':<24}{'start':>12}{'end':>12}{'size':>10}")
    for r in all_runs:
        print(f"{r.obj:<24}0x{r.start:08X}  0x{r.end:08X}  {r.size:>8,}")
    print(f"\n{len(all_runs)} raw regions, {total:,} bytes total (>= {args.min_size}B each)")


if __name__ == "__main__":
    main()
