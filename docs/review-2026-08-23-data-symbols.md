# Data-side review, 2026-08-23

Lane: Phase 3 raw regions, symbol minting, the 84KB blob, Phase 4 assets,
collision/physics. Function side was 26.3% matched when this started
(`tools/progress.py`: matched 1574 / 5996 game proper; in progress 3687;
not started 714; not extracted 21).

Nothing here is committed. Patches live in
`/tmp/claude-1000/-home-tyler-Desktop-mlss/83e8aafe-b95b-4e2c-aff3-f2d4464296a2/scratchpad/dataside/`.
New tool committed to the working tree but not to git: `tools/mint_data_symbols.py`.

---

## 1. INSTRUMENT BUG: `map_raw_regions.py` under-reports the raw code realm by 1000x

`map_raw_regions.py` scans `asm/*.s` only. It does **not** scan
`asm/nonmatching/*.s`. Extraction moves raw `.byte` data out of the blobs and
into fragments, so the tool's number falls as extraction proceeds **without any
data being classified**.

Live figures:

    ./container.sh tools/map_raw_regions.py            -> 851 regions, 650,492 B
    ...excluding mariobros                             -> 20 regions,     440 B  (!)
    ...plus asm/text08000000 0x08000000-0x08017A00     ->             96,768 B

    raw .byte bytes hiding inside asm/nonmatching/*.s  ->   496,022 B
      (3,156 fragments carry raw .byte; counted by summing comma-separated
       operands on every `.byte` line under asm/nonmatching/)

So the true still-raw code-realm figure is **~593,000 bytes**, not the 440 the
tool reports. CLAUDE.md's Phase 3 statement that the two big
`text08057568.s` runs are open is still correct - they just moved:

| fragment | raw bytes | what CLAUDE.md calls it |
|---|---:|---|
| `asm/nonmatching/sub_819BABC.s`  | 152,658 | the ~152KB "mixed code + data" run |
| `asm/nonmatching/sub_81C0F7E.s`  | 104,208 | the ~104KB pure-data run |
| `asm/nonmatching/sub_8041FFC.s`  |   9,380 | |
| `asm/nonmatching/sub_812FC4C.s`  |   8,538 | |
| `asm/nonmatching/sub_811EE20.s`  |   7,470 | |
| (3,151 more)                     | 213,768 | |

`sub_81C0F7E` is a **2-byte function** (`bx r3`, a non-word-aligned interworking
veneer) with 104,208 bytes of data glued to its fragment. It is one of the three
`non_word_aligned_thumb_func_start` sites CLAUDE.md documents. If it ever
matches, workflow step 7 says "delete the fragment" - that would delete 104KB of
ROM. `gitops.finish_match()` is documented as refusing to delete a fragment
carrying trailing data; that guard is load-bearing here and worth re-verifying.

**Fix**: make `map_raw_regions.py` walk `asm/nonmatching/*.s` too (each fragment's
base address is in its name / the `@ 0805A064` comment), or add a second tool.
Until then any "how much raw data is left" number from it is wrong.

---

## 2. SOLVED: the 84KB blob at 0x08003000-0x08017A00 is compressed GRAPHICS,
## and the game's own decompressor is 264 bytes of ARM at ROM 0x08000534

CLAUDE.md: *"Best current description: a large, heavily-referenced,
byte-addressed data blob in a custom/packed format."* That is now fully
resolved, by following code references rather than statistics.

### How it was found

The census in section 3 turned up 10 unnamed addresses inside the blob that are
loaded from real disassembled code. Reading those call sites:

    sub_81511E4 @ _0815161C:
        ldr r1, =0x0600C000        ; VRAM
        movs r2, #0x80 ; lsls r2,#3 ; = 0x400
        ldr r0, =0x0800D210
        bl CpuFastSet              ; <- RAW tile data straight into VRAM

    sub_8161080:
        ldr r4, =0x0800AF20
        bl sub_80198B0             ; <- returns DECOMPRESSED SIZE
        bl alloc_zero_8018DB4      ; heap buffer of that size
        ldr r2, [0x03000C84]       ; <- a FUNCTION POINTER in IWRAM
        bl _call_via_r2            ; <- DECOMPRESS(src=0x0800AF20, dst=buf)
        ldr r1, =0x06000000 ; r2 = 0x2000 words
        bl CpuFastSet              ; <- 32KB into VRAM char base 0
        bl free_heap_8018D9C

`sub_80198B0` decodes a varint size header: `n = b0>>6`, `size = (b0 & 0x3F) |
(b1<<6) | (b2<<14) | (b3<<22)`, `+1`; header is `1 + n` bytes.

`0x03000C84` is installed by `sub_8019940` (already drafted in
`src/sub_80197C4.c`):

    buf = alloc_zero_8018DB4(0x108, 0, 0x081DD7D0, 0);
    *(s32 *)0x03000C84 = buf;
    CpuSet(0x08000534, buf, 0x108/4 words);   /* copy 264 bytes of ARM code */

