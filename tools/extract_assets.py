#!/usr/bin/env python3
"""Decompress every confirmed compressed block (tools/find_compressed_blocks.py's
detection, shared via tools/gba_compress.py) to a real file, and render a
PNG preview for anything that looks like GBA tile graphics.

    ./container.sh tools/extract_assets.py [--start ADDR] [--end ADDR] [-o DIR]

For each confirmed block, writes:
  assets/raw/<addr>_<type>.bin        - the decompressed bytes, always
  assets/png/<addr>_<w>x<h>[_synth].png  - only if size is 32-byte (tile)
                                            aligned; see "Palette" below

Also writes assets/manifest.json with every block's address, compression
type, sizes, and file paths.

Tile rendering: GBA 4bpp tiles are 8x8 pixels, 32 bytes each, low nibble =
left pixel of each byte pair. A block decompressing to a clean multiple of
32 bytes is rendered as a grid of tiles (16 wide, or narrower if there
are fewer than 16) - not necessarily the game's real on-screen layout
(that needs a tilemap this tool doesn't have), just a raw content preview,
same as any GBA tile viewer would show you before you know the layout.

Palette: real GBA palette entries are 16-bit BGR555 with the top bit
always 0. This tool checks a few fixed offsets around each compressed
block (512B and 32B before, and right after it ends) for 32 raw bytes
that decode as 16 all-top-bit-clear colors, and uses the first one found.
That's a real palette if found - filename has no "_synth" suffix. If none
validates, falls back to a synthetic 16-color ramp so tile *structure* is
still visible; those filenames are suffixed "_synth" and the colors mean
nothing - don't mistake a synth-palette preview for the real in-game
colors.
"""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

from PIL import Image

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
from gba_compress import scan as scan_compressed

BASEROM = splitlib.ROOT / "baserom.gba"
ROM_BASE = 0x08000000
DEFAULT_START = 0x081DD790
DEFAULT_END = 0x08F50000

SYNTH_PALETTE = [
    (0, 0, 0), (172, 24, 24), (24, 141, 24), (168, 168, 16),
    (24, 24, 172), (168, 24, 168), (24, 168, 168), (172, 172, 172),
    (86, 86, 86), (232, 74, 74), (74, 222, 74), (232, 222, 74),
    (74, 74, 232), (232, 74, 232), (74, 232, 232), (255, 255, 255),
]


def bgr555_to_rgb(word: int):
    r = (word & 0x1F) * 255 // 31
    g = ((word >> 5) & 0x1F) * 255 // 31
    b = ((word >> 10) & 0x1F) * 255 // 31
    return r, g, b


def try_palette_at(rom: bytes, off: int):
    """16 raw BGR555 colors at rom[off:off+32], or None if any entry has
    the reserved top bit set (real GBA palette data never does)."""
    if off < 0 or off + 32 > len(rom):
        return None
    colors = []
    for i in range(16):
        word = rom[off + 2 * i] | (rom[off + 2 * i + 1] << 8)
        if word & 0x8000:
            return None
        colors.append(bgr555_to_rgb(word))
    if all(c == (0, 0, 0) for c in colors):
        return None  # all-black "palette" is more likely coincidental padding
    return colors


def find_nearby_palette(rom: bytes, comp_start: int, comp_end: int):
    for delta in (-512, -32, 0):
        pal = try_palette_at(rom, comp_start + delta)
        if pal:
            return pal, comp_start + delta
    pal = try_palette_at(rom, comp_end)
    if pal:
        return pal, comp_end
    return None, None


def nibble_dominance(data: bytes) -> float:
    """Fraction of pixels (nibbles) equal to the single most common value.
    Cheap secondary signal for "is this actually tile graphics": real GBA
    tiles usually have a dominant background/transparent color, so a high
    share here is a decent prioritization hint on top of the 32-byte-size
    heuristic alone - not proof by itself (see extract_assets.py's own
    docstring on why the size heuristic has false positives)."""
    counts = [0] * 16
    for b in data:
        counts[b & 0x0F] += 1
        counts[b >> 4] += 1
    return max(counts) / (len(data) * 2)


