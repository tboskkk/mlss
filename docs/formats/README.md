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

## Room properties and the solidity/collision pipeline

Not from either scanner above — found by hand, prompted by cross-
referencing a community ROM-hacking tool's UI against our own disassembly.
Unlike the tile-graphics classification question above, this one is
address-level confirmed, not a heuristic guess.

### The room record table — `0x083A78D4`

A flat array of 24-byte (`0x18`) fixed-stride records, one per room. At
least five call sites in `text08057568.s` (`sub_8059704`, `sub_8059EC8`,
`sub_805D914`, `sub_80EEE08`, `sub_8123308`) compute
`0x083A78D4 + room_index * 0x18` and load/copy the record wholesale
(`ldm`/`stm` of 6 words) into fixed IWRAM staging addresses (`0x03000DD0`
and `0x03000DE8` — two adjacent 24-byte slots).

This is the exact same table the community
[Yoshi Magic](https://github.com/CaptainSwag101/YoshiMagic) editor calls
`rpbank` (`Dim rpbank As Integer = &H83A78D4`, in its
`Yoshi Magic/roomproperties.vb`) — found independently here via
disassembly first, and only cross-checked against their source afterward.
Their code reads the 24 bytes as a sequence of named fields, which lines
up exactly with the stride and gives a complete field layout for free.
Verified byte-for-byte against a live ROM dump of record 35 — chosen
because that's the exact room a screenshot of their editor's Room
Properties screen happened to show (its "Room Props. Offset: 3A7C1C"
readout is exactly `0x083A78D4 + 35*0x18`):

| Offset | Field (their name) | Type | Record 35's value |
|---|---|---|---:|
| `0x00` | `rnind` — room name index | u8 | 2 |
| `0x01` | `mlind` — Mario/Luigi | u8 | 1 |
| `0x02` | `underwaterflag` | u8 | 0 |
| `0x03` | `ctind` — compressed tile group | u8 | 5 |
| `0x04` | `tsind` — tileset | u8 | 5 |
| `0x05` | `palind` — palette | u8 | 7 |
| `0x06` | `solidind` | u8 | 3 |
| `0x07` | `aniind` — animation | u8 | 3 |
| `0x08` | `unk1ind` | u8 | 0 |
| `0x09` | `laybind` — layer binding | u8 | 2 |
| `0x0A` | `tmodsind` — tile mods | u8 | 0 |
| `0x0B` | `unk2ind` | u8 | 0 |
| `0x0C` | `ls1ind` | u8 | 0 |
| `0x0D` | `ls2ind` | u8 | 0 |
| `0x0E` | `mapscrind` — map scroll | u16 | 35 |
| `0x10` | `npcind` — NPC set | u16 | 35 |
| `0x12` | `ls3ind` | u8 | 0 |
| `0x13` | `ls4ind` | u8 | 0 |
| `0x14` | `songind` — background music | u8 | 8 |
| `0x15` | `unk3ind` | u8 | 0 |
| `0x16` | `itmbkind` — item bank | u16 | 35 |

The `+0x10` field is a nice independent tie-breaker for the whole table:
`sub_80EEE08` (a generic function operating on an unrelated caller struct)
separately reads a record's `+0x10` halfword and uses it as an index into
the already-confirmed 1,024-entry pointer table at `0x083D6C58` (see
above) — exactly matching what the field is named for in the community
source (`npcind`, an NPC-set index).

### The solidity data itself is not `solidind` — it's a separate two-level chain

The obvious guess — byte `solidind` at `+0x06`, a small 0-255 index — turns
out to be a dead end that the tool's own authors apparently abandoned
mid-development: `roomproperties.vb` has commented-out code that tried
`solidind` as an index into a table at `0x083AADD0`, sitting right next to
the *active* code, which uses a completely different chain:

```
room_index (ctx+0x1E)
  -> RoomSolidityIndexTable @ 0x083AAE08   (8 bytes/room)
       read u16 at +0x06  =  tsolidind
  -> SolidityPointerTable  @ 0x088E08E0   (4 bytes/entry, indexed by tsolidind)
       read u32            =  a *relative* offset, not an absolute pointer
  -> solidity grid base = 0x088E08E0 + that offset
```

Both tables are real, heavily-used code in our own disassembly, not just
the community tool's claim — `0x083AAE08` alone is referenced from **17
separate call sites** in `text08057568.s`, and one of them (`sub_805A00C`)
walks the *entire* chain in a single function, then does a straight
row-major byte copy from the resolved ROM address into a working RAM
buffer:

```c
// sub_805A00C, translated to readable pseudo-C from the real Thumb
// disassembly — not a matched decompilation attempt, just a translation
void stage_room_solidity_grid(RoomCtx *ctx) {
    u16 tsolidind = RoomSolidityIndexTable[ctx->room_index].field_0x06;
    s32 rel_off   = SolidityPointerTable[tsolidind];
    u8 *grid      = (u8 *)(0x088E08E0 + rel_off);

    for (u16 row = 0; row < ctx->grid_height; row++)
        for (u16 col = 0; col < ctx->grid_width; col++)
            ctx->working_grid[row * ctx->grid_width + col] =
                grid[row * ctx->grid_width + col];
}
```

`ctx` (still an unidentified pointer — most likely a "current room/map
state" singleton) now has four known field offsets from this alone:
`+0x1E` room index (also used to index the `0x083A78D4` table above — same
ID space, confirmed by both functions agreeing), `+0x26` grid width,
`+0x28` grid height, `+0x9C` pointer to the destination working buffer.

**What this confirms:** where the per-room collision/solidity grid lives
in ROM, and the exact two-level indirection the retail game uses to reach
it — cross-validated two independent ways (our own disassembly first; the
community tool's decade-plus-old, independently-reverse-engineered source
second, consulted only after the addresses were already found here).

**What this does *not* yet tell us:** what the individual grid byte
VALUES mean (which value is "solid," which is "ledge," etc.) — the
community tool just renders them as raw hex in a color-coded grid for a
human to eyeball, it doesn't decode them either. Also still unlocated: the
actual height/gravity/jump-velocity variables that drive the vertical half
of the walk-behind-scenery illusion (see [CLAUDE.md](../../CLAUDE.md) for
why this matters to the project). Both are now much more tractable
follow-ups than before this table was found — the hard part, locating the
data and the code path that reaches it, is done.

Flagged as ready but not yet done: renaming `0x083A78D4`, `0x083AAE08`,
`0x088E08E0`, and `sub_805A00C` via `tools/rename_symbol.py`, the same
pure-text-rename pattern already proven safe on Phase 3's library-code
matches.

### The grid really is spatial tile data — rendered and confirmed

`tools/render_solidity_grids.py` resolves the chain above for all 529
rooms (501 distinct grids after dedup — many rooms share one) purely from
ROM data, no emulation, and renders every one whose resolved size is a
clean multiple of 30 bytes with a small byte alphabet (2-8 distinct
values — the "plausibly real behavior data, not noise" filter). Run it
yourself: `./container.sh tools/render_solidity_grids.py`, then look in
`assets/solidity/png/` (176 renders as of this pass, gitignored like every
other `tools/extract_assets.py`-style output).

**Grid width is 30 tiles** (240px — one exact GBA screen width at
8px/tile). Not a guess: 407 of the 501 resolved grids are an *exact*
multiple of 30 bytes — clean heights seen include 10, 20, 30, 50, 60, and
150 tiles. 93 more are exactly 2 bytes over a multiple of 30 (equivalent
to height 5, 15, ... plus 2 mystery bytes) — inspected the first bytes of
several and they don't clearly distinguish "real 2-byte header" from
"alignment padding," so that part's left open.

Rendering the width-30 family at that width produces genuinely coherent
shapes, not noise — solid rectangular blocks, floor bands spanning the
full width, evenly-spaced vertical columns. Two clean examples, both
30×10 (`tsolidind` is the resolved-table index, not a room number — see
`assets/solidity/manifest.json` for which rooms point at which grid):

- **`tsolidind=74`**: two elevated block/platform shapes side by side.
  `0x18` forms each platform's top edge, `0x2D` is the solid interior
  beneath it, `0xFD` sits as a marker on top of each — and two *other*
  grids (`tsolidind=73` and `75`) are near-identical variants of the same
  layout, which is exactly what you'd expect from the same room in
  slightly different game-progress states.
- **`tsolidind=37`**: a solid mass in one corner with a stepped platform
  below it, two evenly-spaced single-tile-wide vertical columns sitting in
  open floor space, and a floor band spanning the full 30-tile width along
  the bottom two rows.

**Value families that recur across unrelated rooms** (not exhaustive —
just patterns that showed up often enough to name):
- `0x00` / `0x01` / `0x02` — small integers, `0x00` usually dominant —
  plausibly open space / floor / a floor variant.
- `0x18` / `0x19` / `0x2D` — `0x18` recurring specifically as a block's
  edge/outline and `0x2D` as that same block's solid interior, in
  multiple unrelated rooms, not just the `74`/`73`/`75` cluster above.
- `0xFF` with `0xFB`–`0xFD` — `0xFF` overwhelmingly the most common value
  wherever it appears (plausible "open/default" sentinel); `0xFB`/`0xFC`/
  `0xFD` sit numerically just below it (-5/-4/-3 as signed bytes) and only
  ever show up in small counts — a handful of special-behavior codes
  rather than more open-space variants, is the working guess.

**Still not confirmed: what any specific value actually *does* in-game** —
does `0x2D` block movement outright or just visually, is `0x18`
specifically a ledge and if so which direction is passable. The shapes
are strong evidence this is real per-tile behavior data with a small
enum, not proof of any single value's exact behavior — that needs
correlating specific tiles against what's actually on screen in those
rooms, which nothing here does yet.