So **ROM 0x08000534..0x0800063C is a 264-byte relocatable ARM decompressor**,
copied to the heap at boot and called through `0x03000C84`. Note
`0x08000534 + 0x108 == 0x0800063C`, which is exactly the existing
`sub_800063C` symbol in `tools/symbols/rom.txt` - the label immediately after
the blob. Independent confirmation of the extent.

### The codec, transcribed from the ARM at 0x08000534

    r0 = src, r1 = dst
    skip 1 + (src[0] >> 6) header bytes
    loop:
      ctl = *src++
      if (ctl & 0x80):
          len = (ctl & 0x1F) + 1
          switch (ctl & 0x60):
            0x00: copy len literal bytes
            0x20: len times { *dst++ = 0; *dst++ = *src++; }
            0x40: b = *src++; emit b repeated (len + 1) times
            0x60: if (ctl == 0xFF) len = *src++ + 32;   emit len zero bytes
      else:
          b2 = *src++
          if (ctl == 0x7F && b2 == 0xFF) return;                  /* terminator */
          off = (b2 | ((ctl & 3) << 8)) - 1024;                   /* 10-bit, negative */
          len = 2 + (ctl >> 2)
          len times { *dst = dst[off]; dst++; }                   /* byte-wise, overlapping */

Transcription in `scratchpad/mlcomp.py`.

### Verification and the resulting map of the region

Sweeping 0x08002E00-0x08017A00 for offsets that decode cleanly **and whose
output length equals the header's declared size**: **15 streams, 0 false
positives**, covering 60,912 of 84,992 bytes (71.7%), expanding to **344,064
bytes**.

Every one is an exact multiple of 32 (a 4bpp GBA tile) and of 2048 (a screen
block). Sizes: 6,144 / 14,336 (x4) / 28,672 (x6) / 30,720 (x2) / 32,768.
`nibble_dominance` 33-79% (the repo's best previously-unconfirmed graphics
candidate scored 60%). Five have a valid BGR555 palette at exactly -32 or -512
bytes.

Inspecting decompressed bytes settles what they are - both kinds are present:

    0x0800AF20 -> 00 00 ... (blank tile) then 4bpp pixel data   = TILE GRAPHICS
    0x080079A0 -> c2 11 c3 11 c4 11 c5 11 ...                   = BG TILEMAP
                  (u16 entries: tile 0x1C2,0x1C3,0x1C4,0x1C5 palbank 1)
    0x08011400 -> 82 00 01 00 02 00 03 00 ...                   = BG TILEMAP

The 24,080 uncovered bytes are: 1-15 byte alignment pads between streams; a
1,056 B head gap at 0x08002E00; and two genuine uncompressed regions -
0x0800CE05-0x0800E210 (5,131 B, contains 0x0800CE10 / 0x0800D010 / 0x0800D210,
all CpuFastSet directly with no decompression) and 0x0801349A-0x08017A00
(17,766 B, contains 0x0801349C which `sub_804E0D8` indexes as a byte lookup
table, and 0x08014104 which `sub_80A5ABC` passes to `sub_810D738`).

Renders (gitignored, regenerate locally): `assets/blob84k/*.png`.

**This retires CLAUDE.md's "custom/packed format, do not spend time on it" note
for this region.** It is the boot/title/menu graphics bank, in the game's own LZ
format, and it is fully decodable today.

---

## 3. `tools/try_custom_decomp.py` has three defects; its documented negative
## result must be re-opened

docs/formats/README.md records: *"this specific format, as ported, isn't the
answer for the 5.1MB of genuinely unclassified rodata - worth recording so
nobody re-tries the same dead end."* That conclusion was measured with a decoder
that cannot decode this format. Compared against the ARM at 0x08000534:

1. **Header skip is off by one.** The port does
   `pos = off + 1; skip = (data[off] >> 6) + 1; pos += skip`
   = `off + 2 + (b0>>6)`. The ARM does `ldrb r2,[r0],#1` then `add r0,r0,r2`
   = `off + 1 + (b0>>6)`. Every stream is decoded starting one byte late.
   Measured: `0x08005C60` b0=0x7F -> ARM skips 2, port skips 3;
   `0x0800AF20` b0=0xBF -> ARM skips 3, port skips 4.
2. **`max_iters: int = 0x1000`** caps the decode at 4,096 control ops.
   `0x0800AF20` (7,909 compressed bytes) returns `None` even with the
   off-by-one removed.
