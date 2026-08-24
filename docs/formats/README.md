# Data formats - findings so far

Phase 4 (splitting the 14MB of still-100%-raw rodata) is reconnaissance
plus a first real extraction pass - not a catalog, and neither rodata blob
is actually *split* (turned into committed, buildable source) yet. See
[CLAUDE.md](../../CLAUDE.md) for how this fits into the overall project
phasing.

## Compressed blocks - `tools/find_compressed_blocks.py`

Scans for GBA BIOS-compressed data (LZ77/Huffman/RLE - see [GBATEK "BIOS
Decompression
Functions"](https://problemkaputt.de/gbatek-bios-decompression-functions.htm)).
LZ77 and RLE hits are **not** just a header-byte-pattern guess - the tool
runs a real decompressor and only reports a hit if it terminates cleanly at
exactly the declared size with no out-of-bounds or invalid back-references.
Huffman candidates are header-only (no tree decoder yet) and hidden by
default - pass `--show-huffman-candidates` if you want the noise.

Run: `./container.sh tools/find_compressed_blocks.py`

**75 raw hits, 63 confirmed after correction** (>= 32 decompressed bytes)
across `0x081DD790`-`0x08F50000`, overwhelmingly RLE rather than LZ77 -
worth knowing before assuming "GBA game" defaults to LZ77 for this one.
**12 of the original 75 turned out to be false positives** - a different,
custom (non-BIOS) LZ codec's real streams that happen to also satisfy this
decoder's termination check often enough to look like a clean RLE hit. Full
finding, evidence and the corrected address list: "Custom sprite
compression" section below. `assets/manifest.json` reflects the corrected
63. Several of the real ones are large enough to be major assets, not
incidental data:

| Address | Compressed | Decompressed |
|---|---:|---:|
| `0x08A6BCB0` | 543,945 B | 1,017,728 B |
| `0x088D217A` | 199,184 B | 1,023,785 B |
| `0x08826426` | 519,639 B | 852,018 B |
| `0x0825A709` | 441,173 B | 814,624 B |
| `0x083BF3F0` | 381,183 B | 539,634 B |

(full list from a live run - re-run the tool rather than trusting this
snapshot as it ages)

The decompressor moved to `tools/gba_compress.py` (shared with the
extraction tool below, so the two can't drift out of sync).

## Extracting to real files - `tools/extract_assets.py`

Runs the same confirmed-block scan and actually writes the decompressed
bytes out, instead of just reporting a size.

Run: `./container.sh tools/extract_assets.py` (writes to `assets/` -
gitignored, like `baserom.gba`: this is decompressed copyrighted game
data, regenerate it locally, never commit it)

- `assets/raw/<addr>_<type>.bin` - every one of the 75 confirmed blocks,
  decompressed for real.
- `assets/png/<addr>_<w>x<h>[_synth].png` - a rendered preview for every
  block whose decompressed size is a clean multiple of 32 bytes (one 4bpp
  GBA tile), on the reasoning that a real tile-graphics asset almost
  always sizes out that way. Rendered as a flat 16-tiles-wide grid - **not**
  necessarily the game's actual on-screen layout, which needs a tilemap
  this pass doesn't have; same raw-content preview any GBA tile viewer
  gives you before you know the real arrangement.
- `assets/manifest.json` - every block's address, type, sizes, file
  paths, and (for rendered ones) which palette got used and its
  `nibble_dominance` score.

**The tile decoder itself is verified correct**, not just "seems to
work": rendered against `dword_81DD9F4`, the Game Boy Player boot-logo
tile data - real, uncompressed, 4bpp GBA tiles with a known address,
already documented in `src/game_boy_player_logo.c` (copied straight to
`BG_CHAR_ADDR` via `sub_8018218`, so there's no ambiguity about what it
is). That render shows a clearly structured, dithered texture, not noise
- confirms the nibble order (low nibble = left pixel) and byte layout are
right.

**What's *not* verified: which of the 75 confirmed compressed blocks are
actually tile graphics at all.** "Decompressed size is a multiple of 32"
is a weak classifier on its own - plenty of non-graphics data (event
tables, that sort of thing) will coincidentally satisfy it. Tried both
several alternate grid widths and an 8bpp reinterpretation on the first
few candidates; none produced an obviously coherent picture the way the
validated Game Boy Player logo render does. That doesn't rule them out
(wrong width alone can make real tile data look like noise - that's normal
for this technique, not a red flag by itself), it just means none of them
are *confirmed* yet the way `0x0851F9E8`'s pointer table was confirmed by
an independent code cross-reference.

`nibble_dominance` (in the manifest, and in the tool's own sorted summary
output) is a cheap secondary signal worth prioritizing by: real GBA tiles
usually have a dominant background/transparent color, so a high share of
one nibble value is at least *suggestive*. Highest-scoring candidate this
pass: `0x08820273` at 60% (25,856 decompressed bytes, real nearby palette
found) - worth a closer manual look before the others.

Bottom line: extraction infrastructure is solid and verified end to end
(decompress -> write file -> render -> confirmed-correct decode). Confidently
labeling *which* files are which kind of asset is real, unstarted work.

## Pointer tables - `tools/find_pointer_tables.py`

Scans the raw rodata bytes themselves for runs of consecutive 4-byte-
aligned words that all decode to plausible ROM addresses (`0x08000000`-
`0x08FFFFFF`) - the signature of a real pointer array (per-level data,
per-character data, a jump table, ...) sitting in memory. Cross-references
every hit's start address against every `.4byte` literal pool entry
already in the disassembled code - a match there means a real function
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
decompilation attempt in `src/option_screens.c` - written before this scan
existed, by someone reading the disassembly by hand. Independent
confirmation the technique finds real structure, not noise.

**337 more candidates without a code cross-reference** - leads, not
conclusions. Most of the ROM isn't disassembled yet, so "no code reference
found" mostly means "the referencing function hasn't been reached yet",
not "this isn't real." Some fraction of these are genuine noise, though:
GBA graphics/compressed data can coincidentally read as pointer-like for a
handful of consecutive words purely because `0x08` is a common high byte
in this address range. Treat a run with regular/incrementing values in its
preview as more likely tile or compressed data than a real table.

## Using these together

The obvious next cross-check - do any pointer table *entries* point at a
confirmed compressed block's start address - doesn't hit anything yet:
none of the table *start* addresses coincide with a compressed block start
(checked; genuinely empty). That's not surprising on reflection: a
pointer table's own address and the addresses it *points to* are different
things, and this pass never checked the latter against the former. Diffing
each confirmed table's individual entry values (not just its start
address) against the compressed-block address list is real, unstarted
work and the more promising version of this idea - a table of pointers to
compressed per-level or per-character assets is a very ordinary GBA data
layout, and would be a strong found-a-real-structure result if it's here.

## Entry-level pointer/compressed-block cross-check - `tools/cross_check_pointer_targets.py`

Does the "using these together" idea above (diffing table *entry* values,
not just table start addresses, against the compressed-block address list)
- run: `./container.sh tools/cross_check_pointer_targets.py`.

**Absolute-pointer hypothesis: 0 hits.** No pointer-table entry (scanned
across all 357 candidate tables the same range `find_pointer_tables.py`
covers) points at a confirmed compressed block's exact start address. Same
negative result as the table-*start* check, now confirmed at entry level
too - genuinely empty, not just unchecked.

**Relative-offset hypothesis: 2 raw hits, both false positives on
inspection.** Prompted by a real precedent already in this repo - the
solidity chain's `SolidityPointerTable @ 0x088E08E0` stores offsets
*relative to a fixed base*, not absolute pointers (see below) - this tries
every 4-byte-aligned word in range as `word + its own address`, unfiltered
(a table of small relative offsets would never pass the absolute-pointer
`looks_like_pointer` check, so it's invisible to the first hypothesis
entirely). Both hits it found turned out to be coincidental:
- `0x082F8B30` sits *inside* the byte stream of another confirmed
  compressed block (`0x082F2EFF`, 115,928-byte RLE) - high-entropy
  compressed bytes reading as a plausible-looking offset by chance, the
  same phenomenon already flagged for the absolute-pointer scan.
- `0x08467D88` sits inside plain Spanish dialogue text (see the new
  section below) - not a pointer table at all.

Bottom line: no evidence of a compressed-asset pointer table using either
addressing scheme, at least not one built from consecutive 4-byte-aligned
words the way `find_pointer_tables.py` looks for structure. Doesn't rule
out a pointer table with a different stride/encoding, just closes off the
two most obvious hypotheses.

## Text/dialogue strings - a new asset class, `tools/find_text_strings.py`

Found by accident while manually inspecting the second false-positive hit
above: `0x08467D88` decodes (Latin-1) as real Spanish dialogue -
`"...Recordad, nuestro reino [ctrl]está en..."` ("Remember, our kingdom is
in..."). Nothing before this pass had looked for *plain, uncompressed*
text sitting directly in rodata - every prior tool in this doc was built
around tile graphics, compressed streams, or pointer tables.

Run: `./container.sh tools/find_text_strings.py [--start ADDR] [--end ADDR]`

Scans for runs of "text-like" bytes: printable ASCII, or one of a narrow
whitelist of the specific accented/punctuation Latin-1 code points Spanish
(and French/German/Italian) text actually uses - deliberately **not** the
whole `0xA0`-`0xFE` Latin-1 range. A first version of this tool tried the
broad range and came back ~99% noise (structured binary data - OAM/
animation-style tables - drifts into that range constantly, the same way
it drifts into looking like plausible pointers). The narrow whitelist plus
requiring a real letter ratio and at least one space character brought
false positives down to near zero - verified by scanning a known 543KB
compressed block (13 tiny junk hits, 327 bytes total, obviously not text)
and the entire pre-rodata code region (2 hits: one junk, one a genuine
font-glyph-ordering table at `0x0819A294` - interesting in its own right,
not dialogue).

**~900KB of directly readable, uncompressed text located**, concentrated
in `0x08200000`-`0x08600000` (binned by 1MB, from a full-range scan):

| Region | Regions found | Bytes | Likely content |
|---|---:|---:|---|
| `0x08200000`-`0x08300000` | 1,586 | 45,348 | UI/system messages |
| `0x08300000`-`0x08400000` | 2,390 | 124,576 | UI/system messages |
| `0x08400000`-`0x08500000` | 14,987 | 695,121 | bulk dialogue/script pool |
| `0x08500000`-`0x08600000` | 1,265 | 49,759 | dialogue (tapering off) |
| `0x08600000`-`0x08D00000` | ~160 combined | ~4,600 | sparse - mostly noise floor from nearby compressed data, not confirmed text |

The `0x08200000`-`0x08400000` region opens with unmistakable, confirmed-
correct save/load menu text in five languages back to back (English,
French, German, Italian, Spanish) - e.g. at `0x08201FA0`:
`"Loading...DO NOT turn the power OFF or remove the Game Pak."` (with
`0xFF`-prefixed control-code bytes removed; see below). This isn't a
guess - it's exactly the standard GBA save-warning message, readable
as-is once the control-code bytes are recognized for what they are.

**Text encoding, characterized but not fully decoded**: plain ASCII plus
accented letters for the four European languages found so far, and `0xFF`
as a control-code escape prefix of **variable total length** - the
sub-opcode byte immediately after `0xFF` appears to determine whether a
further parameter byte follows (2-byte codes: `FF followed by one byte`;
3-byte codes: `FF` + two bytes), inferred from cases like `FF 35` (2 bytes,
no room for a 3rd before the next real text resumes) alongside `FF 0B 01`
(3 bytes) in the same string. **Not confirmed**: which sub-opcode values
mean what (line break, name-insertion, wait-for-input, color change are
the standard GBA-era guesses) - this pass locates and roughly delimits the
text, it doesn't decode the control-code table. A real decode would need
tracing the text-rendering function that consumes these bytes, which
hasn't been found/matched yet.

**Not yet done**: extracting this to real files the way
`tools/extract_assets.py` does for compressed blocks (this pass only
prints candidates), and confirming the `0x08400000`-`0x08500000` bulk pool
is really one contiguous dialogue script table rather than several
distinct pools with different purposes.

## Full ROM asset map - `tools/map_assets.py`

Merges every scanner above (compressed blocks, pointer tables, text
regions, the room-properties/solidity/coldef chain, the Game Boy Player
logo block, every other named symbol in `tools/symbols/rom.txt`) into one
coverage map, so extraction work can target what's actually still unknown
instead of guessing. Also folds in Phase 3's `map_raw_regions.py` for the
CODE realm (`0x08000000`-`0x081DD790`), so the report spans the whole ROM
(`asm/mariobros.s` excluded per the scope decision, not analyzed).

Run: `./container.sh tools/map_assets.py [--top N]` - writes the full
interval list to `assets/rom_map.json` (gitignored, regenerate locally
like every other `assets/` output), prints a human summary.

**RODATA realm (`0x081DD790`-`0x08F50000`, 14,100,592 bytes) coverage, this
pass**:

| Category | Bytes | % |
|---|---:|---:|
| Classified (compressed blocks + pointer tables + text + named structures) | 6,401,664 | 45.40% |
| Confirmed unused padding (see below) | 2,567,604 | 18.21% |
| Genuinely unclassified | 5,131,324 | 36.39% |

**A real, checked finding, not an assumption: most of the single biggest
"gap" turned out to be unused ROM space, not a missed asset.** Before
trusting gap size as "how much is left to find," this pass checked each
gap's zero-byte fraction directly against the actual ROM bytes. The
single largest raw gap (2,567,576 bytes, `0x08CDD268`-`0x08F50000`, right
before the `asm/mariobros.s` boundary) is **100.000% zero bytes** - real,
confirmed padding, not a giant unexamined asset. Every *other* large gap
checked alongside it came back under 1% zero (a handful under 0.6, still
clearly dense real data, not padding wearing a costume) - so this isn't
"most padding is invisible," just this one specific stretch. `map_assets.py`
now separates padding (>=98% zero bytes) from genuine unclassified gaps
automatically; the 36.39% figure above already has padding excluded.

**Worth a look before more gap-hunting**: the padding region's first ~40
bytes aren't all zero - a handful of 4-byte little-endian values decode as
plausible ROM addresses (`0x0816D7B9`, `0x08170719`, `0x08171B61`,
`0x08171AFD`, `0x08171FC1`, all clustered in a ~0x9000-byte code range
around `0x08170000`) separated by runs of zero words. `find_pointer_tables.py`
/ `cross_check_pointer_targets.py`'s table detection requires
*immediately consecutive* 4-byte-aligned valid words, so a sparse,
zero-padded-apart pointer list like this is invisible to it - a real gap
in the existing tooling, not investigated further this pass.

**Top unclassified gaps** (from a live run - re-run the tool for a current
list as more gets classified; top 5 of 13,432 gaps, `--top 25` for more),
each checked for a `0x2X`-pattern Huffman header at its start (none found
- but see caveat below) and GBA-tile-multiple-of-32 sizing:

| Address | Size | Zero-byte fraction | Notes |
|---|---:|---:|---|
| `0x08C754C4` | 418,168 B | 0.001 | no Huffman header, not a multiple of 32 |
| `0x08BB9966` | 332,964 B | 0.002 | same |
| `0x08923B14` | 309,214 B | 0.166 | same |
| `0x08C0AE1C` | 281,511 B | 0.001 | same |
| `0x08527969` | 212,199 B | 0.307 | same |

None of the top 15 gaps had a Huffman-pattern first byte or a clean
32-byte-multiple size. **Caveat**: a gap's own start is just "wherever the
previous classified interval happened to end," not necessarily a real
asset boundary - a compressed block's actual header could sit a few bytes
into a gap rather than at byte 0, so this check is a first-pass filter,
not proof there's no Huffman data here. `gba_compress.py` has no real
Huffman *decoder* yet (`find_compressed_blocks.py`'s Huffman candidates
are header-pattern-only, off by default, and explicitly noted as noisy) -
building one and re-scanning these specific gaps with it is the natural
next step before assuming this 5.1MB is something else entirely.

**Sub-1%-zero-byte density across most of these gaps is itself a small
data point worth carrying forward**: genuinely random bytes would average
~0.4% zero by chance alone, so well under that (0.001-0.002 for the
biggest few) suggests something more structured than either compressed
data (which usually has *some* literal zero bytes) or plain padding -
consistent with either an already-decompressed asset using a narrow,
zero-averse byte-value range, or a GBA compression format this project's
tooling doesn't decode yet (Huffman, or a variant RLE/LZ77 encoding that
fails this project's strict clean-termination check and so never made it
into the 75 confirmed blocks). Not resolved this pass.

**CODE realm (`0x08000000`-`0x081DD790`, 1,955,728 bytes)**: 634,668 bytes
(32.45%) still raw per `map_raw_regions.py`, matching (and updating -
extraction shifts these boundaries slightly as functions get pulled out,
this is a live number) CLAUDE.md's Phase 3 notes: `asm/text08000000.s`'s
crt0/m4a preamble (96,768 B, `0x08000000`-`0x08017A00`) and the
combined ~257KB dialogue/data-table candidate spanning
`0x0819B83C`-`0x081DA3A0` in `asm/text08057568.s` (two adjacent raw runs,
152,658 B + 104,208 B).

## Cross-referencing the community Yoshi Magic editor

The room-properties/solidity work below was already cross-checked against
[Yoshi Magic](https://github.com/CaptainSwag101/YoshiMagic) (a VB.NET
all-in-one editor covering all three GBA M&L games) *after* finding the
structures independently in our own disassembly. This pass went the other
direction on purpose - read the tool's own source first, specifically
looking for anything relevant to the text-string and unclassified-gap
findings above - since it's a decade-plus-old, independently
reverse-engineered reference that's never been mined for the asset-mapping
question directly.

**Text banks, address-confirmed against real ROM bytes (not just trusted
from the VB source).** `Yoshi Magic/Text Editor/Text Editor.vb` hardcodes
three pointer-table bases: story text `0x084E8898` (2,433 lines), battle
text `0x08516E98` (204 lines), additional text `0x08518C88` (12 lines),
each a 20-byte-stride array of 4-byte pointers. Checked directly: reading
a `u32` at `0x084E8898 + entry*20` gives a clean, valid, steadily
incrementing sequence of ROM addresses (`0x083D7C58`, `0x083D7C60`,
`0x083D7C68`, ... +8 each) - real structure, not a guess. Notably,
`0x083D7C58` is **exactly** the end address of this project's own
already-confirmed 1,024-entry pointer table at `0x083D6C58` (see the
Pointer tables section above, `1024 * 4 = 0x1000`, `0x083D6C58 + 0x1000 =
0x083D7C58`) - an unplanned cross-confirmation linking two previously
separate findings. One level further in, these 20-byte records turn out
to be tiny fixed 8-byte encoded strings themselves (e.g.
`00 02 FF 0A 00 00 00 00`, decodable with the control-code rule below as
an empty/placeholder string), not a further indirection.
`0x084E8898` sits inside this pass's `0x08400000`-`0x08500000` bulk
dialogue pool (see the text-strings section above) - direct confirmation
that pool really is the story-text bank, not a guess from address range
alone anymore.

**Text control-code length rule, now fully resolved.** The previous
section left "which sub-opcode values need a parameter byte" unconfirmed.
`Text Editor.vb`'s own byte-to-text loop settles it exactly: after the
`0xFF` prefix, sub-opcode `0x01` or any value in `0x0B`-`0x11` consumes
one further parameter byte (3-byte code total); every other sub-opcode is
a bare 2-byte code. Checked against all four control codes found by hand
in this tool's original discovery sample: `FF 11 00` (`0x11` is in
range -> 3 bytes [ok]), `FF 01 00` (`0x01` -> 3 bytes [ok]), `FF 0B 01` (`0x0B` in
range -> 3 bytes [ok]), `FF 35` (`0x35` not in range -> 2 bytes [ok]) - all four
correct. `tools/find_text_strings.py` now uses this exact rule
(`control_code_len()`) instead of the old length-guessing heuristic, which
had a real bug: it occasionally swallowed a real leading text letter into
the control-code bracket whenever that letter happened to also look
text-like (e.g. `FF 00 44` was misread as a 3-byte code eating the `D` of
"DO NOT", when the correct read is a 2-byte code `FF 00` followed by
literal `D`). Re-running the save-message sample now correctly reads
`"Loading...[00]DO NOT turn [00]the power OFF [00]or remove[00]the Game
Pak."`.

**Sprite/animation pointer-table cluster, address-confirmed.**
`Sprite Viewer.vb` hardcodes five more fixed addresses: main data table
`0x0839EE60`, animation data `0x0839EE8C`, sprite pointers `0x0839EEB8`,
palette pointers `0x0839EEE4`, tile-dimension lookup `0x0839EE04`. Checked
directly: the first four each decode as a clean run of valid ROM
addresses; the fifth doesn't (as expected - it's not a pointer table) but
its raw bytes decode as `08,08,16,16,32,32,64,64,...` when read as u8
pairs, exactly the standard GBA sprite size-mode progression (8x8, 16x16,
32x32, 64x64) - the right content for a "tile dimension lookup table."
This cluster sits right next to `off_839EC80`, an already-named symbol
this project found independently (`tools/symbols/rom.txt`, 388 bytes
before `0x0839EE04`) - the same kind of unplanned cross-confirmation as
the text banks above. **Not yet added to `tools/symbols/rom.txt`** - these
five addresses are solid enough for that (following the exact pattern
already used for the room-properties chain), just not done this pass
since it's a live-build-affecting change and the factory daemon was
running an unattended commit loop at the time; a natural next step
whenever that's convenient.

