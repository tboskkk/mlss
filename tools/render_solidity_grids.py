#!/usr/bin/env python3
"""Resolve and render every room's solidity/collision tile-grid.

    ./container.sh tools/render_solidity_grids.py [-o DIR]

Walks the two-level pointer chain documented in docs/formats/README.md
("Room properties and the solidity/collision pipeline"):

    room index (0..528)
      -> RoomSolidityIndexTable @ 0x083AAE08   (8 bytes/room)
           read u16 at +0x06  =  tsolidind
      -> SolidityPointerTable  @ 0x088E08E0   (4 bytes/entry, relative offsets)
      -> solidity grid = 0x088E08E0 + that offset

Both table addresses and the chain itself were found by disassembly (five
call sites for the room table, seventeen for the per-room solidity index
table, one of which - sub_805A00C - walks the whole chain and copies the
result into a RAM working buffer). This tool is the ROM-data half of that
finding: no emulation, no running code, just following the same pointers
the retail game's own code follows.

Grid width is not stored anywhere we've found yet (it's a runtime field on
an still-unidentified context struct, filled in from somewhere other than
the 24-byte room record) -- so this tool derives each blob's *maximum*
size from the distance to the next resolved address in ROM order, and
assumes the very common case of a fixed 30-tile (240px, one GBA screen)
width. That assumption is not a guess dressed up as fact: 407 of 501
resolved blocks this scan finds are an *exact* multiple of 30 bytes, and
rendering several of those at width=30 produces genuinely coherent room
shapes (solid blocks, floors, symmetric platforms) rather than noise --
see the docs for actual renders. 93 more are exactly 2 bytes over a
multiple of 30 (unexplained -- maybe a 2-byte header, maybe alignment
padding; first bytes inspected so far don't distinguish the two). Rooms
outside the width-30 family are written out as raw .bin only, no PNG --
don't assume a render exists for every entry in the manifest.

Writes, under -o/--out-dir (default "assets/solidity", gitignored like
every other tools/extract_assets.py output -- this is decompressed-shape
game data derived from the ROM, not source):

  raw/<tsolidind>.bin           -- every resolved grid's raw bytes, always
  png/<tsolidind>_<w>x<h>.png   -- only for the width-30 family, and only
                                   when the byte alphabet is small enough
                                   (2-8 distinct values) to plausibly be
                                   real tile-behavior data rather than
                                   some other kind of table this chain
                                   happens to also resolve into
  manifest.json                 -- every room's tsolidind + resolved
                                   address + size bound + distinct-value
                                   count, and which rooms share which
                                   tsolidind (many rooms reuse one grid)

This does NOT tell you what the byte values mean (which one is "solid,"
which is "ledge") -- only that the data is real, spatial, and has a small
enough alphabet to plausibly be a tile-behavior enum. Confirming exact
semantics needs correlating specific tiles against what's actually on
screen in those rooms, which is real, unstarted follow-up work.
"""
from __future__ import annotations

import argparse
import json
import struct
import sys
from pathlib import Path

from PIL import Image

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000

ROOM_SOLID_TABLE = 0x083AAE08   # per-room, 8 bytes/room, u16 @ +0x06 = tsolidind
SOLID_PTR_TABLE = 0x088E08E0    # indexed by tsolidind, 4 bytes/entry, i32 relative offset
N_ROOMS = 529                    # matches rpbank's room count (see docs/formats/README.md)
GRID_WIDTH = 30                  # empirically derived -- see module docstring

# Colors for byte values seen recurring across multiple rooms during the
# investigation that produced this tool. Not a claim about what any value
# *means* -- just keeps the same value visually consistent render to render,
# which is itself a useful sanity check (does 0x2D always look like "solid
# interior" wherever it shows up?).
PALETTE = {
    0x00: (238, 240, 244),
    0x01: (154, 163, 178),
    0x02: (91, 107, 140),
    0x18: (232, 169, 75),
    0x19: (243, 205, 140),
    0x1A: (200, 120, 190),
    0x1F: (120, 190, 120),
    0x21: (120, 190, 160),
    0x2D: (138, 59, 46),
    0x47: (190, 150, 90),
    0x62: (90, 150, 190),
    0xFB: (216, 90, 90),
    0xFC: (216, 130, 90),
    0xFD: (95, 208, 192),
    0xFF: (247, 245, 239),
}
FALLBACK = [(230, 120, 170), (120, 200, 230), (200, 200, 90), (170, 120, 230)]


def foff(addr: int) -> int:
    return addr - ROM_BASE