3. **No declared-size validation.** The header carries the decompressed size
   and the port never checks the output against it. That check is the entire
   reason the sweep in section 2 has zero false positives; without it "clean
   terminator" is a weak signal, which is exactly why the earlier pass saw
   hits landing inside known-RLE blocks and correctly dismissed them as noise.

A/B, same offsets (`decomp_custom` vs. the ARM transcription):

| addr | ported | ported, max_iters=1e7 | ARM-derived | declared |
|---|---|---|---|---|
| 0x0800AF20 | None | None | 32,768 | 32,768 |
| 0x08005C60 | 14,350 | 14,350 | 14,336 | 14,336 |
| 0x0800E210 | 6,171 | 6,171 | 6,144 | 6,144 |

The 14/27-byte overshoots are the off-by-one propagating.

This is the repo's own recurring pattern (CLAUDE.md T.15): *a broken measurement
always fails toward "this work is bad".* The negative was directional, so it
survived.

**A corrected rodata sweep is running** (0x081DD790-0x08F502B8, stride 2,
declared-size check, `scratchpad/dataside/rodata_sweep.log`). A 1MB pilot slice
at stride 4 already returned 3 clean streams:
`0x08213004` (4,146 -> 7,392), `0x0821908C` (620 -> 2,048),
`0x082192F8` (4,965 -> 8,960). All three sit right beside `0x082125F0` /
`0x082127C0`, the tag arguments `sub_81511E4` / `sub_8161080` pass to
`alloc_zero_8018DB4` - i.e. exactly where this codec's assets should be.

If the full sweep confirms the rate, this is the single biggest Phase 4 lever
available: the 5.1MB "genuinely unclassified" rodata figure in
docs/formats/README.md was computed with this codec excluded on a false
negative.

---

## 4. Symbol minting at scale: PROVEN byte-neutral, 948 addresses, one caveat

New tool: **`tools/mint_data_symbols.py`** (census by default, `--apply` to
write, `--symbols-only` to skip the asm rewrite, `--min-refs` / `--max` to
bound a batch).

### Census (n from the live tree)

