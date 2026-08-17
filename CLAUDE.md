# CLAUDE.md

Guidance for whoever (human or Claude) works on this repo next. If you're an
agent picking this up in a fresh session: read this whole file before
touching anything, it front-loads a session's worth of "why is it built this
way" that isn't visible from the code alone.

## What this is

A decompilation of *Mario & Luigi: Superstar Saga* (USA), GBA, built with
`agbcc` (the same vintage GCC fork pret-style GBA decomps use). Goal is
100%: every byte of the ROM as matching C or labeled data, in service of
modding tools, asset editors, and understanding the game's engine
(physics/collision is the maintainer's specific interest).

Status as of the infra pass described below: ~24 functions matched, ~5,950
still raw disassembly, out of ~5,983 in "the game proper" (see Mario Bros.
note below). Run `tools/progress.py` for the current, live count — don't
trust a stale number in a doc.

The original author (jellees, upstream `github.com/jellees/mlss`) stopped
committing in July 2024. This fork is a from-scratch infrastructure pass on
top of their decompiled work, which was solid — the problem was never code
quality, it was that every single step (splitting a function out, adding a
cross-reference symbol, diffing against retail) was 100% manual, and that
doesn't scale to ~6,000 functions. Everything below exists to fix that.

## Building

    ./container.sh make

That's it — the container is the entire toolchain (devkitARM + a pinned
from-source build of agbcc). See [INSTALL.md](INSTALL.md) for the native
path if you'd rather not use it. `make` ends by hashing the built ROM
against `rom.sha1` and must print `mlss.gba: OK`. No retail ROM is needed
to build — the ROM is reproduced entirely from `asm/` and `src/`.

`./container.sh <anything>` runs that command inside the toolchain
(`./container.sh bash` for a shell, `./container.sh asm-differ ...`, etc).

## Directory layout

- `asm/*.s` — raw disassembly, one file per originally-Luvdis-emitted chunk.
  `asm/text08057568.s` alone holds 82% of everything left (5,423
  functions, 1.6MB). `asm/mariobros.s` is a **separate, complete, embedded
  Mario Bros. minigame ROM** at the tail of the cartridge (different game,
  different original authors) — tracked apart from "game proper" progress
  everywhere in this repo's tooling; see the "scope decision" note below.
- `asm/nonmatching/<name>.s` — a function that's been extracted
  (`split_func.py`) but isn't proven to compile byte-identical from C yet.
- `src/*.c` — decompiled C, one file per subsystem. Can freely mix fully
  matched functions with `NONMATCHING`-guarded in-progress ones (see below)
  — order in the file IS the byte order in the ROM for that file's
  contribution, nothing else determines it.
- `tools/splits.yaml` — **the** manifest of ROM layout; generates
  `ld_script.ld`. Don't hand-edit `ld_script.ld`.
- `tools/symbols/{ewram,iwram,rom}.txt` — generates `symbols.txt`.
- `tools/splitlib.py` — shared library for all the above; `split_func.py`,
  `gen_ldscript.py`, `gen_symbols.py`, `progress.py` all import it.

## The NONMATCHING convention

Every function still being worked on lives as:

```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/name.s\"");
#else
return_type name(args) {
    // C attempt, not yet proven to match
}
#endif
```

Default build (`NONMATCHING` undefined): splices in the verbatim retail
bytes via the `.include`, so the ROM stays byte-identical no matter how
broken the in-progress C attempt is. `make NONMATCHING=1`: compiles the
`#else` branch instead, so you can actually test-compile and diff it. Once
a function is *confirmed* matching (via asm-differ), delete the whole
guard and leave just the plain function — that's what `tools/progress.py`
looks for to count something as "matched" (it can't re-verify byte-
matching itself; that's what asm-differ is for. "Matched" here means
"someone already confirmed it and removed the guard").