**CORRECTED 2026-08-23/24. The "dead end" conclusion below was itself
wrong** - measured with a decoder that had three real bugs and could not
actually decode this format, not a genuine negative result. Left in place
with the correction inline rather than deleted, because the wrong
conclusion and why it happened are both worth keeping: CLAUDE.md's own
recurring law (T.15) is that a broken measurement always fails toward
"this work is bad," and this is another instance of exactly that.

The original claim (kept for the record): *"Custom sprite compression,
ported and empirically tested - result: does not explain this project's
biggest unclassified gaps... zero clean decodes found... this specific
format, as ported, isn't the answer for the 5.1MB of genuinely
unclassified rodata - worth recording so nobody re-tries the same dead
end."* `Sprite Viewer.vb`'s `decomp()` sub implements a genuine custom
LZ-style scheme (NOT a GBA BIOS format `gba_compress.py` already handles)
- a control byte's top 3 bits select one of five behaviors (sliding-window
back-reference copy from up to 1024 bytes back, literal copy, zero/literal
pairs, byte-repeat run, zero-fill with an extended-run special case),
terminated by the literal two-byte sequence `0x7F 0xFF`.

**What was actually wrong with `tools/try_custom_decomp.py`,** found by
comparing it directly against the real ARM decompressor at ROM `0x08000534`
(the boot blob's decoder, copied to heap and called through IWRAM function
pointer `0x03000C84` - see the room-properties/coldef section and
`tools/mint_data_symbols.py`'s pass for how that address was traced):

1. **Header skip is off by one.** The port computed
   `pos = off + 1; skip = (data[off] >> 6) + 1; pos += skip` = `off + 2 +
   (b0>>6)`. The real ARM does `ldrb r2,[r0],#1` then `add r0,r0,r2` =
   `off + 1 + (b0>>6)` - every stream was being decoded starting one byte
   late.
2. **`max_iters` capped the decode at 4,096 control ops**, so anything
   larger than a small stream returned `None` even with the off-by-one
   fixed (`0x0800AF20`, 7,909 compressed bytes, is a real example).
3. **No declared-size validation.** The header carries the true
   decompressed size and the port never checked output length against it -
   the exact check that makes a hit trustworthy rather than a coincidental
   terminator match. Without it, "clean terminator" is a weak signal, which
   is exactly why the original pass saw hits landing inside known-RLE
   blocks and (reasonably, given what it could check) dismissed them as
   noise.

A corrected transcription (`mlcomp.py`, ported directly from the ARM
instructions rather than from the VB tool, WITH the declared-size check)
found **1,169 genuine streams, ~4.5MB decompressed**, verified against
already-working committed code: `src/title_screen.c` calls the real
decompressor (via `dword_3000C84`/`sub_80198B0`) on four addresses, and all
four decode cleanly to their exact declared size with this corrected
decoder.

**That, in turn, found a real problem in `assets/manifest.json`: 12 of the
75 "confirmed" BIOS-RLE entries are false positives**, not just the one this
session found first. `find_compressed_blocks.py`'s RLE decoder does require
clean termination at a declared size, so this isn't a weak heuristic being
wrong in the usual way - somewhere in a 14MB scan, real custom-LZ stream
bytes apparently also satisfy the RLE decoder's own termination condition
often enough to produce a "confirmed" hit over a span that is mostly (in 11
of the 12 cases, 50-100%+) covered by genuine custom-LZ streams instead.
Decisive tiebreaker for the first one, `0x0838E18F`: real code reaches
directly into the middle of its claimed 168KB span via the custom-LZ
decompressor, which is only possible if the span isn't one opaque BIOS
block. The other 11 were found by the same coverage test at scale (every
manifest entry's claimed byte range, checked against the 1,169-stream list
for how much of it is actually accounted for by valid custom-LZ streams):

| address | claimed compressed | custom-LZ streams inside | coverage |
|---|---:|---:|---:|
| `0x0838E18F` | 168,162 B | 9 | 7.8% (code-referenced - decisive on its own) |
| `0x08587CA9` | 175,704 B | 103 | 98.5% |
| `0x085E14DC` | 192,327 B | 123 | 96.6% |
| `0x0868FEEF` | 206,634 B | 46 | 99.0% |
| `0x0865347F` | 161,539 B | 42 | 102.1% |
| `0x089C9C10` | 18,362 B | 12 | 102.2% |
| `0x089D608E` | 119,041 B | 80 | 92.7% |
| `0x0861EB56` | 95,660 B | 59 | 84.2% |
| `0x086D8E85` | 216,749 B | 36 | 72.6% |
| `0x08A04B33` | 210,208 B | 33 | 66.7% |
| `0x0898AC48` | 180,733 B | 39 | 50.2% |
| `0x089BBED0` | 47,498 B | 8 | 31.6% |

(coverage over 100% means the streams found extend slightly past the
manifest's claimed compressed_size - consistent with the claimed size
itself being wrong, not just the classification.) **These 12 entries were
removed from `assets/manifest.json`** (75 -> 63 confirmed BIOS blocks);
1,792,617 of the manifest's 5,753,989 total claimed compressed bytes
(31.2%) were affected. The underlying ROM bytes are untouched - only the
classification was wrong - and re-extracting them with the corrected
`mlcomp.py` decoder is real, concrete follow-up work (see the work plan
below), not done this pass.

**Bottom line, corrected:** this format is not a dead end - it explains a
meaningful share of what was previously misclassified, and the remaining
5.1MB "genuinely unclassified" figure is now known to be an overestimate by
at least the 31.2% above. The actual still-open question is what covers the
REST of that figure, not whether this codec matters.

## Room properties and the solidity/collision pipeline

Not from either scanner above - found by hand, prompted by cross-
referencing a community ROM-hacking tool's UI against our own disassembly.
Unlike the tile-graphics classification question above, this one is
address-level confirmed, not a heuristic guess.

### The room record table - `0x083A78D4`

A flat array of 24-byte (`0x18`) fixed-stride records, one per room. At
least five call sites in `text08057568.s` (`sub_8059704`, `sub_8059EC8`,
`sub_805D914`, `sub_80EEE08`, `sub_8123308`) compute
`0x083A78D4 + room_index * 0x18` and load/copy the record wholesale
(`ldm`/`stm` of 6 words) into fixed IWRAM staging addresses (`0x03000DD0`
and `0x03000DE8` - two adjacent 24-byte slots).

This is the exact same table the community
[Yoshi Magic](https://github.com/CaptainSwag101/YoshiMagic) editor calls
`rpbank` (`Dim rpbank As Integer = &H83A78D4`, in its
`Yoshi Magic/roomproperties.vb`) - found independently here via
disassembly first, and only cross-checked against their source afterward.
Their code reads the 24 bytes as a sequence of named fields, which lines
up exactly with the stride and gives a complete field layout for free.
Verified byte-for-byte against a live ROM dump of record 35 - chosen
because that's the exact room a screenshot of their editor's Room
Properties screen happened to show (its "Room Props. Offset: 3A7C1C"
readout is exactly `0x083A78D4 + 35*0x18`):

| Offset | Field (their name) | Type | Record 35's value |
|---|---|---|---:|
| `0x00` | `rnind` - room name index | u8 | 2 |
| `0x01` | `mlind` - Mario/Luigi | u8 | 1 |
| `0x02` | `underwaterflag` | u8 | 0 |
| `0x03` | `ctind` - compressed tile group | u8 | 5 |
| `0x04` | `tsind` - tileset | u8 | 5 |
| `0x05` | `palind` - palette | u8 | 7 |
| `0x06` | `solidind` | u8 | 3 |
| `0x07` | `aniind` - animation | u8 | 3 |
| `0x08` | `unk1ind` | u8 | 0 |
| `0x09` | `laybind` - layer binding | u8 | 2 |
| `0x0A` | `tmodsind` - tile mods | u8 | 0 |
| `0x0B` | `unk2ind` | u8 | 0 |
| `0x0C` | `ls1ind` | u8 | 0 |
| `0x0D` | `ls2ind` | u8 | 0 |
| `0x0E` | `mapscrind` - map scroll | u16 | 35 |
| `0x10` | `npcind` - NPC set | u16 | 35 |
| `0x12` | `ls3ind` | u8 | 0 |
| `0x13` | `ls4ind` | u8 | 0 |
| `0x14` | `songind` - background music | u8 | 8 |
| `0x15` | `unk3ind` | u8 | 0 |
| `0x16` | `itmbkind` - item bank | u16 | 35 |

The `+0x10` field is a nice independent tie-breaker for the whole table:
`sub_80EEE08` (a generic function operating on an unrelated caller struct)
separately reads a record's `+0x10` halfword and uses it as an index into
the already-confirmed 1,024-entry pointer table at `0x083D6C58` (see
above) - exactly matching what the field is named for in the community
source (`npcind`, an NPC-set index).

### The solidity data itself is not `solidind` - it's a separate two-level chain

The obvious guess - byte `solidind` at `+0x06`, a small 0-255 index - turns
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
the community tool's claim - `0x083AAE08` alone is referenced from **17
separate call sites** in `text08057568.s`, and one of them (`sub_805A00C`)
walks the *entire* chain in a single function, then does a straight
row-major byte copy from the resolved ROM address into a working RAM
buffer:

```c
// sub_805A00C, translated to readable pseudo-C from the real Thumb
// disassembly - not a matched decompilation attempt, just a translation
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

`ctx` (still an unidentified pointer - most likely a "current room/map
state" singleton) now has four known field offsets from this alone:
`+0x1E` room index (also used to index the `0x083A78D4` table above - same
ID space, confirmed by both functions agreeing), `+0x26` grid width,
`+0x28` grid height, `+0x9C` pointer to the destination working buffer.

**What this confirms:** where the per-room collision/solidity grid lives
in ROM, and the exact two-level indirection the retail game uses to reach
it - cross-validated two independent ways (our own disassembly first; the
community tool's decade-plus-old, independently-reverse-engineered source
second, consulted only after the addresses were already found here).

**What this does *not* yet tell us:** what the individual grid byte
VALUES mean (which value is "solid," which is "ledge," etc.) - the
community tool just renders them as raw hex in a color-coded grid for a
human to eyeball, it doesn't decode them either. Also still unlocated: the
actual height/gravity/jump-velocity variables that drive the vertical half
of the walk-behind-scenery illusion (see [CLAUDE.md](../../CLAUDE.md) for
why this matters to the project). Both are now much more tractable
follow-ups than before this table was found - the hard part, locating the
data and the code path that reaches it, is done.

Flagged as ready but not yet done: renaming `0x083A78D4`, `0x083AAE08`,
`0x088E08E0`, and `sub_805A00C` via `tools/rename_symbol.py`, the same
pure-text-rename pattern already proven safe on Phase 3's library-code
matches.

### The grid really is spatial tile data - rendered and confirmed

`tools/render_solidity_grids.py` resolves the chain above for all 529
rooms (501 distinct grids after dedup - many rooms share one) purely from
ROM data, no emulation, and renders every one whose resolved size is a
clean multiple of 30 bytes with a small byte alphabet (2-8 distinct
values - the "plausibly real behavior data, not noise" filter). Run it
yourself: `./container.sh tools/render_solidity_grids.py`, then look in
`assets/solidity/png/` (176 renders as of this pass, gitignored like every
other `tools/extract_assets.py`-style output).

**Grid width is 30 tiles** (240px - one exact GBA screen width at
8px/tile). Not a guess: 407 of the 501 resolved grids are an *exact*
multiple of 30 bytes - clean heights seen include 10, 20, 30, 50, 60, and
150 tiles. 93 more are exactly 2 bytes over a multiple of 30 (equivalent
to height 5, 15, ... plus 2 mystery bytes) - inspected the first bytes of
several and they don't clearly distinguish "real 2-byte header" from
"alignment padding," so that part's left open.

Rendering the width-30 family at that width produces genuinely coherent
shapes, not noise - solid rectangular blocks, floor bands spanning the
full width, evenly-spaced vertical columns. Two clean examples, both
30x10 (`tsolidind` is the resolved-table index, not a room number - see
`assets/solidity/manifest.json` for which rooms point at which grid):

- **`tsolidind=74`**: two elevated block/platform shapes side by side.
  `0x18` forms each platform's top edge, `0x2D` is the solid interior
  beneath it, `0xFD` sits as a marker on top of each - and two *other*
  grids (`tsolidind=73` and `75`) are near-identical variants of the same
  layout, which is exactly what you'd expect from the same room in
  slightly different game-progress states.
- **`tsolidind=37`**: a solid mass in one corner with a stepped platform
  below it, two evenly-spaced single-tile-wide vertical columns sitting in
  open floor space, and a floor band spanning the full 30-tile width along
  the bottom two rows.

**Value families that recur across unrelated rooms** (not exhaustive -
just patterns that showed up often enough to name):
- `0x00` / `0x01` / `0x02` - small integers, `0x00` usually dominant -
  plausibly open space / floor / a floor variant.
- `0x18` / `0x19` / `0x2D` - `0x18` recurring specifically as a block's
  edge/outline and `0x2D` as that same block's solid interior, in
  multiple unrelated rooms, not just the `74`/`73`/`75` cluster above.
- `0xFF` with `0xFB`-`0xFD` - `0xFF` overwhelmingly the most common value
  wherever it appears (plausible "open/default" sentinel); `0xFB`/`0xFC`/
  `0xFD` sit numerically just below it (-5/-4/-3 as signed bytes) and only
  ever show up in small counts - a handful of special-behavior codes
  rather than more open-space variants, is the working guess.

**Still not confirmed: what any specific value actually *does* in-game** -
does `0x2D` block movement outright or just visually, is `0x18`
specifically a ledge and if so which direction is passable. The shapes
are strong evidence this is real per-tile behavior data with a small
enum, not proof of any single value's exact behavior - that needs
correlating specific tiles against what's actually on screen in those
rooms, which nothing here does yet.

### The missing link: grid bytes are indices into a per-room coldef array

Found by reading the three functions clustered immediately after
`stage_room_solidity_grid` (renamed from `sub_805A00C`, see above) in
`text08057568.s` - `load_col_set_to_dest`, `get_coldef_ptr_by_idx`,
`get_coldef_ptr_by_xz` - names the original decompilation pass had
already given these functions (unlike the `sub_XXXXXXX` default) even
though nobody had extracted or explained them yet. That was the tell
that they were worth reading closely.

`get_coldef_ptr_by_xz(ctx, x, z)` computes `width*z + x` and indexes
straight into `ctx->working_grid` (`ctx+0x9C`) - **the exact same buffer**
`stage_room_solidity_grid` fills from the spatial solidity grid (confirmed
by the identical `+0x9C` field offset, not just similar code shape). It
reads one grid byte, then passes it as `idx` to:

```c
get_coldef_ptr_by_idx(ctx, idx) { return ctx->active_coldef_array /* ctx+0xA0 */ + idx * 4; }
```

So a solidity grid byte is not a self-contained enum tag - **it's an index
(0-255) into a 256-entry array of 4-byte structs**, one array "staged" per
room. `load_col_set_to_dest` does that staging: it reads the room's
`solidind` field (room_props_table `+0x06` - the field the community
Yoshi Magic tool's own source tried and apparently gave up on, per its
commented-out code, see above) as an index into a **newly found** 14-entry
pointer table at `0x083AADD0` (renamed `col_set_ptr_table`), each entry
pointing at one 256-entry x 4-byte coldef array:

```
room_props_table[room].solidind (+0x06)
  -> col_set_ptr_table @ 0x083AADD0   (14 x u32, indexed by solidind)
       -> one of 14 coldef arrays (081E2860, 081E2F78, 081E2B78, 081E3378, ...)
            each 256 entries x 4 bytes, copied wholesale into ctx+0xA0

grid_byte = working_grid[z * width + x]        (the spatial byte from stage_room_solidity_grid)
coldef    = active_coldef_array[grid_byte]      (get_coldef_ptr_by_idx/by_xz)
```

This closes the exact gap the section above called "the actual bulk of
this phase... unstarted": **why grid byte values recur across unrelated
rooms with the same apparent visual role.** They're not universal - each
room selects one of 14 possible 256-entry lookup tables via `solidind`,
and the grid byte is the lookup key, not the meaning itself. `0x18`/`0x2D`
looking like a consistent edge/interior pair across many rooms just means
those rooms happen to share (or coincidentally agree on) the same
`solidind`.

**The coldef struct itself, read across all 14 arrays (3,584 entries)**:
4 bytes, `{b0, b1, b2, b3}`. `b3 & 0x7F` clusters into small runs of 3
consecutive values (`5,6,7` / `9,10,11` / `13,14,15` / `21,22,23` / ... up
to `101,102,103`, plus two lone values `47` and `74`) - consistent with a
"type" field that's actually `base_type*4 + facing_or_edge_variant`, three
variants per type (a slope's up/down/flat, or three passable-edge
directions, is the working guess; not confirmed). `b3 & 0x80` is set for
roughly half of all entries and looks like an independent flag layered on
top of the same type numbering (same `5/6/7`-style clusters appear both
with and without the high bit set). `b2` is nonzero in 1,541/3,584
entries (43%) - real data, not alignment padding. `b0`/`b1` vary
per-entry and are the leading candidates for the still-unlocated
height/offset value the physics illusion needs (see CLAUDE.md's "walk
behind scenery" framing) but that's not confirmed - nothing here traces a
coldef's `b0`/`b1` into an actual Y-position or gravity calculation yet.

One live caller found so far: `sub_80F0618` (`text08057568.s`, deep in
still-raw territory, nowhere near being split) calls
`get_coldef_ptr_by_xz(ctx, x, z)` and feeds the returned 4-byte pointer
into `sub_80E9C4C`.

### SOLVED: the slope/height semantics, decoded from `sub_8160854`

**This closes the "which byte is height, which is a slope/edge type enum"
question left open above** - and it confirms the `b0`/`b1` hypothesis
rather than overturning it.

Found by pulling on a thread from the other end: `split_trailing.py`
recovered `sub_8158E70`, a 32-byte function Luvdis never labeled, whose
only job is to call `sub_8160854`, convert the result to 8.8 fixed point
(`lsls #16` / `asrs #8`), and store it to two fields. Following that call
led straight into the height lookup.

`sub_8160854(ctx, x_8_8)` resolves **surface height in pixels at a given
X**:

```
tile_x = (x_8_8 >> 8) >> 3           // 8.8 fixed -> pixels -> 8px tiles
idx    = tile_x % *(u16*)(ctx+0x820) // 0x820 = row width in tiles
rec    = ((u32**)(ctx+0x80C))[0][idx]  // 4-byte record per tile
h      = (s8)(rec & 0xFF) * 8        // byte 0: signed height in TILES -> pixels
type   = (rec >> 8) & 0xF            // byte 1 low nibble: slope type
f      = pixel_x % 8                 // offset within the tile, 0..7
```

then dispatches `type` through a 7-entry jump table at `0x0816089C`
(anything `> 6` falls through to the flat case). Every handler was
disassembled and the arithmetic read out; the full set is a textbook 2D
slope tileset:

| type | returns | meaning |
|------|---------|---------|
| 0 (and >6) | `h` | flat |
| 1 | `h + f` | 45° ascending |
| 2 | `h + 8 - f` | 45° descending |
| 3 | `h + 8 - f/2` | 22.5° descending, upper half |
| 4 | `h + 4 - f/2` | 22.5° descending, lower half |
| 5 | `h + f/2` | 22.5° ascending, lower half |
| 6 | `h + f/2 + 4` | 22.5° ascending, upper half |

Two 45° directions plus four 22.5° half-slopes (two halves x two
directions) plus flat - exactly the shape a platformer needs, and it
explains the "three variants per type" clustering noticed in `b3` above.
All divisions are round-toward-zero (`cmp/bge/adds #7` before `asrs #3`,
`lsrs #31/adds/asrs #1` for the halves), which matters for matching.

**Honest scoping**: the record `sub_8160854` indexes lives behind
`ctx+0x80C`, and this trace does *not* prove that pointer resolves to the
same 14 coldef arrays documented above - it proves the record has the
same 4-byte shape and that its first two bytes decode as height + slope
type. Confirming `ctx+0x80C` is the coldef array (rather than a parallel
per-row structure) is the remaining step, and it's a pointer trace, not a
semantics question.

### RESOLVED: `ctx+0x80C` is NOT the coldef array - it is a per-column cache built from BG tilemap tile IDs

The pointer trace above was done, and the answer is a **negative** one, which
is worth recording precisely so nobody spends a session re-chasing the
connection. `ctx+0x80C` and the `col_set_ptr_table` coldef arrays are two
**parallel, unrelated** mechanisms that happen to share a 4-byte record
shape.

Only four game-proper functions besides `get_surface_height_at_x` reference
offset `0x80C` (found by grepping the literal `0x0000080C`; the other 15 hits
are inside `mariobros.s` and out of scope). Together they give the whole
lifecycle:

| function | role |
|---|---|
| `sub_8160EC4(ctx)` | init - stores 0 to both `ctx+0x804` and `ctx+0x80C` |
| `sub_815FB88` | allocation path |
| `sub_8160C64(ctx)` | **fill** - `for i in 0..*(u16*)(ctx+0x820): ((u32*)*(ctx+0x80C))[i] = sub_81606C8(ctx, i)` |
| `sub_8160E6C(ctx)` | teardown - `free_heap_8018D9C` on both pointers, then nulls them |

So `ctx+0x80C` is a **heap-allocated array of one 4-byte record per tile
column**, exactly `*(u16*)(ctx+0x820)` entries long - the same value
`get_surface_height_at_x` takes its `%` against. Not a 256-entry coldef
array, and not indexed by a solidity-grid byte.

**Where the records actually come from.** `sub_81606C8(ctx, column)` scans
that column of the **background tilemap** downward and returns the record:

```
for row in 0..0x1F:                       // 32 rows, top to bottom
    entry = *(u16*)( *(u32*)(ctx+0x808) + (row * *(u16*)(ctx+0x820) + column) * 2 )
    id    = entry & 0x3FF                 // standard GBA text-BG map entry
    switch (id) { 0xA3, 0xA6, 0xB2, 0xC4, 0xCF, 0x1A6, ... }
        // on a match:
        rec.b1 = (rec.b1 & 0xF0) | slope_type
        rec.b0 = row                      // <- height, in TILES
        return rec
// nothing found in 32 rows:
rec.b1 &= 0xF0                            // type 0 = flat
rec.b0 = 0x20                             // floor at the bottom
```

`ctx+0x808` is therefore a pointer to a u16 tilemap and `ctx+0x820` its row
width in tiles. This independently re-derives the two fields
`get_surface_height_at_x` decodes: **`b0` is the row index at which a
surface tile was found**, i.e. height in tiles, and **`b1`'s low nibble is
the slope type** - confirmed from the write side, not inferred from the
read side.

**The slope variant comes from the tile's HORIZONTAL FLIP bit.** The
function keeps `0x400` in `r7` and tests it against the raw map entry -
bit 10 of a GBA text-mode BG map entry is hflip. For one marker tile,
hflip set yields type **4** and clear yields type **5**; for another, set
yields **3** and clear yields **6**. Against the decoded table above those
are exactly the mirrored pairs - 4/5 the two 22.5° *lower* halves
(descending vs ascending) and 3/6 the two *upper* halves. A level author
draws one slope tile and mirrors it in the map editor; the physics reads
the same flag the renderer does. That is a strong cross-check on the table,
arrived at from the opposite end of the pipeline.

**What this leaves open.** The coldef path (`col_set_ptr_table` ->
`load_col_set_to_dest` / `get_coldef_ptr_by_xz`) is real, live code and is
*still* unexplained in terms of what consumes it - it is simply not what
feeds `get_surface_height_at_x`. Note also that `load_col_set_to_dest`
copies all 256 entries (8 words per unrolled iteration until `r4 > 0xFF`)
**out of** `col_set_ptr_table[solidind]` **into** `*(u32*)(dest+0xA0)`; the
current unproven `#else` draft in `src/load_col_set_to_dest.c` has that
copy backwards and will not match as written.

### `sub_80E9C4C` traced by hand - result: generic engine flag/counter storage, not physics data

Register-level trace (not decompiled, just read by hand - three functions,
`sub_80E9C4C`/`sub_80E9958`/`sub_80E9A6C`, none extracted yet). **This
closes the "what does `sub_80E9C4C` do with the coldef fields" question
from above, but the honest answer overturns the hypothesis it was framed
around**: `sub_80E9C4C` barely touches the coldef pointer's *fields* at
all - it's a 3-way dispatcher keyed on a completely different value,
`ctx->field_0x00` read as a signed 16-bit ID:

- ID `0`-`60`: calls `sub_80E9BD8(param1)` - the coldef pointer isn't
  even passed into this branch.
- ID `61`-`7116`: calls `sub_80E9958(param3, param4, ID-61, coldef_ptr & 0xFF)`.
- ID `7117`-`7508`: calls `sub_80E9A6C(ID-61, coldef_ptr & 0xFFFF)`.
- ID `>7508`: no-op.

`sub_80E9958` and `sub_80E9A6C` both turn out to be **write-one-value-
into-a-shared-global-structure** functions, not physics calculations.
Both compute an address into `*(0x03000FC0)` (a fixed IWRAM pointer slot,
referenced from **17 different files** across the disassembly - a real,
widely-used engine singleton, not a one-off) using an offset and index
derived purely from the ID, then store the coldef pointer's low bits
(truncated to 1 bit, 1 byte, or 1 halfword depending on which ID
sub-range) at that address. The four distinct sub-arrays found, by offset
within that structure:

| Offset | Element size | Approx. count (from ID sub-ranges) | Access |
|---|---|---:|---|
| `+0x20` | 1 bit | ~7,007 | bit set/clear (`sub_80E9958`, low ID range) |
| `+0x394` | 2 bytes | 64 | halfword store (`sub_80E9A6C`, top ID range) |
| `+0x414` | 1 byte | ~295 | byte store (`sub_80E9A6C`, low-mid range) |
| `+0x53C` | 1 byte | ~31 | byte store (`sub_80E9A6C`, mid range) |

This is the classic shape of an RPG's global event-flag/counter table (one
big bitfield for boolean story/world flags, plus a handful of byte/
halfword counter arrays) - not anything coldef-specific. **What this
means for the physics question**: `sub_80F0618`'s particular call
(`ctx->field_0x00` as the flag ID, the room-tile coldef lookup's low bit
as the value) reads as "record a one-bit fact about this tile's collision
entry into the global flag table" - plausibly a one-time-trigger
bookkeeping bit (switch tile already activated, block already broken,
that kind of thing), not a raw height/gravity value being extracted from
the coldef struct. **The original hypothesis - that `b0`/`b1` of a coldef
entry hold the height/gravity value the physics illusion needs - is
neither confirmed nor ruled out by this**: this was only ever one call
site out of what's likely several, and it happens to be a bookkeeping
path rather than a rendering/physics path. The real height/gravity
variable is still unlocated; this thread's value is a different, real
finding instead - a widely-used global structure worth knowing about for
other decompilation work, discovered as a side effect.

**Not yet renamed** (same reasoning as the sprite pointer cluster above -
live-build-affecting change, held off during the factory's unattended
run): `sub_80E9C4C` as something like `set_engine_flag_by_id`,
`sub_80E9958`/`sub_80E9A6C` as its bit/byte/halfword-array internals, and
`0x03000FC0` itself as `engine_flags_ptr` or similar once someone finds a
cleaner name from further context. Worth doing once it's safe to touch
`tools/symbols/rom.txt` again.

**Symbol renames applied for this finding** (verified byte-identical
rebuild afterward - `mlss.gba: OK`): `sub_805A00C` ->
`stage_room_solidity_grid`; new `tools/symbols/rom.txt` entries
`room_props_table` (`0x083A78D4`), `col_set_ptr_table` (`0x083AADD0`),
`room_solidity_index_table` (`0x083AAE08`), `solidity_grid_offset_table`
(`0x088E08E0`). This is a new pattern for this project worth noting: these
four addresses only ever appear as raw hex literals inside still-*raw*,
unextracted `asm/text08057568.s` (not decompiled C), so renaming them to
symbolic names relies on the linker's `--just-symbols=symbols.txt`
resolving an otherwise-undefined symbol reference *inside a `.s` file
that's assembled standalone before linking* - mechanically different from
Phase 3's renames, which were all local `thumb_func_start` labels needing
no cross-file resolution at all. It works (confirmed by the rebuild), but
it's worth knowing this is a slightly different safety argument than the
one CLAUDE.md documents for Phase 3, in case a future rename of this kind
ever does something surprising.