Scanning every `.4byte`/`.word` literal in `asm/*.s` + `asm/nonmatching/*.s`:

    total .4byte/.word operands            24,622
      plain constants                       9,785
      IWRAM  (0x03xxxxxx)                   5,142
      already SYMBOLIC                      4,471
      ROM pointers (0x08xxxxxx)             3,739   <- the population of interest
      IO regs / EWRAM / pal-vram-oam        1,485

    distinct ROM addresses, game proper        982
      already named (symbols/*.txt or an asm label)  34
      inside an already-disassembled function         0
      MINTABLE                                      948
        rodata081E2764   741
        code             156
        rodata081DD790    51

(`asm/mariobros.s` excluded: 315 further distinct addresses, out of scope.)

This reconciles with CLAUDE.md T.10's "684 distinct" - that figure was counted
over m2c *candidate bodies*, which only cover unmatched functions. 948 is the
whole-corpus figure, and 3.5% of it is currently named (34/982), matching
T.10's 3.2%.

### Naming

Follows the existing IDA-style convention in `tools/symbols/rom.txt`
(`dword_83A0E94`, `word_83A74C0`, `byte_83A74E9`). The prefix records the
**access width observed at the use site**: find the `ldr rN, _0XXXXXXX` that
loads the literal, then the first `ldrb/strb/ldsb` (byte), `ldrh/strh/ldsh`
(word), `ldr/str` (dword) through rN before it is clobbered. Width is a hint
in the name only - being wrong about it cannot change a byte, because the
symbol asserts nothing but the address.

Widths were recoverable for a minority (most literals are passed straight to a
call with no local deref); those default to `dword_`.

### The safety argument, and the proof

Minting is safe by construction: the symbol asserts only that the name resolves
to exactly the address the code already loads, and that address was taken FROM
the load. `--just-symbols=symbols.txt` resolves it - already proven in this repo
by the `room_props_table` / `col_set_ptr_table` renames.

Verified end to end, **all 948 at once**:

    tools/mint_data_symbols.py --apply
      -> appended 948 entries to tools/symbols/rom.txt
      -> rewrote 2,272 literal-pool entries across 1,051 files
    rm -rf build/ && ./container.sh make
      -> mlss.gba: OK
    sha1sum mlss.gba
      -> 7c303cdde5061ee329296948060b875cb50ba410   == rom.sha1
    ./container.sh tools/check_layout.py
      -> layout OK - .text 0x08000000 size 0x1000000, every self-addressed
         symbol links at its own address

The tree was then **reverted**; the change is delivered as patches (below).

### THE CAVEAT, and it is the reason to split the patch in two

Rewriting `.4byte 0x0800AF20` to `.4byte dword_800AF20` is byte-neutral for the
linked ROM but **NOT** neutral at the OBJECT level: the assembler emits a zero
word plus an `R_ARM_ABS32` relocation instead of a literal word. Measured on
`asm/nonmatching/sub_8161080.s`, assembled before and after:

    .text size    0x100 both
    .text BYTES   DIFFER (byte 129 - the rewritten literal)

Every function-side tool that compares a candidate's `.text` against the
assembled fragment - `isolation_exact.py`, `twin_backfill._text_image`,
`compiler_variants.py` - uses that fragment as the RETAIL side. Stored candidate
bodies contain the raw `0x08...` constant and would compile to a plain word,
so **each rewritten fragment would produce a false mismatch until its rows are
re-seeded through m2c**. That is CLAUDE.md O.2's rule ("any tool that changes a
fragment's CONTENT must requeue its rows") applying here.

2,258 of the 2,272 rewrites land in `asm/nonmatching/*.s` (1,048 fragments);
only 14 land in the three un-split `asm/*.s` blobs.

### Delivered as two patches

`scratchpad/dataside/`

| patch | contents | safe to apply |
|---|---|---|
| `01-mint-symbols-only.patch` | 948 entries appended to `tools/symbols/rom.txt` (952 lines) | **yes, any time.** An unreferenced symbol definition emits no bytes. Run `tools/gen_symbols.py` after. |
| `02-rewrite-literal-pools.patch` | the 2,272 literal rewrites (17,659 lines) | **only paired with** a full m2c re-seed + `isolation_exact.py --apply` refresh + requeue of the affected rows |
| `mint-948.patch` | both, combined - the exact tree that produced the SHA1 above | |

---

## 5. `src/load_col_set_to_dest.c` - the backwards draft, diagnosed and redrafted

CLAUDE.md flags this as a known-wrong draft. Confirmed, and it is wrong in
three ways, not one. Reading `asm/nonmatching/load_col_set_to_dest.s`:

    r1 = *(u8 *)(0x03000DD0 + 6)          ; solidind, from the staged room record
    r1 = &col_set_ptr_table[solidind]
    r2 = *r1                              ; SOURCE  = col_set_ptr_table[solidind]
    r3 = dest + 0xA0                      ; address OF the destination pointer slot
    loop (8 words per iteration, i = 0..0xFF):
        r1 = *r3                          ; reload the dest base EVERY store
        *(u32 *)(r1 + ((i + k) << 2)) = *(u32 *)(r2 + k*4)
        r2 += 0x20 ; i += 8

The current `#else` draft:

    ptr = (u32*)((u8*)col_set_ptr_table + (temp << 2));   /* &table[i], not table[i] */
    src = dest + 0xA0;                                    /* the SLOT, not *slot   */
    *(u32*)((u8*)ptr + i) = *(u32*)((u8*)src + i);        /* direction REVERSED    */

so it (a) copies the wrong way, (b) never dereferences `dest+0xA0`, and (c)
uses the address of the table entry rather than the entry. As written it would
overwrite `col_set_ptr_table` itself.

Also worth recording as a semantic finding: **`0x03000DD0 + 0x06` is
`room_props_table[room].solidind`** - `0x03000DD0` is one of the two 24-byte
IWRAM staging slots docs/formats/README.md already identifies as the
destination of the room-record `ldm`/`stm` copy. So this function reads the
staged room record directly rather than being passed an index, which closes a
small gap in that write-up.

Corrected draft (semantics verified against the disassembly; **not yet a
match** - see below):

```c
extern void col_set_ptr_table();

void load_col_set_to_dest(u8 *dest) {
    u32 *src;
    u32 *slot;
    s32 i;

    src  = ((u32 **)col_set_ptr_table)[*(u8 *)(0x03000DD0 + 0x06)];
    slot = (u32 *)(dest + 0xA0);
    i = 0;
    do {
        *(u32 *)(*slot + ((i + 0) << 2)) = src[0];
        /* ... k = 1 .. 7 ... */
        src += 8;
        i += 8;
    } while (i <= 0xFF);
}
```

Isolation measurement (assemble the fragment as retail; cpp + agbcc + as the
candidate; compare `.text`):

| draft | candidate .text | retail .text |
|---|---:|---:|
| `(*dstp)[i+k] = src[k]` with `u32 **dstp` | 76 | 136 |
| the version above | **164** | 136 |

The first is short because agbcc hoists `*dstp` into a register once; retail
reloads it on every store, which is the tell that the original source
re-derives the destination each time. The second reproduces that shape and is
now over rather than under - remaining delta is expression shape and register
allocation, i.e. ordinary decomp-permuter work, which the previous draft could
never reach because it did not even describe the right operation.

**Suggested action**: replace the `#else` body with the corrected draft and
requeue the row (clear `notes` / `candidate_body` / `best_score` / `iso_score`),
then let tier2 search it. It is not worth hand-tuning further.

### The coldef consumer question is still open

CLAUDE.md asks what consumes the `col_set_ptr_table` path. Nothing found this
pass beyond what docs/formats/README.md already records (`sub_80F0618` ->
`get_coldef_ptr_by_xz` -> `sub_80E9C4C`, traced there and shown to be engine
flag bookkeeping). Not re-chased.

---

## 6. Where the remaining raw data actually is, and a proposed order of attack

Combining sections 1 and 2, the still-unclassified **code realm**
(`0x08000000`-`0x081DD790`) is:

| region | bytes | status after this pass |
|---|---:|---|
| `asm/text08000000.s` 0x08000000-0x08017A00 | 96,768 | **~72% SOLVED** - 15 custom-LZ graphics/tilemap streams (60,912 B) + 2 uncompressed data regions + crt0/relocatable-code preamble |
| `asm/nonmatching/sub_819BABC.s` | 152,658 | open - CLAUDE.md's "real missed code at the front, data behind it" |
| `asm/nonmatching/sub_81C0F7E.s` | 104,208 | open - repeating-record data table hung off a 2-byte veneer |
| 49 more fragments >= 1,000 raw bytes | 152,244 | open, unexamined |
| 203 fragments 100-999 raw bytes | 67,678 | open |
| 2,902 fragments < 100 raw bytes | 19,234 | mostly genuine inter-function padding/pools |
| scattered `asm/*.s` runs | 440 | trivial |

**Clean negative, measured:** the custom LZ codec does **not** explain either
big run. Exhaustive byte-wise sweep with the declared-size check:
`0x0819B83C-0x081C0C90` (152,660 B) -> **0 streams**;
`0x081C0C90-0x081DA3A0` (104,208 B) -> **0 streams**. So CLAUDE.md's reading of
those two (uncompressed repeating-record tables plus a bounded chunk of real
missed code) stands, and the codec is not the tool for them.

### Proposed order of attack (data side)

1. **Fix `map_raw_regions.py` to see fragments** (section 1). Half a day at
   most, and every raw-data number in the project is wrong until it lands.
   Nothing else here can be prioritised honestly without it.
2. **Finish the 84KB region** (section 2): add the 15 stream addresses + the
   two uncompressed regions to `tools/symbols/rom.txt`, and split
   `asm/text08000000.s` at those boundaries so they become labelled data
   rather than an anonymous `.byte` run. This is the one place where a real
   *split* is now cheap, because the boundaries are known exactly rather than
   guessed. ~1-2 days.
3. **Promote the codec into `tools/gba_compress.py`** as a first-class format
   (`mlcomp.py` is the reference implementation) and fix
   `tools/try_custom_decomp.py`'s three defects, then re-run
   `map_assets.py`. The 5.1MB "genuinely unclassified" rodata figure is
   currently derived from a false negative. ~1 day, and it is the highest-
   expected-value item on the list.
4. **`sub_81C0F7E`** (104KB): split the data off the 2-byte veneer into its own
   labelled blob before that veneer is ever matched. Small, and it removes a
   live foot-gun.
5. **`sub_819BABC`** (152KB): find the code/data boundary at its front, split
   the code out as real functions. This is the last big chunk of genuinely
   missed CODE in the game proper.
6. Everything else (the 49 mid-size fragments) is a long tail with no evidence
   yet that any of it is code.

---

## 7. The corrected full rodata sweep, a major overlap finding, and its resolution

The full sweep queued in section 3 completed: `0x081DD790`-`0x08F502B8`,
stride 2, declared-size validation required (same `mlcomp.py` codec as section
2). **1,169 raw hits, 1,167 non-overlapping streams, 2,360,871 compressed bytes
-> 4,496,512 decompressed bytes.** Every one is a multiple of 32 (tile-sized).
Raw output: `scratchpad/dataside/rodata_{hits,cover}.json`.

That is a large number and it demanded scrutiny before being trusted - the
project's own history (`try_custom_decomp.py`'s dismissed false positives,
CLAUDE.md T.15) is full of exactly this shape of over-claim. Three checks:

