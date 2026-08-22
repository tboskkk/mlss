#!/usr/bin/env python3
"""Cross-check pointer table ENTRIES (not just table start addresses)
against the confirmed compressed-block address list.

docs/formats/README.md flags this as the promising, not-yet-tried version
of the pointer-table/compressed-block cross-check: `find_pointer_tables.py`
already checked whether any table's *own start address* coincides with a
compressed block's start (it doesn't, checked, genuinely empty) - but never
checked the individual *values* a table's entries point to. A table of
pointers to per-level/per-character compressed assets is a very ordinary
GBA data layout, and if it's here, this is how it shows up: entry values
landing exactly on confirmed compressed-block start addresses.

Requires `assets/manifest.json` to exist first: ./container.sh tools/extract_assets.py

    ./container.sh tools/cross_check_pointer_targets.py [--start ADDR] [--end ADDR]
"""
from __future__ import annotations

import argparse
import json
import struct
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
from find_pointer_tables import DEFAULT_START, DEFAULT_END, ROM_BASE, ROM_END, looks_like_pointer, code_literal_pool_refs

BASEROM = splitlib.ROOT / "baserom.gba"
MANIFEST = splitlib.ROOT / "assets" / "manifest.json"


def find_tables(rom: bytes, start: int, end: int, min_entries: int):
    lo, hi = start - ROM_BASE, end - ROM_BASE
    words = []
    off = lo
    while off + 4 <= hi:
        (word,) = struct.unpack_from("<I", rom, off)
        if looks_like_pointer(word):
            words.append((ROM_BASE + off, word))
        off += 4

    tables = []
    run = [words[0]] if words else []
    for addr, val in words[1:]:
        if addr - run[-1][0] == 4:
            run.append((addr, val))
        else:
            if len(run) >= min_entries:
                tables.append(run)
            run = [(addr, val)]
    if len(run) >= min_entries:
        tables.append(run)
    return tables


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=DEFAULT_START)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=DEFAULT_END)
    ap.add_argument("--min-entries", type=int, default=4)
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    if not MANIFEST.exists():
        raise SystemExit(f"{MANIFEST} not found. Run ./container.sh tools/extract_assets.py first.")

    rom = BASEROM.read_bytes()
    blocks = json.loads(MANIFEST.read_text())
    block_by_addr = {int(b["address"], 16): b for b in blocks}
    print(f"{len(block_by_addr)} confirmed compressed blocks loaded from {MANIFEST.relative_to(splitlib.ROOT)}")

    tables = find_tables(rom, args.start, args.end, args.min_entries)
    print(f"{len(tables)} candidate pointer table(s) in 0x{args.start:08X}-0x{args.end:08X}\n")

    refs = code_literal_pool_refs()

    hits = []
    for run in tables:
        table_start = run[0][0]
        for i, (entry_addr, target) in enumerate(run):
            if target in block_by_addr:
                hits.append((table_start, entry_addr, i, target, run))

    if not hits:
        print("0 hits: no pointer-table entry (of those scanned) points exactly at a confirmed "
              "compressed-block start address. Same negative result as the table-start check in "
              "find_pointer_tables.py, extended to entry level.")
    else:
        print(f"{len(hits)} hit(s) - a table entry points exactly at a confirmed compressed block's start:\n")
        for table_start, entry_addr, idx, target, run in hits:
            hit = refs.get(table_start)
            conf = f"  <- table confirmed by {hit[0][0]}:_{hit[0][1]:08X}" if hit else "  (table unconfirmed by code so far)"
            block = block_by_addr[target]
            print(f"table 0x{table_start:08X} ({len(run)} entries){conf}")
            print(f"    entry[{idx}] @ 0x{entry_addr:08X} -> 0x{target:08X}  "
                  f"= {block['type']} block, {block['compressed_size']}B -> {block['decompressed_size']}B "
                  f"({block['raw_file']})")

    # Second hypothesis, prompted by a real precedent already confirmed in this repo:
    # SolidityPointerTable @ 0x088E08E0 stores RELATIVE offsets added to a fixed base, not
    # absolute pointers (see docs/formats/README.md). A table of small relative offsets would
    # never have passed `looks_like_pointer` and so is invisible to the scan above entirely --
    # this pass reads EVERY 4-byte-aligned word in range, unfiltered, and checks it as a
    # self-relative offset (word + its own address). Independent of the table-run grouping above.
    print("\n--- relative-offset hypothesis: raw word (unfiltered, every 4-byte-aligned slot) "
          "interpreted as an offset added to its own address --- (speculative: a coincidental hit "
          "is expected to be rare but not impossible by chance alone; treat any hit as a lead to "
          "inspect by hand, not a confirmation)")
    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    rel_hits = []
    off = lo
    while off + 4 <= hi:
        (raw,) = struct.unpack_from("<I", rom, off)
        addr = ROM_BASE + off
        target = (addr + raw) & 0xFFFFFFFF
        if target in block_by_addr:
            rel_hits.append((addr, raw, target))
        off += 4
    if not rel_hits:
        print("0 hits.")
    else:
        print(f"{len(rel_hits)} hit(s):\n")
        for addr, raw, target in rel_hits:
            block = block_by_addr[target]
            print(f"word @ 0x{addr:08X} = 0x{raw:08X}  (+own_addr) -> 0x{target:08X} = "
                  f"{block['type']} block ({block['raw_file']})")


if __name__ == "__main__":
    main()