def histogram(data: bytes):
    counts = [0] * 256
    for b in data:
        counts[b] += 1
    nz = [(v, c) for v, c in enumerate(counts) if c]
    nz.sort(key=lambda vc: -vc[1])
    return nz


def render_png(data: bytes, width: int, cell: int = 14) -> Image.Image:
    height = len(data) // width
    img = Image.new("RGB", (width * cell, height * cell), (255, 255, 255))
    px = img.load()
    fallback_n = 0
    cache = {}
    for i, v in enumerate(data):
        if v not in cache:
            if v in PALETTE:
                cache[v] = PALETTE[v]
            else:
                cache[v] = FALLBACK[fallback_n % len(FALLBACK)]
                fallback_n += 1
        c = cache[v]
        row, col = divmod(i, width)
        for yy in range(cell):
            for xx in range(cell):
                px[col * cell + xx, row * cell + yy] = c
    return img


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("-o", "--out-dir", default="assets/solidity")
    ap.add_argument("--min-distinct", type=int, default=2, help="skip PNG render if fewer distinct byte values than this (default 2 -- skips uniform/blank grids)")
    ap.add_argument("--max-distinct", type=int, default=8, help="skip PNG render if more distinct byte values than this (default 8 -- likely not a small behavior enum past this)")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()

    def u16(off):
        return struct.unpack_from("<H", rom, off)[0]

    def i32(off):
        return struct.unpack_from("<i", rom, off)[0]

    # 1. per-room tsolidind, and which rooms share which one
    room_tsolid = [u16(foff(ROOM_SOLID_TABLE) + room * 8 + 6) for room in range(N_ROOMS)]
    rooms_by_tsolid: dict[int, list[int]] = {}
    for room, t in enumerate(room_tsolid):
        rooms_by_tsolid.setdefault(t, []).append(room)

    # 2. resolve each distinct tsolidind through the pointer table
    resolved = {}
    for t in sorted(rooms_by_tsolid):
        off = foff(SOLID_PTR_TABLE) + t * 4
        if off + 4 > len(rom):
            continue
        addr = SOLID_PTR_TABLE + i32(off)
        if ROM_BASE <= addr < ROM_BASE + len(rom):
            resolved[t] = addr

    # 3. bound sizes by distance to the next resolved address
    by_addr = sorted(resolved.items(), key=lambda kv: kv[1])
    bound = {}
    for i, (t, addr) in enumerate(by_addr):
        upper = by_addr[i + 1][1] if i + 1 < len(by_addr) else addr + 4096
        bound[t] = upper - addr

    out_dir = splitlib.ROOT / args.out_dir
    raw_dir, png_dir = out_dir / "raw", out_dir / "png"
    raw_dir.mkdir(parents=True, exist_ok=True)
    png_dir.mkdir(parents=True, exist_ok=True)

    manifest = []
    rendered = 0
    for t, addr in sorted(resolved.items()):
        size = bound[t]
        data = rom[foff(addr):foff(addr) + size]
        raw_path = raw_dir / f"{t}.bin"
        raw_path.write_bytes(data)

        nz = histogram(data)
        entry = {
            "tsolidind": t,
            "rooms": rooms_by_tsolid[t],
            "address": f"0x{addr:08X}",
            "size_bound": size,
            "distinct_values": len(nz),
            "top_values": [f"0x{v:02X}:{c}" for v, c in nz[:6]],
            "raw_file": str(raw_path.relative_to(splitlib.ROOT)),
        }

        is_width30_family = size % GRID_WIDTH == 0 and size > 0
        if is_width30_family and args.min_distinct <= len(nz) <= args.max_distinct:
            img = render_png(data, GRID_WIDTH)
            png_path = png_dir / f"{t}_{GRID_WIDTH}x{size // GRID_WIDTH}.png"
            img.save(png_path)
            entry["png_file"] = str(png_path.relative_to(splitlib.ROOT))
            rendered += 1

        manifest.append(entry)

    manifest_path = out_dir / "manifest.json"
    manifest_path.write_text(json.dumps(manifest, indent=2))

    n_width30 = sum(1 for e in manifest if e["size_bound"] % GRID_WIDTH == 0)
    print(f"{len(manifest)} distinct solidity grids resolved (covering {N_ROOMS} rooms)")
    print(f"{n_width30} are an exact multiple of {GRID_WIDTH} bytes (the width={GRID_WIDTH}-tile family)")
    print(f"{rendered} rendered to {png_dir.relative_to(splitlib.ROOT)}/ "
          f"(width-30 family, {args.min_distinct}-{args.max_distinct} distinct byte values)")
    print(f"manifest: {manifest_path.relative_to(splitlib.ROOT)}")


if __name__ == "__main__":
    main()