**False-positive rate, measured directly with negative controls** (same
`mlcomp.py`, same declared-size-match requirement):

| region (32KB each) | hits |
|---|---:|
| known real Thumb code (`0x08018000`) | 0 |
| confirmed 100%-zero padding (`0x08CDD268`) | 0 |
| rodata containing real BIOS blocks (`0x081DD790`) | 1 |

So the codec's own false-positive rate on non-matching input is near zero
(~1/32KB in the noisiest case) - nowhere near enough to explain the next
finding by chance.

**661 of the 1,167 streams (57%) fall inside a byte range `find_compressed_blocks.py`
already reports as a "confirmed" BIOS RLE block** - overwhelmingly one single
entry, `0x0838E18F` (RLE, declared compressed 168,162 B / decompressed
537,904 B, `0x0838E18F`-`0x083B7271`). CLAUDE.md and docs/formats/README.md
both state a byte range can't genuinely be both formats at once - so this
needed resolving, not reporting as-is.

**Resolved, decisively, against already-decompiled, working code.**
`src/title_screen.c` (existing WIP decompilation, not written this pass) calls:

    dword_3000C84(dword_83A2B48, cgdw);
    CpuFastSet(cgdw, ..., (sub_80198B0(dword_83A2B48) >> 2) & 0x1FFFFF);

