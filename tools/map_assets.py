#!/usr/bin/env python3
"""Merge every asset-discovery pass into one coverage map of the ROM, and
report what's still unclassified - the actual point of Phase 4: know what's
*left* before extracting more of it.

    ./container.sh tools/map_assets.py [--top N]

Two realms, handled differently:

- **CODE realm** (`0x08000000`-`0x081DD790`): reuses `map_raw_regions.py`'s
  per-line address walk of every `asm/*.s` "code" group file. A raw byte run
  here is Phase 3's territory (missed code vs. genuine inline data - see
  CLAUDE.md), not Phase 4's.
- **RODATA realm** (`0x081DD790`-`0x08F50000`, ~14MB): the actual point of
  this tool. Merges, as real byte intervals:
    - `assets/manifest.json`'s 75 confirmed compressed blocks (exact sizes)
    - every candidate pointer table found by the same scan
      `find_pointer_tables.py` runs (`tools/cross_check_pointer_targets.py`'s
      `find_tables()`, confirmed and unconfirmed alike - a run of 4+
      consecutive plausible-address words is real *structure* worth marking
      even before it has a code cross-reference)
    - every candidate text region `find_text_strings.py` finds
    - the room-properties/solidity/coldef chain and the Game Boy Player
      logo block, using their real declared sizes where `include/common.h`
      has them (`dword_81DD9F4[16384]` etc.) and documented per-room
      strides otherwise (see docs/formats/README.md)
    - every other already-named symbol in `tools/symbols/rom.txt` that
      falls in this realm, claimed for up to 4096 bytes toward its next
      named neighbor (a cheap but honest heuristic for "this address has a
      real name, so the byte range right around it probably isn't mystery
      data" - NOT a real size, see the print at the end)

  What's left after merging is unclassified - the more useful the map, the
  more efficiently the actual next extraction target can be chosen instead
  of guessing.

Writes `assets/rom_map.json` (gitignored, like every other `assets/`
output - regenerate locally) with the full interval list for later tooling
to consume; prints a human summary.
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
from gba_compress import scan as scan_compressed  # noqa: F401 (kept available; manifest.json is preferred)
from cross_check_pointer_targets import find_tables
from find_text_strings import find_text_regions
import map_raw_regions

BASEROM = splitlib.ROOT / "baserom.gba"
MANIFEST = splitlib.ROOT / "assets" / "manifest.json"
SYMBOLS = splitlib.ROOT / "tools" / "symbols" / "rom.txt"
OUT = splitlib.ROOT / "assets" / "rom_map.json"

ROM_BASE = 0x08000000
ROM_SIZE = 0x01000000  # 16MiB cartridge, confirmed against baserom.gba's real file size below
RODATA_START = 0x081DD790
RODATA_END = 0x08F50000       # asm/mariobros.s picks up around 0x08F502B8; see CLAUDE.md
MARIOBROS_START = 0x08F502B8

NAMED_SYMBOL_CLAIM_CAP = 4096  # bytes a plain named symbol (no known size) claims toward its neighbor


def load_named_symbols() -> list:
    import re
    out = []
    for line in SYMBOLS.read_text().splitlines():
        m = re.match(r"(\w+)\s*=\s*(0x[0-9A-Fa-f]+)", line)
        if m:
            out.append((int(m.group(2), 16), m.group(1)))
    return sorted(out)


def merge_intervals(intervals: list) -> list:
    """[(start, end, label), ...] -> merged [(start, end, [labels])], sorted, non-overlapping."""
    if not intervals:
        return []
    intervals = sorted(intervals)
    merged = [[intervals[0][0], intervals[0][1], [intervals[0][2]]]]
    for s, e, label in intervals[1:]:
        if s <= merged[-1][1]:
            merged[-1][1] = max(merged[-1][1], e)
            merged[-1][2].append(label)
        else:
            merged.append([s, e, [label]])
    return [(s, e, labels) for s, e, labels in merged]


def gaps_in(intervals: list, lo: int, hi: int) -> list:
    cursor = lo
    out = []
    for s, e, _ in intervals:
        if s > cursor:
            out.append((cursor, s))
        cursor = max(cursor, e)
    if cursor < hi:
        out.append((cursor, hi))
    return out


def rodata_room_properties_chain() -> list:
    """Known-structure intervals for the chain documented in
    docs/formats/README.md#room-properties-and-the-soliditycollision-pipeline.
    Sizes are exact where confirmed, approximate (marked) otherwise."""
    import struct
    rom = BASEROM.read_bytes()

    def rd32(addr):
        return struct.unpack_from("<I", rom, addr - ROM_BASE)[0]

    out = []
    # ~529 rooms per render_solidity_grids.py's already-established count (not re-derived here).
    room_count = 529
    out.append((0x083A78D4, 0x083A78D4 + room_count * 24, "room_props_table (approx: 24B x 529 rooms)"))
    out.append((0x083AADD0, 0x083AADD0 + 14 * 4, "col_set_ptr_table (exact: 14 x u32)"))
    out.append((0x083AAE08, 0x083AAE08 + room_count * 8, "room_solidity_index_table (approx: 8B x 529 rooms)"))

    # 14 coldef arrays, addresses read live from col_set_ptr_table (not hardcoded) -- nominal
    # 1024B (256 entries x 4B) each per CLAUDE.md, but defensively capped against the next
    # array by address so two claimed arrays never overlap (a real ~232B shortfall was found
    # on the array at 0x081E2860 during this pass -- flagged, not silently papered over).
    coldef_addrs = sorted(rd32(0x083AADD0 + i * 4) for i in range(14))
    for i, addr in enumerate(coldef_addrs):
        nominal_end = addr + 1024
        next_addr = coldef_addrs[i + 1] if i + 1 < len(coldef_addrs) else nominal_end
        end = min(nominal_end, next_addr)
        tag = "coldef array (nominal 1024B)" if end == nominal_end else f"coldef array (CAPPED {end - addr}B, short of nominal 1024B -- see tool docstring)"
        out.append((addr, end, tag))

    # solidity_grid_offset_table: entry count derived from the max tsolidind seen across a
    # generous sample of room_solidity_index_table records (see this pass's own recon, not a
    # full re-scan of all 529 records) -- approximate.
    max_ti = 0
    for i in range(600):
        ti = struct.unpack_from("<H", rom, (0x083AAE08 + i * 8 + 6) - ROM_BASE)[0]
        if ti < 1000:
            max_ti = max(max_ti, ti)
    out.append((0x088E08E0, 0x088E08E0 + (max_ti + 1) * 4, f"solidity_grid_offset_table (approx: max tsolidind {max_ti} seen)"))

    # Game Boy Player logo block -- exact sizes from include/common.h's own declarations,
    # confirmed contiguous (each ends exactly where the next begins).
    out.append((0x081DD7C8, 0x081DD7C8 + 4, "str_FREE_81DD7C8 (exact)"))
    out.append((0x081DD7F4, 0x081DD7F4 + 512, "dword_81DD7F4 (exact: CpuFastSet 128 words)"))
    out.append((0x081DD9F4, 0x081DD9F4 + 16384, "dword_81DD9F4 (exact: GBP logo tiles)"))
    out.append((0x081E19F4, 0x081E19F4 + 1280, "dword_81E19F4 (exact: GBP logo tilemap)"))
    return out


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--top", type=int, default=25, help="how many of the largest unclassified gaps to print")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    if not MANIFEST.exists():
        raise SystemExit(f"{MANIFEST} not found. Run ./container.sh tools/extract_assets.py first.")
    rom = BASEROM.read_bytes()
    actual_rom_size = len(rom)

    # ---------- CODE realm: reuse Phase 3's own tool, filtered to this realm, mariobros excluded ----------
    manifest = splitlib.load_manifest()
    code_raw = []
    for group in manifest.groups:
        if group.name == "mariobros":
            continue
        for entry in group.entries:
            if not entry.is_asm or entry.section != "text":
                continue
            base = splitlib.file_base_address(entry)
            if base is None:
                continue
            code_raw += map_raw_regions.scan_file(entry.source_path, base, entry.obj)
    code_raw = [(r.start, r.end) for r in code_raw if r.start < RODATA_START]
    code_raw_total = sum(e - s for s, e in code_raw)
    code_realm_size = RODATA_START - ROM_BASE

    # ---------- RODATA realm: merge every known-structure category ----------
    blocks = json.loads(MANIFEST.read_text())
    intervals = []
    for b in blocks:
        addr = int(b["address"], 16)
        intervals.append((addr, addr + b["compressed_size"], f"compressed:{b['type']}"))

    tables = find_tables(rom, RODATA_START, RODATA_END, min_entries=4)
    for run in tables:
        s = run[0][0]
        e = run[-1][0] + 4
        intervals.append((s, e, "pointer_table"))

    lo, hi = RODATA_START - ROM_BASE, RODATA_END - ROM_BASE
    for so, eo in find_text_regions(rom, lo, hi):
        intervals.append((ROM_BASE + so, ROM_BASE + eo, "text"))

    for s, e, label in rodata_room_properties_chain():
        intervals.append((s, e, f"named:{label}"))

    named = [(a, n) for a, n in load_named_symbols() if RODATA_START <= a < RODATA_END]
    already_labeled_addrs = set()
    for s, e, label in rodata_room_properties_chain():
        already_labeled_addrs.add(s)
    for i, (addr, name) in enumerate(named):
        if addr in already_labeled_addrs:
            continue  # already given a real size above, don't also claim a generic cap for it
        next_addr = named[i + 1][0] if i + 1 < len(named) else RODATA_END
        end = min(addr + NAMED_SYMBOL_CLAIM_CAP, next_addr)
        intervals.append((addr, end, f"named:{name} (generic cap, real size unresolved)"))

    merged = merge_intervals(intervals)
    covered = sum(e - s for s, e, _ in merged)
    rodata_size = RODATA_END - RODATA_START
    rodata_gaps = gaps_in(merged, RODATA_START, RODATA_END)

    # A gap can be real unused ROM space, not a missed asset -- checked directly rather than
    # assumed: found live on this pass's biggest raw gap (2.57MB, 100.000% zero bytes). A
    # >=98% zero-byte fraction is treated as padding; every other big gap checked alongside it
    # came back <1% zero, i.e. genuinely dense unclassified data, not padding wearing a costume.
    PADDING_ZERO_FRACTION = 0.98
    padding_gaps, real_gaps = [], []
    for s, e in rodata_gaps:
        chunk = rom[s - ROM_BASE : e - ROM_BASE]
        zero_frac = chunk.count(0) / len(chunk) if chunk else 0.0
        (padding_gaps if zero_frac >= PADDING_ZERO_FRACTION else real_gaps).append((s, e, zero_frac))
    padding_total = sum(e - s for s, e, _ in padding_gaps)
    real_gaps.sort(key=lambda g: -(g[1] - g[0]))

    # ---------- report ----------
    print(f"ROM: {actual_rom_size:,} bytes ({'OK, matches expected 16MiB' if actual_rom_size == ROM_SIZE else 'UNEXPECTED SIZE'})")
    print()
    print(f"CODE realm   0x{ROM_BASE:08X}-0x{RODATA_START:08X}  ({code_realm_size:,} bytes)")
    print(f"  {len(code_raw)} raw (undisassembled-as-code) regions, {code_raw_total:,} bytes "
          f"({100*code_raw_total/code_realm_size:.2f}%) still raw -- Phase 3's territory, see CLAUDE.md")
    biggest_code = sorted(code_raw, key=lambda r: -(r[1] - r[0]))[:5]
    for s, e in biggest_code:
        print(f"    0x{s:08X}-0x{e:08X}  {e-s:>8,} B")
    print()
    real_unclassified = rodata_size - covered - padding_total
    print(f"RODATA realm 0x{RODATA_START:08X}-0x{RODATA_END:08X}  ({rodata_size:,} bytes)")
    print(f"  {covered:,} bytes classified ({100*covered/rodata_size:.2f}%) across {len(merged)} merged region(s)")
    print(f"  {padding_total:,} bytes ({100*padding_total/rodata_size:.2f}%) unused ROM padding "
          f"(>=98% zero bytes -- confirmed, not assumed) across {len(padding_gaps)} region(s)")
    print(f"  {real_unclassified:,} bytes ({100*real_unclassified/rodata_size:.2f}%) genuinely UNCLASSIFIED "
          f"(dense, non-padding, no known structure) across {len(real_gaps)} gap(s)")
    print()
    print(f"MARIOBROS realm 0x{MARIOBROS_START:08X}-0x{ROM_BASE+actual_rom_size:08X}  "
          f"(out of scope per CLAUDE.md -- not analyzed)")
    print()
    print(f"--- top {args.top} largest genuinely-unclassified gaps in the RODATA realm (prioritize these) ---")
    for s, e, zero_frac in real_gaps[: args.top]:
        landmark = next((n for a, n in named if s <= a < e), None)
        tag = f"  (contains named symbol {landmark} -- partially known, not fully sized)" if landmark else ""
        print(f"  0x{s:08X}-0x{e:08X}  {e-s:>9,} B  zero_byte_fraction={zero_frac:.3f}{tag}")
    if padding_gaps:
        print(f"\n--- padding regions (confirmed, no further work needed) ---")
        for s, e, zero_frac in sorted(padding_gaps, key=lambda g: -(g[1]-g[0]))[:5]:
            print(f"  0x{s:08X}-0x{e:08X}  {e-s:>9,} B  zero_byte_fraction={zero_frac:.3f}")

    OUT.parent.mkdir(exist_ok=True)
    OUT.write_text(json.dumps({
        "rom_size": actual_rom_size,
        "code_realm": {"start": ROM_BASE, "end": RODATA_START,
                        "raw_regions": [{"start": s, "end": e} for s, e in code_raw]},
        "rodata_realm": {"start": RODATA_START, "end": RODATA_END,
                          "classified": [{"start": s, "end": e, "labels": labels} for s, e, labels in merged],
                          "padding_gaps": [{"start": s, "end": e, "zero_byte_fraction": zf} for s, e, zf in padding_gaps],
                          "unclassified_gaps": [{"start": s, "end": e, "zero_byte_fraction": zf} for s, e, zf in real_gaps]},
        "mariobros_realm": {"start": MARIOBROS_START, "end": ROM_BASE + actual_rom_size, "in_scope": False},
    }, indent=2))
    print(f"\nFull detail written to {OUT.relative_to(splitlib.ROOT)}")


if __name__ == "__main__":
    main()