Before a real attempt exists, `split_func.py` leaves:
```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/name.s\"");
#else
#error "TODO: write name to match asm/nonmatching/name.s, then delete this #error"
#endif
```
`#error` rather than a fake signature — better to fail loudly under
`NONMATCHING=1` than compile a silently-wrong stub.

## Workflow: decompiling a function

1. `./container.sh tools/progress.py` — see what's next. The "raw
   functions remaining, by file" list's front entry in each file is what
   `split_func.py` will accept next (front-to-back only, see below).
2. `./container.sh tools/split_func.py <symbol-or-address> [--dest NAME]`
   — extracts it, wires the stub into the right `src/*.c` (creating it
   with `--dest` if nothing claims that slot yet), regenerates
   `ld_script.ld`. Prints exactly what it did.
3. `./container.sh make` — confirm still `mlss.gba: OK` (the asm include
   path should never break the ROM; if it does, something's wrong with the
   extraction, not your C — you haven't written any C yet at this point).
4. Write the C in the `#else` branch, replacing the `#error`.
5. `./container.sh asm-differ -mwo <name>` — iterate. `-m` rebuilds with
   `NONMATCHING=1` automatically (see diff_settings.py), `-w` re-diffs on
   save, `-o` diffs against the frozen `expected/` snapshot (see below).
6. Stuck on register allocation with an otherwise-right function? Set up
   `./container.sh tools/permute.py <name>` (needs a real, standalone-
   compilable `#else` attempt first — see decomp-permuter section) then
   `./container.sh tools/decomp-permuter/permuter.py -j nonmatchings/<name>`.
7. Once it matches: delete the `#ifndef NONMATCHING`/`#else`/`#endif`
   wrapper, leave the plain function. `make` (plain, no `NONMATCHING=1`)
   must still say `mlss.gba: OK`.
8. `git add`, commit. Small, one-function-ish commits are the norm here
   (see git log).

**Extraction is front-to-back only within a file right now.**
`split_func.py` refuses to pull a function that isn't the first remaining
one in its `asm/*.s` blob. This matches how every split in this project
has been done historically (matched-prefix, unmatched-suffix, per file)
and keeps `splits.yaml` simple (one boundary point per blob instead of
needing arbitrary hole-punching). Extracting from the middle of a blob is
future work, not silently broken — you get a clear error naming what to
extract first.

## Matching tools

**asm-differ** (`asm-differ` on PATH inside the container,
`diff_settings.py` at repo root): configured for `-o` (object-file diff
mode) against a gitignored `expected/` snapshot — **not** whole-ROM `-f`
mode. `-f` doesn't work here: it needs a "load address" annotation in the
map file to compute a RAM→ROM offset, and this project's `ld_script.ld` has
no separate load/run address anywhere (everything's VMA==LMA, one flat
`.text` output section) — GNU ld simply never emits that annotation for a
script like this, so `-f` hard-fails immediately. `-o` sidesteps this
entirely by diffing two `.o` files directly.

`expected/` must be refreshed manually after a real match lands (or after
pulling upstream changes) — **with a plain `make`, never
`NONMATCHING=1`**, or you'd freeze in-progress bytes as the "known good"
baseline:
```
./container.sh make && rm -rf expected && mkdir expected && cp -r build expected/
```

**decomp-permuter** (`tools/decomp-permuter`, a submodule pinned to
`WhenGryphonsFly/decomp-permuter-agbcc` — the mainline
`simonlindholm/decomp-permuter` only targets MIPS/PPC/AArch32, not this
project's ARMv4T+agbcc): `git submodule update --init tools/decomp-permuter`
once. `tools/permute.py <name>` does the whole "isolate + import" dance
that project's own README describes as a multi-step manual process —
it works because `split_func.py`'s `asm/nonmatching/<name>.s` fragments
already are exactly the one-function-per-file layout decomp-permuter wants,
so there's no separate manual splitting/`expected_objs/` setup needed.
Requires the target's `#else` branch to already be a real, standalone-
compilable attempt (not the `#error` placeholder) — the permuter improves
an existing attempt, it doesn't write one from scratch.

`pycparser` is pinned `<3.0` in `tools/requirements.txt` — 3.0 dropped the
`plyparser` module this permuter fork imports directly. If a fresh
container build ever fails on `ModuleNotFoundError: pycparser.plyparser`,
this pin lapsed; re-pin it.

## Scope decision: Mario Bros. minigame

`asm/mariobros.s` (~712KB, 923 functions, address range
`0x08F502B8`–end of ROM) is a **complete, separate Mario Bros. classic
minigame ROM** (different game code, different original developers),
embedded whole for the multiplayer minigame. Recommendation, not yet
confirmed by the maintainer: scope it **out** of "100%" and keep it as an
opaque binary blob — every decomp tool in this repo (`progress.py`,
`splits.yaml`'s `mariobros` group) already tracks it separately from "game
proper" on that assumption. If the maintainer wants it decompiled too,
that's a straightforward "start splitting `asm/mariobros.s` like any other
blob" — nothing here blocks it, it's just not counted in headline
progress numbers.

## Landmines already hit (read before you rediscover these)

- **`.gitignore` used to blanket-ignore `*.py` / `*.pl`.** Would have
  silently swallowed every tool in this repo. Fixed; there's a comment in
  `.gitignore` now warning not to re-add it.
- **`asm/nonmatching/*.s` fragments used to rely on load order for
  `.include "asm/macros.inc"`.** Only the *first* nonmatching fragment
  `.include`d by a given `src/*.c` carried its own `macros.inc` include;
  every later one in that file silently depended on that one having run
  first in the same assembler invocation (`.macro` definitions persist for
  the rest of that assembly). Reordering `#ifndef` blocks, or matching that
  first function (removing its `.include`), would have broken the build
  with a cryptic "bad instruction `thumb_func_start ...`" error nowhere
  near the actual cause. Fixed: every `src/*.c` that uses nonmatching
  includes now has one explicit, order-independent
  `asm_unified(".include \"asm/macros.inc\"");` near the top;
  `split_func.py` does the same for files it creates; individual fragments
  no longer carry their own copy. (Redefining the same `.macro` twice in
  one assembly is a hard `as` error — verified — so this really would have
  bitten someone.)
- **The Makefile used to `cd build/` before linking.** Purely cosmetic
  until asm-differ needs the map file's object paths to resolve directly
  from the repo root (its `-o` mode has no `build/`-prefix concept for GNU-
  format maps). Fixed: links from repo root now; `ld_script.ld`'s object
  references carry the `build/` prefix to match (generated by
  `splitlib.py`, not hand-maintained — if you ever *do* hand-edit
  `ld_script.ld`, this is exactly the kind of thing that'll silently break).
- **`-DNONMATCHING` must go in `CPPFLAGS`, not `CFLAGS`.** This project's
  build splits preprocessing (`$(CPP)`, a modern `cpp`) from compilation
  (`$(CC1)` = `agbcc`, fed an already-preprocessed `.i` file) into two
  separate invocations. `agbcc` doesn't understand `-D` at all — it never
  sees the unpreprocessed source. Get this backwards and you get
  `agbcc: Invalid option`, which reads like a toolchain problem, not a one-
  word Makefile fix.
- **Make doesn't track flag changes.** Switching between plain `make` and
  `make NONMATCHING=1` on an otherwise-unchanged tree won't recompile
  anything — Make only looks at file mtimes, and `-DNONMATCHING` isn't a
  file. If a diff looks suspiciously unchanged after flipping
  `NONMATCHING`, you're looking at a stale object; `rm` it (or the
  relevant `build/.../*.o`) and rebuild.
- **`asm-differ -f` (whole-ROM mode) doesn't work on this project** — see
  the asm-differ section above. Use `-o`.
- **`pycparser>=3.0` breaks decomp-permuter-agbcc** — see above.
- **`split_func.py` couldn't extract anything — "already claimed" on
  every symbol, including brand new ones.** Regression from the `cd
  build/` fix above: once `mlss.map`'s object paths gained a `build/`
  prefix, `splitlib.py`'s map parser never stripped it back off, so
  `MapSymbol.obj` (`"build/asm/text08057568.o"`) silently stopped
  matching the `asm/`-prefix check `split_func.py` uses to tell "raw
  blob" from "already in a `src/*.c`". Nobody had run `split_func.py`
  since that fix landed, so it went unnoticed. Fixed in
  `_parse_map_full`. If this ever regresses again the symptom is exactly
  this: every target, even ones that were never touched, reports
  "already claimed."
- **`tools/permute.py` can't isolate a function from a file with its own
  local header** (currently only `title_screen.c`/`title_screen.h`).
  It copies `#include` lines verbatim into `tools/permute-work/`, and
  cpp's "search the including file's own directory first" rule for
  `#include "X.h"` stops finding a same-directory header once the copy
  lives somewhere else. Fixed: local includes get rewritten to absolute
  paths before the isolated `.c` is written.
- **`title_screen.c` doesn't compile under `NONMATCHING=1` right now**,
  which means the normal `asm-differ -mwo <name>` workflow (it always
  rebuilds with `NONMATCHING=1` first) doesn't work for *any* function in
  this file, matched or not — the whole translation unit has to compile,
  and several of its pre-existing in-progress attempts
  (`open_init_8055A00`/`text08055A00`, `open_8055F74`/`text08055F74`,
  `open_8056224`/`text08056224` at least) have real bugs (a conflicting
  prototype in `common.h` for one). Worked around for `sub_8057568` via
  `tools/permute.py`, which isolates one function into its own
  translation unit and sidesteps the broken siblings entirely — use that
  path for any other `title_screen.c` function until someone actually
  fixes the other in-progress attempts.

## Finishing the disassembly (Phase 3)

`tools/map_raw_regions.py` walks every asm/*.s file's actual address space
(not a whole-file average) and lists every still-raw `.byte` run with exact
addresses — that's the real starting point for this phase, not the
642KB-ish estimate quoted early in this project (that number came from a
coarser per-file heuristic; run the tool for the current true figure).

**Important finding: most raw-`.byte` bytes are not "unreached code".**
The instinct is to assume a `.byte` run means Luvdis missed a function.
In practice most of what's left in `asm/text0801A548.s` and
`asm/text08057568.s` is data sitting between real, already-disassembled
functions — sprite/tile/palette tables, jump tables Luvdis didn't
recognize as such, that kind of thing. Don't assume "raw" means "missed
code" without looking; `map_raw_regions.py --min-size N` combined with
actually reading a region is the way to check, not the byte count alone.

**A second, bigger finding: some "raw" functions were already
disassembled — just anonymously.** `tools/find_library_code.py` byte-
matches our own pinned agbcc's compiled libgcc/libc against the retail
ROM (self-contained leaf routines only — no relocations to go wrong, see
its docstring). Every hit so far turned out to already be a properly
disassembled `thumb_func_start sub_XXXXXXX` function, just never
identified — Luvdis had already found the code, it just couldn't know
that `sub_81DCD38` was `memcpy`. Confirmed and renamed with
`tools/rename_symbol.py` (pure whole-word text rename — zero risk to
bytes, since the disassembly was already correct): `_lshrdi3`, `_muldi3`,
`_negdi2`, `memcpy`, `memset`, `strcmp`, `strlen`, and `abort` (which
turned out to bundle two more 2-4 byte stubs, `isatty` and `alarm`, that
Luvdis had left as unlabeled trailing `.byte` — those got hand-split
since they were too small for `find_library_code.py` to match on their
own). All in `asm/text08057568.s`, clustered right before rodata begins
(0x081DC710-0x081DD5B0) — exactly where a linker places pulled-in library
code. **The `_call_via_rX` interworking-veneer matches found by the same
scan were NOT applied** — they're a real binutils feature (auto-generated
ARM/Thumb call stubs) but the specific addresses matched didn't correspond
to any real label or raw-run boundary in our source; likely spurious
matches of a very low-entropy repeating byte pattern (`bx rN` / `nop`
pairs). Left alone rather than guessed at.

Also labeled (not "found", just transcribed correctly): the 192-byte GBA
cartridge header at `_08000000` in `asm/text08000000.s` — its exact layout
comes straight from `tools/gbafix/gbafix.c`'s own `Header` struct, not
reverse engineering.

**Still open, and the actual bulk of this phase:**

- `asm/text08000000.s`'s first ~94.5KB (0x08000000-0x08017A00, right after
  the header) — almost certainly crt0/interrupt vectors plus the m4a
  ("Sappy") sound driver, given this file is ARM-mode and only 4.2%
  disassembled. `find_library_code.py` found nothing here — it isn't
  libgcc/libc, and there's no pinned reference build of m4a in this repo
  to signature-match against the way libgcc/libc could be. Matching it
  against a known m4a disassembly (pret projects have fully decompiled
  copies) is real, unstarted work, not a quick follow-up.
- Two enormous, nearly-adjacent runs in `asm/text08057568.s`
  (0x0818A658-0x081AFAAA and 0x081AFAAC-0x081C91BC, ~257KB combined) —
  large enough that they're much more likely a big data table (dialogue?
  event/script data? — this file holds "nearly the whole game" per the
  original audit) than 257KB of missed code. Not yet inspected byte-by-
  byte; don't assume either way without looking.
- `asm/mariobros.s` has its own huge raw runs (led by one 433,882-byte
  block) — out of scope per the Mario Bros. decision above, noted here
  only so nobody "discovers" it as a surprise.

## Data/assets (Phase 4)

Neither rodata blob (`asm/rodata081DD790.s`, ~20KB; `asm/rodata081E2764.s`,
~14MB, both still 100% raw `.byte`) has been *split* (turned into real,
committed, buildable source) yet — but real bytes have now been pulled out
and written to files, which is further than pure recon. Full findings and
how to use the tools are in [docs/formats/README.md](docs/formats/README.md)
— short version:

- `tools/find_compressed_blocks.py` / `tools/gba_compress.py`: finds GBA
  BIOS-compressed (LZ77/RLE) data with a real decompressor requiring clean
  termination at the declared size — not a header-pattern guess. 75
  confirmed blocks, several 500KB+. RLE dominates over LZ77 in this ROM.
- `tools/extract_assets.py`: decompresses all 75 to `assets/raw/*.bin`
  (gitignored — decompressed copyrighted game data, same treatment as
  `baserom.gba`) and renders a tile-grid PNG preview for anything sized as
  a clean multiple of 32 bytes. **The tile decoder is verified correct**
  against `dword_81DD9F4` — known, already-documented, uncompressed GBA
  tile data (see `src/game_boy_player_logo.c`) — not just "looks plausible."
  **Which of the 75 blocks are actually graphics is not verified** — the
  32-byte-size classifier alone is weak; treat PNG output as leads, ranked
  by a `nibble_dominance` heuristic, not conclusions. `0x08820273` is the
  current best unconfirmed candidate (60% dominance).
- `tools/find_pointer_tables.py`: finds runs of consecutive words in raw
  rodata that all look like valid ROM addresses, cross-referenced against
  every `.4byte` literal already in disassembled code for independent
  confirmation. 20 code-confirmed tables found (one over 1,000 entries),
  337 more unconfirmed.

Concrete unstarted next steps in `docs/formats/README.md`: confirming
which extracted blocks are really graphics (vs. some other RLE-compressed
data that happened to size out to a multiple of 32); cross-checking
pointer table *entries* (not just table start addresses) against the
compressed-block address list, which came up empty at the table-address
level but was never tried at the entry level.

## Room properties table & the solidity/collision data pipeline

Found while answering a question about the community `Yoshi Magic`
editor's "Solidity Map" feature, not from a planned phase step — but it's
real, address-level-confirmed reverse engineering, not just discussion, so
it's recorded here like any other finding. Full writeup with the field
table and pointer-chain detail is in
[docs/formats/README.md](docs/formats/README.md#room-properties-and-the-soliditycollision-pipeline).

Short version: the per-room properties table (`room_props_table`, was
`0x083A78D4`, 24 bytes/room, full field layout known) and the two-level
pointer chain that resolves each room's actual solidity/collision
tile-grid (`room_solidity_index_table` → `solidity_grid_offset_table` → a
row-major byte-per-tile grid, staged into RAM by
`stage_room_solidity_grid`) are now both located and structurally
understood — cross-confirmed against the independently-reverse-engineered
[Yoshi Magic](https://github.com/CaptainSwag101/YoshiMagic) tool's source,
found here first via our own disassembly and only checked against theirs
afterward. This is the natural on-ramp into the physics/collision
decompilation this project's whole goal keeps citing (see "What this is"
above).

Follow-up pass: `tools/render_solidity_grids.py` resolves and renders the
grid for every room (529 rooms, 501 distinct grids) straight from ROM
data, no emulation. Confirmed grid width is **30 tiles** (one GBA screen,
407 of 501 resolved grids are an exact multiple of 30 bytes) by actually
rendering the width-30 family and getting genuinely coherent room shapes
— solid blocks, floor bands, evenly-spaced pillars — not noise; see
`docs/formats/README.md` for the specific examples and the recurring
small value-families (`0x18`/`0x2D` as an edge/interior pair, `0xFF` as a
likely open-space sentinel, etc.).

**The "what do grid byte values mean" gap is now closed at the structural
level.** A grid byte is not a self-contained enum — it's an index (0-255)
into one of 14 possible 256-entry × 4-byte "coldef" arrays, selected per
room by `room_props_table`'s `solidind` field via a newly found pointer
table (`col_set_ptr_table`, `0x083AADD0` — the same address the Yoshi
Magic authors tried and apparently abandoned per their own commented-out
code, but it's live, heavily-used code here). Full derivation, the coldef
struct's byte layout, and the one confirmed live caller are in
`docs/formats/README.md`'s "missing link" subsection. Still open: what a
coldef's individual bytes *do* (which is height/offset, which is a
slope/edge type enum) — traced the struct shape, not yet the semantics.
Same open status for the height/gravity variables from Part 1 of the
physics illusion — still a different, unlocated struct.

Symbol renames for the room-properties addresses **have been applied**:
`sub_805A00C` → `stage_room_solidity_grid`; `room_props_table`,
`col_set_ptr_table`, `room_solidity_index_table`,
`solidity_grid_offset_table` added to `tools/symbols/rom.txt`. Rebuild
verified byte-identical (`mlss.gba: OK`) afterward. Worth knowing this is
a *new* rename pattern for this project, not quite the same safety
argument as Phase 3's: these four addresses only ever appear as raw hex
literals inside still-raw, unextracted `asm/text08057568.s`, so the
rename relies on the linker's `--just-symbols=symbols.txt` resolving an
undefined symbol reference from inside a standalone-assembled `.s` file —
mechanically different from Phase 3's local-label-only renames, though
confirmed working the same way.

## Housekeeping still outstanding

- No CI job runs `tools/progress.py` or posts a progress badge yet.
- `tools/apply_library_matches.py` (byte-level raw-region splicing, driven
  by `tools/disasm_object.py`) was built and round-trip-verified for this
  phase but ended up unused — every match this pass found was the "rename
  an existing label" case instead. It's real, tested infrastructure for
  whenever a `find_library_code.py` match *does* land in a genuine raw
  `.byte` run rather than an already-labeled function; don't delete it as
  dead code.