`dword_3000C84` (`tools/symbols/iwram.txt`, `include/common.h:417`:
`extern void (*dword_3000C84)(int*, void*);`) is `0x03000C84` - **the exact
IWRAM slot section 2 traced as the custom-LZ decompressor function pointer**,
installed by `sub_8019940` from the ARM code at ROM `0x08000534`.
`sub_80198B0` is **the exact size-header decoder** transcribed in section 2.
So this is not a coincidence or a new codec - it is the SAME decompressor,
already known by both this pass and (independently, structurally) by whoever
wrote `title_screen.c`'s call, being used well outside the boot blob. Four
addresses called this way in `title_screen.c`/`opening_sequence.c` -
`dword_83A2B48`, `dword_83A34B8`, `dword_83A3D80`, `dword_83A4874` - **every
one decodes cleanly to its declared size** with `mlcomp.py`:

| addr | declared | decoded | comp bytes used |
|---|---:|---:|---:|
| `0x083A2B48` | 1,568 | 1,568 | 1,102 |
| `0x083A34B8` | 1,728 | 1,728 | 936 |
| `0x083A3D80` | 8,928 | 8,928 | 2,804 |
| `0x083A4874` | 11,264 | 11,264 | 3,814 |

All four sit inside the disputed `0x0838E18F` "BIOS RLE block" range.

**Conclusion: the `find_compressed_blocks.py` "confirmed" entry at `0x0838E18F`
is a false positive** (or at minimum its claimed 168KB extent is wrong) - real
code reaches directly into the middle of that claimed span via a completely
different decompressor, which is only possible if the span isn't one opaque
BIOS-compressed blob. `find_compressed_blocks.py`'s RLE decoder does require
clean termination at a declared size, so this isn't a weak heuristic being
wrong - somewhere in a 14MB byte-by-byte scan, a real custom-LZ stream's bytes
apparently also happen to satisfy the RLE decoder's termination condition.
**This needs a maintainer decision, not a unilateral fix**: re-scoping or
retracting that one manifest entry, and auditing the other 74 confirmed BIOS
blocks against the new custom-LZ stream list the same way (the check above is
generic - `scratchpad/dataside/` has the code). Until that audit runs, treat
`assets/manifest.json`'s BIOS-block list as needing re-validation, not as
settled.

**The remaining 506 of 1,167 custom-LZ streams (43%) do NOT overlap any
claimed BIOS block** - those are additional, uncontested finds. Total
decompressed content from streams outside any disputed range still exceeds
1MB. Full numbers need the manifest re-validation above before a clean total
can be quoted with confidence.

### Entry-level pointer-table cross-check against the new stream list

CLAUDE.md's Phase 4 open-items list says entry-level cross-checking against
the compressed-block list was "never tried" - that's stale; `docs/formats/README.md`
already records `tools/cross_check_pointer_targets.py` doing exactly this
against the 75 BIOS blocks (0 hits). What that tool could not have tried is
cross-checking against the custom-LZ stream list from this pass, since that
codec wasn't known. Doing it directly (every word-aligned rodata location
whose *value* equals a confirmed stream start address):

**38 hits**, clustered at `0x083CB0F8`-`0x083CB19x` (~15 entries at a mostly
12-byte stride, e.g. `[08005C60, 00000000, 083CA090]`,
`[0800E210, 00000007, 000000C8]`) - a real descriptor table pointing straight
at several of the 84KB-blob streams from section 2 (`0x08005C60`, `0x0800E210`
appears 4 times, `0x08003220`, `0x08006300`, `0x08003D90`, `0x080079A0`,
`0x08004B00`, `0x08009420`, `0x08005350`, `0x0800A380`, `0x08011400`). Not a
flat pointer array (the second/third words vary in kind - some zero, some
small integers, one a further ROM pointer) - reads as a small
struct-per-asset table (stream pointer + flags/size + a secondary pointer),
not fully characterized this pass. This is real, address-confirmed structure
or/and it independently corroborates that the 84KB-blob streams are genuine
referenced assets, not coincidental decodes.