def render_tiles(data: bytes, palette):
    n_tiles = len(data) // 32
    width = min(16, n_tiles)
    height = -(-n_tiles // width)  # ceil div
    img = Image.new("P", (width * 8, height * 8), 0)
    flat_palette = []
    for c in palette:
        flat_palette.extend(c)
    flat_palette.extend([0, 0, 0] * (256 - len(palette)))
    img.putpalette(flat_palette)

    px = img.load()
    for t in range(n_tiles):
        tx, ty = (t % width) * 8, (t // width) * 8
        tile = data[t * 32 : (t + 1) * 32]
        for row in range(8):
            for b in range(4):
                byte = tile[row * 4 + b]
                px[tx + b * 2, ty + row] = byte & 0x0F
                px[tx + b * 2 + 1, ty + row] = byte >> 4
    return img, width * 8, height * 8


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--start", type=lambda s: int(s, 0), default=DEFAULT_START)
    ap.add_argument("--end", type=lambda s: int(s, 0), default=DEFAULT_END)
    ap.add_argument("--min-size", type=int, default=32)
    ap.add_argument("--max-size", type=int, default=1 << 20)
    ap.add_argument("-o", "--out-dir", default="assets")
    args = ap.parse_args()

    if not BASEROM.exists():
        raise SystemExit(f"{BASEROM} not found - this needs your own dumped retail ROM present.")
    rom = BASEROM.read_bytes()

    out_dir = splitlib.ROOT / args.out_dir
    raw_dir, png_dir = out_dir / "raw", out_dir / "png"
    raw_dir.mkdir(parents=True, exist_ok=True)
    png_dir.mkdir(parents=True, exist_ok=True)

    lo, hi = args.start - ROM_BASE, args.end - ROM_BASE
    hits = scan_compressed(rom, lo, hi, min_size=args.min_size, max_size=args.max_size)

    manifest = []
    rendered = 0
    for off, kind, consumed, decompressed in hits:
        addr = ROM_BASE + off
        raw_path = raw_dir / f"0x{addr:08X}_{kind}.bin"
        raw_path.write_bytes(decompressed)

        entry = {
            "address": f"0x{addr:08X}",
            "type": kind,
            "compressed_size": consumed,
            "decompressed_size": len(decompressed),
            "raw_file": str(raw_path.relative_to(splitlib.ROOT)),
        }

        if len(decompressed) % 32 == 0 and len(decompressed) >= 32:
            palette, pal_addr = find_nearby_palette(rom, off, off + consumed)
            synth = palette is None
            if synth:
                palette = SYNTH_PALETTE
            img, w, h = render_tiles(decompressed, palette)
            suffix = "_synth" if synth else ""
            png_path = png_dir / f"0x{addr:08X}_{w}x{h}{suffix}.png"
            img.save(png_path)
            rendered += 1
            entry["png_file"] = str(png_path.relative_to(splitlib.ROOT))
            entry["palette"] = "synthetic (structure preview only)" if synth else f"0x{pal_addr + ROM_BASE:08X}"
            entry["nibble_dominance"] = round(nibble_dominance(decompressed), 3)

        manifest.append(entry)

    manifest_path = out_dir / "manifest.json"
    manifest_path.write_text(json.dumps(manifest, indent=2))

    real_pals = sum(1 for e in manifest if e.get("palette", "").startswith("0x"))
    print(f"{len(manifest)} blocks extracted to {raw_dir.relative_to(splitlib.ROOT)}/")
    print(f"{rendered} rendered to {png_dir.relative_to(splitlib.ROOT)}/ ({real_pals} with a real nearby palette, {rendered - real_pals} synthetic)")
    print(f"manifest: {manifest_path.relative_to(splitlib.ROOT)}")

    by_dominance = sorted((e for e in manifest if "nibble_dominance" in e), key=lambda e: -e["nibble_dominance"])
    if by_dominance:
        print("\nrendered candidates, most-likely-real-graphics first (by nibble_dominance - a hint, not proof; see docstring):")
        for e in by_dominance:
            print(f"  {e['address']}  dominance={e['nibble_dominance']:.0%}  {e['png_file']}")


if __name__ == "__main__":
    main()
