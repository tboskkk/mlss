# Data formats — findings so far

Phase 4 (splitting the 14MB of still-100%-raw rodata) is reconnaissance
plus a first real extraction pass — not a catalog, and neither rodata blob
is actually *split* (turned into committed, buildable source) yet. See
[CLAUDE.md](../../CLAUDE.md) for how this fits into the overall project
phasing.

## Compressed blocks — `tools/find_compressed_blocks.py`

Scans for GBA BIOS-compressed data (LZ77/Huffman/RLE — see [GBATEK "BIOS
Decompression
Functions"](https://problemkaputt.de/gbatek-bios-decompression-functions.htm)).
LZ77 and RLE hits are **not** just a header-byte-pattern guess — the tool
runs a real decompressor and only reports a hit if it terminates cleanly at
exactly the declared size with no out-of-bounds or invalid back-references.
Huffman candidates are header-only (no tree decoder yet) and hidden by
default — pass `--show-huffman-candidates` if you want the noise.

Run: `./container.sh tools/find_compressed_blocks.py`

**75 confirmed blocks** (>= 32 decompressed bytes) across
`0x081DD790`-`0x08F50000`, overwhelmingly RLE rather than LZ77 — worth
knowing before assuming "GBA game" defaults to LZ77 for this one. Several
are large enough to be major assets, not incidental data:

| Address | Compressed | Decompressed |
|---|---:|---:|
| `0x08A6BCB0` | 543,945 B | 1,017,728 B |
| `0x088D217A` | 199,184 B | 1,023,785 B |
| `0x08826426` | 519,639 B | 852,018 B |
| `0x0825A709` | 441,173 B | 814,624 B |
| `0x083BF3F0` | 381,183 B | 539,634 B |

(full list from a live run — re-run the tool rather than trusting this
snapshot as it ages)

The decompressor moved to `tools/gba_compress.py` (shared with the
extraction tool below, so the two can't drift out of sync).

## Extracting to real files — `tools/extract_assets.py`

Runs the same confirmed-block scan and actually writes the decompressed
bytes out, instead of just reporting a size.

Run: `./container.sh tools/extract_assets.py` (writes to `assets/` —
gitignored, like `baserom.gba`: this is decompressed copyrighted game
data, regenerate it locally, never commit it)

- `assets/raw/<addr>_<type>.bin` — every one of the 75 confirmed blocks,
  decompressed for real.
- `assets/png/<addr>_<w>x<h>[_synth].png` — a rendered preview for every
  block whose decompressed size is a clean multiple of 32 bytes (one 4bpp
  GBA tile), on the reasoning that a real tile-graphics asset almost
  always sizes out that way. Rendered as a flat 16-tiles-wide grid — **not**
  necessarily the game's actual on-screen layout, which needs a tilemap
  this pass doesn't have; same raw-content preview any GBA tile viewer
  gives you before you know the real arrangement.
- `assets/manifest.json` — every block's address, type, sizes, file
  paths, and (for rendered ones) which palette got used and its
  `nibble_dominance` score.

**The tile decoder itself is verified correct**, not just "seems to
work": rendered against `dword_81DD9F4`, the Game Boy Player boot-logo
tile data — real, uncompressed, 4bpp GBA tiles with a known address,
already documented in `src/game_boy_player_logo.c` (copied straight to
`BG_CHAR_ADDR` via `sub_8018218`, so there's no ambiguity about what it
is). That render shows a clearly structured, dithered texture, not noise
— confirms the nibble order (low nibble = left pixel) and byte layout are
right.

**What's *not* verified: which of the 75 confirmed compressed blocks are
actually tile graphics at all.** "Decompressed size is a multiple of 32"
is a weak classifier on its own — plenty of non-graphics data (event
tables, that sort of thing) will coincidentally satisfy it. Tried both
several alternate grid widths and an 8bpp reinterpretation on the first
few candidates; none produced an obviously coherent picture the way the
validated Game Boy Player logo render does. That doesn't rule them out
(wrong width alone can make real tile data look like noise — that's normal
for this technique, not a red flag by itself), it just means none of them
are *confirmed* yet the way `0x0851F9E8`'s pointer table was confirmed by
an independent code cross-reference.

`nibble_dominance` (in the manifest, and in the tool's own sorted summary
output) is a cheap secondary signal worth prioritizing by: real GBA tiles
usually have a dominant background/transparent color, so a high share of
one nibble value is at least *suggestive*. Highest-scoring candidate this
pass: `0x08820273` at 60% (25,856 decompressed bytes, real nearby palette
found) — worth a closer manual look before the others.

Bottom line: extraction infrastructure is solid and verified end to end
(decompress → write file → render → confirmed-correct decode). Confidently
labeling *which* files are which kind of asset is real, unstarted work.

## Pointer tables — `tools/find_pointer_tables.py`

Scans the raw rodata bytes themselves for runs of consecutive 4-byte-
aligned words that all decode to plausible ROM addresses (`0x08000000`-
`0x08FFFFFF`) — the signature of a real pointer array (per-level data,
per-character data, a jump table, ...) sitting in memory. Cross-references
every hit's start address against every `.4byte` literal pool entry
already in the disassembled code — a match there means a real function
actually loads that address as a pointer, independent confirmation beyond
the byte-pattern heuristic alone.

Run: `./container.sh tools/find_pointer_tables.py`

**20 code-confirmed tables**, several substantial:

| Address | Entries | Confirmed by |
|---|---:|---|
| `0x083D6C58` | 1,024 | `text08057568.s:_080ED99C` (+7 more refs) |
| `0x083AF418` | 529 | `text08057568.s:_08059EFC` |
| `0x0851F9E8` | 518 | `nonmatching/optn_init.s:_08052440` (+7 more) |
| `0x083C07A4` | 381 | `text08057568.s:_0812357C` |
| `0x0821CC40` | 355 | `text08057568.s:_0819B288` |
| `0x083BA4BC` | 291 | `text08057568.s:_080EFE6C` (+1 more) |

`0x0851F9E8` is a nice sanity check on the whole approach: it's already
referenced by name (`off_851F9E8`) in the pre-existing WIP `optn_init`
decompilation attempt in `src/option_screens.c` — written before this scan
existed, by someone reading the disassembly by hand. Independent
confirmation the technique finds real structure, not noise.

**337 more candidates without a code cross-reference** — leads, not
conclusions. Most of the ROM isn't disassembled yet, so "no code reference
found" mostly means "the referencing function hasn't been reached yet",
not "this isn't real." Some fraction of these are genuine noise, though:
GBA graphics/compressed data can coincidentally read as pointer-like for a
handful of consecutive words purely because `0x08` is a common high byte
in this address range. Treat a run with regular/incrementing values in its
preview as more likely tile or compressed data than a real table.

## Using these together

The obvious next cross-check — do any pointer table *entries* point at a
confirmed compressed block's start address — doesn't hit anything yet:
none of the table *start* addresses coincide with a compressed block start
(checked; genuinely empty). That's not surprising on reflection: a
pointer table's own address and the addresses it *points to* are different
things, and this pass never checked the latter against the former. Diffing
each confirmed table's individual entry values (not just its start
address) against the compressed-block address list is real, unstarted
work and the more promising version of this idea — a table of pointers to
compressed per-level or per-character assets is a very ordinary GBA data
layout, and would be a strong found-a-real-structure result if it's here.