---

## 8. Final work plan, effort estimates, and ranking against function-side work

### Work plan, in priority order

| # | Item | Effort | Risk/dependency |
|---|---|---|---|
| 1 | **Audit the 75 `find_compressed_blocks.py` BIOS entries against the new custom-LZ stream list** (section 7) - the false positive at `0x0838E18F` may not be the only one. Needed before trusting any BIOS-block-derived number again. | 0.5 day | none - read-only |
| 2 | **Promote `mlcomp.py` into `tools/gba_compress.py`** as a first-class format, replace `tools/try_custom_decomp.py`'s three defects (section 3), re-run `map_assets.py`. Also add `dword_3000C84`/`sub_80198B0` as the documented "how to identify a stream" pair - any future scan should call the decompressor by installed function pointer, not just brute-force offsets. | 1 day | depends on #1 for a trustworthy baseline to diff against |
| 3 | **Split `asm/text08000000.s`'s 84KB region** using the 15 stream boundaries + 2 uncompressed regions found in section 2 - turns the last big anonymous `.byte` run in the code realm into real, labeled, buildable source. | 1-2 days | none once #2's symbol names exist |
| 4 | **Mint the 948 data symbols** (section 4) via `tools/mint_data_symbols.py --apply` for `01-mint-symbols-only.patch` immediately (safe, no fragment content change). Defer `02-rewrite-literal-pools.patch` (the literal-pool rewrite) until paired with a full m2c re-seed of the 1,048 affected fragments + `isolation_exact.py --apply` refresh, per section 4's caveat - otherwise it silently breaks the function-side scoring/isolation machinery for those rows. | 0.5 day (symbols only) + coordination cost for the rewrite half | must requeue affected rows (CLAUDE.md O.2's rule) |
| 5 | **Fix `map_raw_regions.py`** to see `asm/nonmatching/*.s` fragments (section 1) - every "how much raw data is left" number in the project is silently wrong (440 B reported vs. ~593,000 B real) until this lands. | 0.5 day | none |
| 6 | **`load_col_set_to_dest`** - swap in the corrected draft (section 5), requeue, let the permuter close the remaining gap. | trivial (drop-in) + permuter time | none |
| 7 | **`sub_81C0F7E`** (104KB data behind a 2-byte veneer) - split the data off before that veneer is ever matched, so `finish_match()`'s trailing-data guard is never tested for real. | 0.5 day | none |
| 8 | **`sub_819BABC`** (152KB, real code at the front) - find the code/data boundary, split the code out as real functions. Last significant chunk of genuinely missed code in the game proper. | 2-4 days (needs actual instruction-level reading, not a mechanical sweep) | none |
| 9 | Everything past #8 (mid-size fragments, remaining ~4MB rodata after BIOS/custom-LZ classification, the 337 unconfirmed pointer tables, the sprite-cluster renames docs/formats/README.md already flagged as "ready but not done") | open-ended | — |

### Ranking against function-side work: **the data side should NOT preempt the
function-side factory, but items 1-6 above are cheap, high-confidence, and
worth doing in parallel** - they don't compete for the same bottleneck.

The function-side factory is **search-bound** (CLAUDE.md's throughput
sections): 12 permuter slots, ~2,900+ seeds queued, converging at a measured
rate per slot. Nothing in this data-side work consumes a permuter slot or the
repo lock for more than the few minutes a from-scratch build takes. So "should
the data side wait" is close to a non-question for items 1-6: they cost
CPU-cheap Python sweeps plus one verified build each, not contention with the
thing that actually gates function-match throughput.

Where the data side *does* matter to the function side directly:

- **Symbol minting (item 4) is the direct prerequisite for CLAUDE.md T.10/T.11's
  extern-vs-constant permuter lever**, which was previously blocked at 3.2%
  symbol coverage. This pass took coverage from 34/982 (3.5%) to 982/982
  (100%) of currently-referenced addresses - available immediately as
  `01-mint-symbols-only.patch`. T.11 already measured that lever at "5% closer,
  0 direct matches" on the 16 addresses it could test with - a real but modest
  effect, not a plateau-breaker. Minting does NOT change that conclusion; it
  only removes the "we don't have symbols to test with" excuse. Worth doing for
  readability and because it's cheap, not because it's expected to move the
  match count much.
- **The 84KB blob and rodata split work (items 2-3) do not touch any function
  currently in the permuter queue** - it's pure data-realm work, additive to
  "100%" but orthogonal to match-rate throughput.
- **`load_col_set_to_dest` (item 6) is one function** - worth fixing because it
  was flagged as concretely broken, not because it changes the trajectory.

**Honest bottom line**: the data side was correctly described in the task
brief as "barely started and a hard blocker on several things" - but the
"several things" it blocks (readability, Phase 4 completeness, the physics
thread the maintainer cares about, eventual mariobros/asset-extraction work)
are not the same thing as *function match-rate throughput*, which is what
"100%" is actually measured by. The data side should run **in parallel** with
the function-side factory, not instead of it - there is no resource
contention forcing a choice, and the two are close to independent: number of
raw data bytes classified never bottlenecks number of raw functions matched.
The one place they touch (item 4's literal-pool rewrite) is exactly why that
half is called out as needing coordination rather than being applied blindly.

---

## Deliverables index

- `tools/mint_data_symbols.py` - new, uncommitted, working-tree only. Census by
  default; `--apply` writes. Verified end-to-end TWICE this session (once
  before the session-limit cutoff, once after, both from a clean tree): 948
  symbols, 2,272 literal-pool rewrites, `rm -rf build/ && ./container.sh make`
  -> `mlss.gba: OK`, `sha1sum mlss.gba` == `rom.sha1`
  (`7c303cdde5061ee329296948060b875cb50ba410`), `check_layout.py` -> clean.
  Tree reverted after each verification (`git checkout -- asm/ tools/symbols/
  symbols.txt`); nothing committed.
- `scratchpad/mlcomp.py` - reference implementation of the game's custom-LZ
  codec, transcribed from ROM `0x08000534`-`0x0800063C` (264 bytes of ARM).
- `scratchpad/dataside/01-mint-symbols-only.patch` - 948 `tools/symbols/rom.txt`
  entries. Safe to apply any time (append-only, no fragment content changes).
- `scratchpad/dataside/02-rewrite-literal-pools.patch` - the 2,272 literal
  rewrites. Needs the m2c-reseed coordination described in section 4/8 item 4
  before applying.
- `scratchpad/dataside/mint-948.patch` - both combined, exactly the tree that
  produced the verified SHA1 above.
- `scratchpad/dataside/rodata_hits.json` / `rodata_cover.json` - the 1,167
  custom-LZ streams found in the full rodata sweep (section 7), with the
  `0x0838E18F` overlap caveat.
- `scratchpad/blob_cover.json` - the 15 streams found in the 84KB boot blob
  (section 2).
- `assets/blob84k/*.png` - rendered previews of the 15 boot-blob streams
  (gitignored, like every other `assets/` output in this repo).
- `docs/review-2026-08-23-data-symbols.md` - this file. Not linked from
  CLAUDE.md or docs/formats/README.md; a maintainer call whether to fold its
  findings in.

## What still needs a maintainer decision, not just more passes

1. Section 7's finding that `find_compressed_blocks.py`'s `0x0838E18F` "confirmed"
   RLE entry is very likely a false positive, contradicted by already-committed
   `title_screen.c` code. This affects `assets/manifest.json` and anything
   downstream of it - flagged, not fixed, since retracting a "confirmed" entry
   from a shared manifest is a judgment call, not a mechanical one.
2. Whether to apply `02-rewrite-literal-pools.patch` at all, given the
   isolation/scoring coordination cost it carries (section 4).
3. Whether `mint_data_symbols.py`'s naming convention (width-prefixed
   `byte_`/`word_`/`dword_`) is the one to standardize on, versus something
   more semantic per-address as time allows (the room-properties precedent in
   this repo did the latter by hand).

---

**STATUS: done.** All five numbered checklist items from the resume message
addressed: (1) `mint_data_symbols.py` re-verified end-to-end from a clean tree
after the cutoff (`mlss.gba: OK`, SHA1 match, clean layout), tree reverted;
(2) 84KB blob cross-reference finished (decompressor identified at ROM
`0x08000534`, installed via `sub_8019940`/`0x03000C84`, called from
`sub_81511E4`/`sub_8161080`/etc.) and the Phase-4 pointer-table-entry
cross-check extended to the new custom-LZ stream list (38 entry-level hits, a
real descriptor table at `0x083CB0F8`); a full rodata sweep additionally ran
to completion mid-session and surfaced a real, verified anomaly (section 7)
that was chased down and resolved against already-decompiled code rather than
reported at face value; (3) work plan with effort estimates and an explicit
ranking against function-side work is in section 8; (4) this line. Nothing
committed to git. Two patches plus a symbols-only subset are staged in
`scratchpad/dataside/` for the maintainer to apply; the tools written this
session (`tools/mint_data_symbols.py`, `scratchpad/mlcomp.py`) are left in
place as working, tested code.
