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

## Where this could lead

Not a commitment, not a roadmap item -- a stated hope worth recording so it
doesn't get lost between sessions. This is, as far as the maintainer and
this project have found, the first serious byte-matching decomp attempt at
this specific game, and one of very few for GBA titles generally outside
the well-trodden pokeemerald-style Pokémon line. The "Generating C: use
m2c, not an LLM" finding above matters beyond this repo for the same
reason: m2c's ARM/Thumb backend is barely a year old and had, before this
project, no completed real-world GBA project putting real mileage on it.
If this repo ends up being the thing that proves that backend out at
scale, it's a genuinely useful reference point for whoever tries a
byte-matching GBA decomp next -- the same role sotn-decomp plays for PS1
matching decomps built on Psy-Q/maspsx.

The maintainer's actual hope is bigger than "prove the tooling works":
seeding a real Harbour Masters-style GBA runtime port, the way LUS/HM64
does for N64 (Ocarina of Time, Majora's Mask, and others) and how Torch
handles O2R-style asset extraction for that ecosystem. Worth being honest
about the shape of that gap rather than glossing it: HM64's core value is
translating F3DEX display lists (Fast3D) into a modern renderer, and GBA
has nothing analogous -- no display lists, no microcode, no real 3D. A
GBA port framework is closer to "a GBA emulator minus the CPU" (natively
compile the decompiled game code, still reimplement the PPU/tilemap/OAM
rasterizer, DMA, IRQs, and the m4a/Sappy sound driver underneath it) than
it is a Fast3D-style translation layer. That's real, separate engineering
this repo doesn't attempt and isn't scoped to -- what this repo can
realistically hand to that effort is a completed, byte-exact decompiled
codebase to build the runtime layer against, plus whatever's learned here
about matching-decomp tooling for agbcc/Thumb specifically.

Explicitly out of scope, mentioned only so it isn't confused for a next
step of THIS project: a PS1 decomp is a separate interest of the
maintainer's, unrelated to MLSS/GBA. If it happens, it's its own repo.

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

Before a real attempt exists, `split_func.py` leaves an EMPTY `#else`:
```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/name.s\"");
#else
/* No C attempt yet. Deliberately empty — see below. */
#endif
```

**This used to be an `#error`, and that was a mistake worth understanding.**
The reasoning for `#error` was "better to fail loudly under `NONMATCHING=1`
than compile a silently-wrong stub", which is sound for the function you are
working on and wrong for every one of its neighbours: agbcc compiles a whole
translation unit, and `split_func.py` appends each new extraction to the
preceding `src/*.c`, so one undrafted `#error` fails EVERY function in that
file. Measured at its worst: **936 placeholders across 184 files, blocking
853 other functions** — none of which could be compiled, diffed, or
permuted. Worse, it was a treadmill: extraction adds a placeholder, and it
stays until that function is drafted, so the block regenerates as fast as
`unblock_files.py` clears it.

An empty branch is not the "silently-wrong stub" the original note warned
about — the function simply does not exist under `NONMATCHING=1`. Nothing
can mistake it for progress: the guard is still there, so `progress.py`
still counts the function as unmatched, and the `#ifndef` branch is
untouched, so the real ROM still gets the verbatim retail bytes. And
`NONMATCHING=1` never builds a shipped ROM — it exists to compile and diff
one function.

## Workflow: decompiling a function

**Working in a fresh `git worktree` (parallel agents, or your own isolated
copy)? Run a plain `./container.sh make` once, immediately after creating
it, before anything else.** `split_func.py` needs `mlss.map` to resolve
symbol addresses, and `mlss.map` only exists after a build — a brand new
worktree has no `build/` output yet (it's gitignored, same as any other
build artifact). Skipping this gives a clear, correctly-worded error
(`mlss.map not found. Build first: ./container.sh make`) that's easy to
misdiagnose as something worse than it is if you're not expecting it —
found when a bounded test of a local LLM agent hit exactly this on its
first-ever action in a fresh worktree, got a real tool error back, and
(correctly, given how the test was scoped) didn't have permission to just
run the fix and retry. Worth the one-line habit even though most sessions
in this repo don't hit it, since every past parallel-pilot worktree this
session either got lucky (front of a small file, no dependency on
`mlss.map` yet at the exact moment) or silently recovered from this same
error on their own without it being reported back.

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
   If it says `FAILED`, run `./container.sh tools/check_layout.py` before
   anything else: it tells you in one line whether the extraction shifted
   the ROM's layout and which object did it, instead of leaving you with a
   bare checksum mismatch.
4. Write the C in the `#else` branch, replacing the `#error`.
5. `./container.sh asm-differ -mwo <name>` — iterate. `-m` rebuilds with
   `NONMATCHING=1` automatically (see diff_settings.py), `-w` re-diffs on
   save, `-o` diffs against the frozen `expected/` snapshot (see below).
6. Stuck on register allocation with an otherwise-right function? Set up
   `./container.sh tools/permute.py <name>` (needs a real, standalone-
   compilable `#else` attempt first — see decomp-permuter section) then
   `./container.sh tools/decomp-permuter/permuter.py -j nonmatchings/<name>`.
7. Once it matches: delete the `#ifndef NONMATCHING`/`#else`/`#endif`
   wrapper, delete the now-unused `asm/nonmatching/<name>.s` fragment, and
   run `rm -rf build/ && ./container.sh make` — **the `rm -rf build/` is
   not optional.** A plain `make` without it can report `mlss.gba: OK`
   even when the real result is broken (see the landmine below); only a
   build starting from nothing is real proof.
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

## Generating C: use m2c, not an LLM

**This is the single highest-leverage thing in this repo — read it before
writing any decompilation tooling.**

`tools/m2c/` is [m2c](https://github.com/matt-kempster/m2c) (formerly
`mips_to_c`), a deterministic decompiler that inverts compiler codegen
mechanically. Its ARM/Thumb backend is written and maintained by Simon
Lindholm — the author of `asm-differ` and `decomp-permuter`, the two tools
this project already runs on — and m2c's own test suite carries 80
agbcc-Thumb fixtures using the exact `thumb_func_start` / `.code 16`
conventions this repo emits.

    python3 tools/factory/m2c_bridge.py <symbol>      # seed C for one function
    python3 tools/factory/m2c_sweep.py --generate-only # survey yield, ~26s/337 fns
    python3 tools/factory/m2c_sweep.py                # measure + seed the pipeline

`tools/factory/m2c_bridge.py` wraps it with the two adaptations this
project needs: `--valid-syntax` (so unknown fields come out as
`M2C_FIELD(arg0, u8 *, 0x2B5)` — this project's own explicit-byte-cast
convention, carrying the access width — instead of an invented
`arg0->unk2B5` that cannot compile against a `void *`), and dropping m2c's
guessed declarations for symbols `include/common.h` already declares
(keeping them is a guaranteed conflicting-declaration error unrelated to
whether the body is right). The `M2C_*` macros are expanded inline, so a
generated candidate is self-contained C.

**Why this replaced the LLM tier, measured not assumed.** A controlled
5-way comparison on a fixed benchmark set (`tools/factory/bench.py`,
`bench_set.json`, results in `bench_results/`) tested every plausible way
to make the local LLM better: few-shot examples, best-of-5 sampling,
multi-turn diff feedback, a 32B dense model (Qwen2.5-Coder-32B), and a
reasoning model (DeepSeek-R1-Distill-32B). **Nothing beat a single plain
draft.** Everything that spent more compute scored the same or worse:

| variant | compiled | matches | mean score | cost |
|---|---|---|---|---|
| LLM baseline | 9/13 | 1 | 548 | 18 calls, ~500s |
| LLM few-shot | 7/13 | 0 | 759 | 18 calls |
| LLM best-of-5 | 8/13 | 0 | 664 | 90 calls |
| LLM multi-turn | 8/13 | 0 | 744 | 54 calls |
| LLM dense 32B | 4/13 | 0 | 843 | ~5x slower/call |
| LLM reasoning 32B | — | — | — | 2.9 tok/s, disqualified |
| **m2c** | **9/13** | **2** | **439** | **0 calls, 4s** |

The reasoning model was disqualified on throughput alone: 2.9 tok/s
measured on this CPU-only box (vs ~25 for the MoE), and one fully-resourced
attempt burned 21 minutes without producing compiling code.

m2c wins on every axis at once and is ~125x faster wall-clock. Do not
"improve" generation by reaching for a bigger model or a cleverer prompt —
that path has been measured and it is a dead end. m2c output is a **seed**,
not a finished match: it still goes through the identical decomp-permuter
search and the identical from-scratch-build validator gate as any other
candidate. Nothing bypasses a check.

Known m2c rough edges (real, expect them): literal-pool symbol resolution
is imperfect, it doesn't infer arrays (emits scalar field accesses instead
of indexed loops), register-size aliasing (u8/u16 vs word) is weak, and
complex control flow can fall back to `goto`. It also can't translate BIOS
SWI veneers or tiny interworking stubs at all.

`include/global.h` includes `include/m2c_macros.h` (pure typedefs and
macros, emits no code — rebuild verified byte-identical after adding).

`tools/factory/asmfacts.py`'s symbolic register tracking predates this and
still feeds the LLM tier; `tools/factory/mechanical.py` is a small
from-scratch deterministic Thumb→C translator written to validate the idea
before adopting m2c. It works (translates straight-line + single-branch
shapes, declines everything else) but m2c supersedes it — kept as a
reference, not a thing to extend.

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

**Also refresh it right after every `split_func.py` extraction, not just
after a match** — found by a parallel pilot agent on `sub_8018E88`.
Extracting a function changes which object a symbol lives in (moves it
from the raw `asm/*.s` blob into a new/growing `src/*.c`), so a stale
`expected/` predating the extraction has the *wrong* object for that
symbol — `asm-differ` then silently diffs against nothing/wrong content
and reports the new attempt as ~100% "extra" rather than a real diff
against retail. Cheap habit: run the refresh command above right after
step 2 of the workflow below (the "make must say OK" check), not just at
the end.

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

**decomp-permuter's parser doesn't fully understand nested/tagged unions**
— found on `sub_8018E88`, which needed a union of a plain byte, a u16, and
two different bitfield structs layered over the same `GameState` offset to
model how retail code accesses it three different ways. The permuter
logged ~1,500 "accessing field X of undefined struct" parse errors across
an 18k-iteration run and never got past a score of 1195 (from a 1590
baseline) — not proof the C is wrong, but a real, measurable reduction in
how much of the search space it can actually explore whenever a function
needs this kind of union trick. Worth knowing before assuming a permuter
plateau on a union-heavy function means "this is as good as it gets."

## Scope decision: Mario Bros. minigame

`asm/mariobros.s` (~712KB, 923 functions, address range
`0x08F502B8`–end of ROM) is a **complete, separate Mario Bros. classic
minigame ROM** (different game code, different original developers),
embedded whole for the multiplayer minigame. **Confirmed by the
maintainer: excluded from "100%".** Every decomp tool in this repo
(`progress.py`, `splits.yaml`'s `mariobros` group) tracks it separately
from "game proper" on that basis. If the maintainer ever wants it
decompiled too, that's a straightforward "start splitting
`asm/mariobros.s` like any other blob" — nothing here blocks it, it just
doesn't count toward headline progress numbers unless that changes.

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
- **`title_screen.c` didn't compile under `NONMATCHING=1`**, which meant
  the normal `asm-differ -mwo <name>` workflow (it always rebuilds with
  `NONMATCHING=1` first) didn't work for *any* function in this file,
  matched or not — the whole translation unit has to compile, and three
  pre-existing in-progress attempts (`open_init_8055A00`, `open_8055F74`,
  `open_8056224`) had real bugs: a conflicting prototype in `common.h`
  for `open_init_8055A00`, missing prototypes for `mbsv_init` /
  `open_8055F74` / `sub_8019308` at their call sites, `dword_3000DA0`
  typed as a bare `int*` when `open_8056224` uses it as a struct pointer,
  and `dword_83A74E4` referenced but never declared or given a symbol
  table entry. **Fixed** — all four addressed with real types/prototypes
  (`dword_83A74E4`'s size confirmed by checking the actual ROM bytes, not
  guessed), file now compiles clean under `NONMATCHING=1`. Worked around
  for `sub_8057568` via `tools/permute.py` before this fix landed — that
  workaround (isolating one function into its own translation unit,
  sidestepping broken siblings) is still the right move for *any other*
  file that turns out to have the same problem.
- **`split_func.py` silently corrupted the ROM by leaving orphaned
  leading data behind.** Its front-to-back check only looked for an
  earlier *labeled* function before the extraction target — not raw
  `.byte` data Luvdis never gave a function to, which the Phase 3 section
  below already notes is common. That data has to stay immediately
  before the function it precedes in final byte order; the old code kept
  it in the shrunk `asm/*.s` file instead, where it silently landed
  *after* the new destination file — wrong order, wrong ROM. Caught by a
  pilot agent running the documented workflow cold on `text08019CA4.s`
  (symbol landed at the wrong address; the "`make` must still say OK
  before touching any C" step in the workflow caught it immediately, so
  nothing bad actually shipped — that safety check is exactly why this
  didn't turn into a real problem). `text080542C4.s` has the identical
  pattern, so this wasn't a one-off; a full scan found it's *also*
  present in `text08000000.s` (6,076 leading unlabeled lines — expected,
  matches this doc's own note below about that file's unidentified
  crt0/m4a region) and `mariobros.s` (out of scope, noted only so it's
  not a surprise later). Fixed in `splitlib.extract_function_lines` —
  detects the fixed 5-line file header exactly and folds any real content
  between it and the front-most labeled function into that function's
  extraction. Verified against the real bug case (`sub_8019F24`) landing
  at the correct address afterward. Caveat worth knowing: when someone
  eventually extracts `AgbMain` from `text08000000.s`, this fix will pull
  that entire 6,076-line preamble into one giant fragment alongside it —
  correct, but organizationally ugly; nobody's hit that yet.
- **The same bug, mirrored: trailing orphaned data on the *last* function
  extracted from a file.** When `split_func.py` pulls the last remaining
  function out of an `asm/*.s` blob, it correctly grabs every remaining
  byte to end-of-file (needed for correctness — nothing else claims
  them). But those trailing bytes aren't always padding: twice now, in
  two different files, they turned out to include a second, real,
  never-labeled function Luvdis missed. Found independently by two
  parallel pilot agents in the same session: `text08019CA4.s`'s
  `sub_801A2A0` carried 24 such trailing bytes, decoded by hand and
  split out as `sub_801A33C` (commit `d15a2ed`) before the fragment was
  deleted — no bytes lost. `text080542C4.s`'s `sub_805516C` has the same
  shape (~100 trailing bytes, starts with what reads as a
  `push {r4,lr}`-ish prologue) but is *not yet* resolved — `sub_805516C`
  itself isn't matched yet, so nobody's hit the actual "delete the
  fragment" moment, but there's an explicit warning comment directly in
  `asm/nonmatching/sub_805516C.s` so it doesn't get deleted carelessly
  once it does match. **Not yet fixed at the tool level** — unlike the
  leading-data case, a general fix here needs real instruction decoding
  to find function boundaries inside unlabeled trailing bytes (telling
  "this is a second function" from "this is genuinely just padding/a
  literal pool" isn't a fixed-pattern check the way the file header
  was). Until then: treat "delete the nonmatching fragment" as unsafe by
  default for any function that was the *last* one extracted from its
  file — check the fragment's own tail for unexplained bytes after the
  function's real `bx lr`/`pop {..., pc}` first.
- **Any tool that runs a NONMATCHING build MUST delete the objects it
  produced.** Otherwise everything downstream that judges tree health with
  a plain `make` is lying. This is the flag-staleness landmine below,
  weaponised: Make decides what to rebuild from mtimes and cannot see that
  `-DNONMATCHING` is not a file, so a NONMATCHING object left in `build/`
  gets LINKED into the ROM by the next plain `make` — an object where every
  `#else` branch was compiled instead of the retail `.include`.
  Three tools had this bug at once; the worst was `asm_differ_score()`,
  because scoring runs constantly. Observed against a completely clean git
  tree:
  ```
  build/src/sub_81333D8.o: undefined reference to `sub_807BF34'
  .text is 0xFFA070, expected 0x1000000 — 5,304 symbols at the wrong address
  ```
  The undefined reference is the giveaway: `sub_807BF34`'s definition only
  exists inside a `#ifndef NONMATCHING` branch, so an object compiled the
  other way physically cannot link against it. If you ever see an
  undefined reference to a `sub_XXXXXXX` against a clean tree, this is why —
  `rm -rf build/` fixes it, and the real question is which tool left the
  object behind.
  The damage is not just a scary message. Anything checking health with a
  plain `make` reads it as a broken repo: `score_sweep` scored 50 seeds in
  a row as "does not compile" (all false, and an earlier run mislabeled
  **1,291 functions** this way), and `tier3.ensure_extracted()`'s
  post-extraction check would `revert_to_clean()` a perfectly good
  extraction. Fixed in `asm_differ_score`, `unblock_files.py` and
  `compile_errors.py` — all three now delete on every exit path.
- **`make` can report `mlss.gba: OK` against a genuinely broken tree —
  Make's dependency tracking has no idea assembler `.include`s exist.**
  This is the single most dangerous landmine in this project, because it
  breaks the exact safety check every other landmine here relies on.
  Deleting or editing an `asm/nonmatching/<name>.s` fragment (step 7 of
  the workflow above, done on *every single function ever matched*) only
  actually gets checked if the containing object file gets recompiled —
  and Make decides that purely from the `.c`/`.s` file's own mtime, which
  has no idea an `.include`d fragment even exists, let alone that it
  changed or vanished. Concretely: edit `src/heap.c` (removing a guard)
  *and* delete `asm/nonmatching/free_heap_8018DA8.s` in the same pass,
  run `make` — it recompiles `heap.c` because *that* file's mtime
  changed, succeeds, says `mlss.gba: OK`. Run `make` *again* with no
  further edits: Make sees `build/src/heap.o` is newer than `heap.c` and
  skips recompiling it entirely — the missing `.include` target is never
  even looked at again. A genuinely from-scratch build
  (`rm -rf build/ && make`) immediately fails with `can't open
  asm/nonmatching/free_heap_8018DA8.s for reading`. Found when an
  autopilot-run local LLM agent hit exactly this: wrote correct C, got
  confused trying two malformed `permute.py` invocations, then while
  "testing if this is an exact match" edited away its own correct C back
  down to a bare unconditional `.include` *and* deleted the fragment file
  the include still pointed to — and every `make` it ran afterward,
  including its "final build check," reported `OK` against a stale
  cached object, so it committed the broken result with a
  `git commit -m "Match ..."` message that was completely wrong. This
  is *not* the "false success" landmine above (that one was the model
  correctly reporting a real tool result) — this is the tool itself
  giving a false-positive result, to a human, Claude, or an agent
  equally. **Fixed at the process level, not the tool level**: step 7 of
  the workflow above and `tools/qwen_pilot.sh`'s own verification both
  now do `rm -rf build/` before the final `make` that decides whether
  something is a real match — a fresh, from-nothing build is the only
  check that can't be fooled this way. A from-scratch `make` is slower
  (rebuilds every object, not just the changed one) but that's the
  actual cost of a trustworthy check here, not a bug to route around.
- **A fresh `git worktree` has no `mlss.map`, so `split_func.py` fails on
  its very first use there.** `mlss.map` is a build artifact (gitignored,
  regenerated by the linker), and a new worktree starts with no `build/`
  at all. The error is clear (`mlss.map not found. Build first:
  ./container.sh make`) and easy to recover from — just build once — but
  an agent given a narrowly-scoped task (or a human who doesn't recognize
  the error) can get stuck on it or, worse, silently route around it in a
  way that produces a misleadingly "successful"-looking result instead of
  actually doing the task. Found via a bounded test of a local LLM
  agent's tool-use reliability: it hit this on its first action in a
  fresh worktree, correctly ran the second half of its two-command
  instructions instead (a trivial no-op `make` on the untouched tree,
  which of course also says `mlss.gba: OK`), and truthfully reported that
  — which read, from the outside, exactly like a fabricated success until
  the actual repo state was checked. Not a reasoning failure once
  diagnosed; a missing prerequisite plus a task scoped too rigidly to
  allow the obvious recovery step. See the workflow section above for the
  fix (`make` once, right after creating any new worktree).
- **`git reset --hard` / `git clean -fd` on a worktree do not un-stale its
  `mlss.map`, and `split_func.py`'s "already claimed" check trusts that
  map unconditionally.** `mlss.map` (like `build/` and `expected/`) is a
  gitignored build artifact, so resetting or cleaning a worktree's tracked
  source back to an earlier commit leaves whatever map was last generated
  completely untouched — it can keep describing a function as living in
  `src/whatever.o` long after the source-level change that put it there
  has been reset away. Next `split_func.py <that function>` then refuses
  with `already claimed by src/whatever.o — nothing to extract`, even
  though the current source tree has never seen that function at all. Hit
  for real in `tools/qwen_pilot.sh`'s autopilot worktree: a prior run's
  in-progress extraction was reset at the git level, but the stale map
  survived and blocked the very next attempt on that same function. Fixed
  in `qwen_pilot.sh`: a plain `./container.sh make` (not a full `rm -rf
  build/` — this is a real source content change with real new mtimes,
  not the NONMATCHING-flag staleness case Make can't see, see above) now
  runs immediately before every `split_func.py` call, not just once at
  worktree creation. Doing this by hand: after resetting/cleaning a
  worktree, `./container.sh make` before trusting `split_func.py` again.
- **A manual `rm -rf build/ && make` (or any ad-hoc repo mutation) run
  OUTSIDE `gitops.repo_lock()` while the factory is live races against it
  and produces a scary, misleading `mlss.gba: FAILED`.** The lock exists
  precisely to serialize every repo-touching operation across the 6
  factory processes; a manual command that skips it is racing against
  whatever tier1/tier2/tier3/tier_m2c/validator happen to be mid-build at
  that exact moment, reading a half-written object or a `ld_script.ld`
  that changed out from under it. The failure is real (a checksum
  mismatch, a missing `.o`) but the CAUSE is contention, not corruption —
  re-running the identical command wrapped in
  `gitops.repo_lock(what="...")` immediately afterward comes back clean
  every time this was checked. Hit live, TWICE, in one session, by the
  same agent that had already diagnosed and called out the first
  occurrence — writing it down in conversation was not enough to make it
  stick; this entry is the actual fix. **The habit, not optional:** any
  manual `make`, `split_func.py`, or `git` command run against this repo
  while a factory process might be running goes inside
  `gitops.repo_lock()`, full stop — including "just checking" commands
  that feel read-only, since `make` itself writes to `build/`. If a
  from-scratch build fails and a factory supervisor is (or was recently)
  running, suspect contention before suspecting the code, and confirm by
  re-running under the lock before treating it as a real regression.

- **`split_func.py` can silently shift the whole ROM by extracting a
  function whose SUCCESSOR sits at a non-word-aligned address.** Found the
  hard way: the ROM stopped reproducing, `.text` came out `0x01000008`
  instead of `0x01000000`, and every validator match started failing as a
  result — which looks exactly like "the pipeline broke" and inflates
  `needs_human`/`stalled`, because `finish_match()` can never succeed when
  the ROM won't build. The bytes themselves were fine: a `.byte`-level
  audit of the offending commit showed **perfect conservation** (delta 0).
  The extra bytes were ALIGNMENT PADDING. An extracted function becomes
  its own linker object, and an object carrying `thumb_func_start` gets
  4-byte alignment (`.align 2, 0`); if the next function in ROM order is
  at a 2-mod-4 address — this ROM really does have those, that's what
  `non_word_aligned_thumb_func_start` exists for — the object's size gets
  rounded up and everything after it slides. Concretely: `sub_80793F4.o`
  came out `0x2C0` when the gap to the next function is `0x2BE`, pushing
  `sub_80796B2` from `0x080796B2` to `0x080796B4`, and 5,391 symbols
  after it landed at the wrong address.
  **How to diagnose fast** (much faster than bisecting): symbol names
  encode their own correct address, so parse `mlss.map` and flag any
  `sub_XXXXXXX` whose linked address != `0xXXXXXXX`. The FIRST mismatch
  is where the shift starts; its preceding object is the culprit, and
  `objdump -h` on that object vs the address gap shows the padding
  directly. Cross-check with `objdump -h mlss.elf` — `.text` must be
  exactly `0x01000000`. **`tools/check_layout.py` now does exactly this**
  in one pass over `mlss.map` — no rebuild, no bisect, safe to run against
  a live factory (read-only). It names the first wrong symbol and the
  object contribution that pushed it.
  **FIXED at the tool level.** Two things had to be understood first, both
  measured rather than assumed:
  1. GNU as rounds a section's size UP to the section's alignment.
     Verified directly: 0x2BE bytes of content under `thumb_func_start`
     assemble to a `.text` of size **0x2C0**; the identical bytes under
     `non_word_aligned_thumb_func_start` (no `.align`) assemble to exactly
     **0x2BE**.
  2. That is *not* the only source of the padding, which is why the
     obvious fixes don't work. **The Makefile appends a literal
     `.text` / `.align 2, 0` to every agbcc-generated `.s`** (the `$(CC1)`
     rule) — so every `src/*.c` object is 4-aligned at the end no matter
     what its fragments say. Both "drop the `.align` from the fragment"
     and "give the function its own object" were implemented and tested
     against the real `sub_8079688` case; both still shifted the ROM by
     +2, because of this.
  The fix that actually works: **make the extraction end where the ROM
  already has a word boundary.** `split_func.py` now walks forward from
  the requested function, pulling in following functions until the
  extraction's end address is word-aligned — emitting one
  `asm/nonmatching/*.s` fragment and one `#ifndef NONMATCHING` stub per
  function, so decomp-permuter's one-function-per-file assumption still
  holds. A function at a 2-mod-4 address is physically un-splittable from
  its predecessor, so this isn't a workaround, it's the actual shape of
  the data. If there's no following function to extend through (the blob
  itself ends non-word-aligned), it refuses instead of guessing.
  Verified end to end: `sub_8079688` — the exact extraction that corrupted
  the ROM — now pulls `sub_80796B2` with it and builds `mlss.gba: OK` from
  scratch with a clean layout check. There are exactly three such sites in
  the game proper (`sub_80796B2`, `sub_819A5D2`, `sub_81C0F7E`); all three
  are detected, and an ordinary extraction is unchanged.
  `tier3.ensure_extracted()` also used to **throw away `make`'s exit
  code** — that's how the bad extraction got committed in the first place.
  It now checks the build *and* `layout_ok()`, and calls
  `revert_to_clean()` if either fails, so a bad extraction costs one
  function instead of the whole run.

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
  the header). **`0x08000000`-~`0x08002E00`** (~11.7KB) is clean ARM —
  textbook GBA crt0 (mode switches to IRQ/System via `msr CPSR_fc`,
  interrupt-vector install, REG_IE (`0x04000200`) bit-testing dispatch),
  0.0% bad instructions through most of it. That part is solid.

  **`~0x08003000`-`0x08017A00`** (~84KB) — **CORRECTED: this is NOT the
  m4a sound driver, and there is no good evidence it is code at all.**
  This file previously recorded it as "confirmed real missed code, not a
  guess anymore" and "almost certainly the m4a ('Sappy') sound driver" on
  the strength of `probe_code_region.py`'s bad-instruction rate (2.4-2.5%
  as Thumb vs 6.6%+ as ARM). **That metric does not support the claim**,
  measured three ways:

  1. *The Thumb number can't tell code from data.* Known rodata at
     `0x081E2764` scores **0.0% bad as Thumb** — better than this region.
     Thumb's 16-bit encoding is dense enough that nearly anything decodes
     to something valid, so "Thumb beats ARM" is close to meaningless.
     (ARM's sparser encoding makes *its* number worth something.)
  2. *Function-prologue density says data.* Counting `push {...,lr}`
     (0xB5xx) / `pop {...,pc}` (0xBDxx) per KB: real Thumb code in this
     ROM runs **3.4-6.9/KB**, rodata is **0.0**, and this region is
     **0.5** — an order of magnitude short of code. ARM prologues
     (`stmfd`/`ldmfd`) are **0.02/KB** here vs **9.39/KB** in the crt0
     above it, so it isn't ARM either.
  3. *It doesn't touch sound hardware.* A sound driver is saturated with
     `0x04000080`-`0x040000A8` and DMA register literals. This entire
     84KB contains **zero**; the first such literal in the ROM is at
     `0x08017D30`, just *past* the region's end. The m4a `SoundInfo`
     ident `0x68736D53` appears **42 times in the ROM and every single
     one is inside the embedded Mario Bros. ROM** (`0x08F6xxxx`), never
     in the main game.

  4. *It is referenced exactly like rodata.* Counting 32-bit words
     anywhere in the ROM that point into an 84KB window: this region gets
     **1,606**, a same-size known-rodata window gets **1,674**, and
     arbitrary control windows elsewhere get **116** and **35**. So it is
     heavily and deliberately referenced — 14-45x above background — at
     statistically the same rate as real rodata. Target spacings cluster
     at 1/2/3/4/8 bytes, i.e. it is addressed as a **byte stream**, not
     as word-aligned records or code entry points.

  What it actually is: entropy 6.75 bits/byte, all 256 values present,
  byte-to-byte deltas averaging 71 (random is ~85; real 8-bit PCM audio
  is under 25, so it is **not** raw sample data either), with visible
  repeating structure (long `77 C0` runs, recurring `0B FC`).
  `find_compressed_blocks.py` finds **zero** BIOS LZ77/RLE/Huffman blocks
  in the range, so if it is compressed it uses a custom scheme, not a
  BIOS one. Best current description: a large, heavily-referenced,
  byte-addressed data blob in a custom/packed format.

  **Do not spend time trying to decompile it as m4a.**
  `find_library_code.py` finding nothing here is consistent with this,
  not with the old m4a theory. (And for the record: GBA audio is not
  SNES-derived — there is no SPC700, no S-DSP and no BRR. The ARM7 mixes
  in software into two DMA-fed PCM FIFOs; the four PSG channels are
  inherited from the Game Boy for GB/GBC compatibility.)
- Two enormous, nearly-adjacent runs in `asm/text08057568.s`
  (0x0818A658-0x081AFAAA and 0x081AFAAC-0x081C91BC, ~257KB combined,
  current live boundaries per `map_raw_regions.py` have drifted slightly
  as extraction has continued: `0x0819B83C`-`0x081DA3A0`, still ~257KB
  combined) — **inspected byte-by-byte with the same tool, and the
  original "probably a big data table" guess was mostly right, with one
  real exception.** The second/larger run
  (`0x081C0C90`-`0x081DA3A0`, ~104KB) is genuinely data: its bad-instruction
  rate stays flat (~16%) regardless of which 2-byte alignment phase it's
  disassembled at, the signature of real data rather than misaligned real
  code (misaligned code shows a sharp clean/garbage contrast between the
  right and wrong phase; this doesn't) — byte content confirms it, a
  clean fixed-stride repeating record structure, most likely animation/
  sprite frame metadata (not dialogue — that's now confirmed to live
  elsewhere, see the text-string finding in docs/formats/README.md). The
  first run (`0x0819B83C`-`0x081C0C8E`, ~152KB) is a genuine **mix**: real
  code at the front (high byte diversity, clean prologue/epilogue,
  sensible branches, near-0% bad) transitioning into the same kind of
  repeating-record data table partway through — so there's a real,
  bounded chunk of recoverable missed code at its start, just not the
  whole 152KB. Neither block contains a GBA BIOS decompression call
  (`swi 0x11`-`0x18`) — checked directly, see docs/formats/README.md's
  Yoshi Magic cross-reference section for why that mattered.
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

## Throughput: what actually limits it (measured, not guessed)

Read this before trying to make the factory "faster" — the intuitive
levers are the wrong ones.

**It is not CPU-bound.** With 12 permuter slots running, load sat at ~6 on
6 physical cores with the browser and editor also running; individual
permuter processes idle at 30-45% CPU. Adding parallelism past ~12 does
nothing, because there are only 6 real cores (0-5 and 6-11 are the same
cores' SMT siblings — see `tier2.FARM_CPUSET`).

**It is not extraction-bound.** Measured end to end: `split_func.py` 0.2s
+ incremental `make` 0.4s + `refresh_expected` 0.2s ≈ **0.7s per
function**. Even 5,000 extractions is about an hour.

**It is search-bound, and that is inherent.** decomp-permuter is a
stochastic search. Measured over 24h: **1,780 launches → 278 converged, a
15.6% hit rate** (20.6% over a good 6h window). Each search runs up to
`stall_seconds_for(lines)` = `min(max(60, lines*6), 900)` seconds on one
core. So the arithmetic is roughly 12 slots × ~4 searches/hour × ~15% ≈
**7 matches/hour**, which is exactly what gets observed. ~85% of all that
pinned CPU produces nothing, *by design*.

**Therefore the only real lever is better seeds, not more compute.** Every
deterministic rule converts a 15-minute gamble into an instant score-0
match. The arg-register rule
(`m2c_bridge.restore_omitted_leading_params`) alone covered 15% of the
corpus and took functions that had stalled through *full* permuter
searches straight to 0. That is why `stall_patterns.py` and
`compile_errors.py` exist, and why "add cores" or "raise the timeout" are
not the answer.

## Monitoring

- `python3 tools/factory/dashboard.py` — live view (match count, pipeline
  funnel, throughput, worker liveness, recent matches). Refreshes every
  5s; `--once` for a snapshot.
- `python3 tools/factory/health.py` — asserts invariants and reports
  **violations**, one line each. Use this to check "is it actually
  working", not the dashboard. **But note its blind spot, found the hard
  way:** it and the dashboard were fully green through the entire
  section-F collapse, because queue depth, worker liveness and container
  count were all genuinely fine — the searches were succeeding and the
  results were being discarded. The check that would have caught it is
  `t2_launch` vs `converged` per hour out of the events table; the
  dashboard's matches/hr only says *that* something is wrong, never
  whether the search or the plumbing around it is at fault. Notably it distinguishes the real
  starvation failure (`tier2_ready=0` **and** permuter idle) from the
  healthy case (`tier2_ready=0` because seeds are consumed as fast as
  they're produced, `permuting` high).

- `python3 tools/factory/rescue_isolated_zeros.py [--dry-run]` — replays
  permuter wins that tier2 rejected before the section-F fix, straight off
  whatever is still in `nonmatchings/<name>/output-*/`. Not read-only (it
  takes the repo lock per function, with a deliberate pause between so it
  can't starve anything). Worth a run after any change to how candidates
  are spliced.

- `./container.sh tools/check_layout.py` — asserts the linked ROM layout
  hasn't shifted, straight from `mlss.map`. Run this first whenever `make`
  reports `mlss.gba: FAILED`, or whenever `needs_human`/`stalled` spikes:
  a shifted layout makes *every* match fail to validate, so it looks like
  a pipeline problem when it's one bad extraction. Names the first
  wrong-addressed symbol and the object that pushed it.

All three are strictly read-only — no repo lock, no builds, no writes — so
they're safe to run against a live factory as often as you like.

## Work status (updated as tracks close)

**A. Split out hidden functions — DONE (partly).** `split_trailing.py`
works end to end. 10 previously-unlabeled functions recovered from
fragment tails, 0 failures, ROM byte-identical after each. **18 regions
were REFUSED** because they don't end in a return — almost certainly
multiple functions or code+data mixed (e.g. 436 bytes after
`sub_80F1CF8`), and one address can't be derived at all. Those 18 (~2KB)
still need a human; the tool declines rather than guessing.
`gitops.finish_match()` now refuses to delete any fragment carrying real
trailing data, so the remaining 77 can't silently corrupt the ROM.

**B. Physics thread — DONE, and it paid off.** See
`docs/formats/README.md`'s "SOLVED: the slope/height semantics" section:
`get_surface_height_at_x` (was `sub_8160854`) resolves surface height in
pixels, with byte 0 = signed tile height and byte 1's low nibble = slope
type, dispatched through a 7-entry table (flat / two 45° / four 22.5°
half-slopes). Confirms the long-open `b0`/`b1` hypothesis. **Still open:**
proving `ctx+0x80C` resolves to the same 14 coldef arrays — that's a
pointer trace, not a semantics question.

**C. m4a sound driver — CLOSED, premise was wrong.** The 84KB region is
not m4a and almost certainly isn't code; see the corrected Phase 3 entry.
Replacement work: identify what that byte-addressed data actually is, and
find the real sound code (first sound/DMA register literals are at
`0x08017D30`, i.e. in already-extracted code that may just be unlabeled).

**D. The translation-unit deadlock — the structural throughput
blocker.** agbcc compiles a whole translation unit, so ONE undrafted
`#error` sibling fails every function in that file, however correct their
own C is. `split_func.py` appends each newly extracted function to the
preceding `src/*.c`, so files accumulate placeholders as extraction
proceeds — after a full extraction pass, **756 files held 5,205
placeholders**, `src/sub_8171FF8.c` alone holding 500. Not one function in
a poisoned file can be compiled or diffed.

Both `tier_m2c` and `m2c_sweep` skip any function with a blocking sibling
(`tier3.blocking_siblings()`), which is right in isolation and fatal in
aggregate: it is why a `compile_errors.py` sample of 30 stalled functions
found only 2 compiling, with most diagnostics pointing at OTHER functions'
placeholders rather than at m2c's own output.

`unblock_files.py` is the fix — drafts every placeholder in a file at once
so the unit compiles as a unit. It was all-or-nothing per file, which does
not survive contact with real files (one bad seed reverted every good seed
beside it: 0 of the first 4 files succeeded). It now attributes each
compiler diagnostic back to the guard block containing its line number,
empties only those `#else` branches, and rebuilds. An empty `#else` is
deliberate and safe: `NONMATCHING=1` never builds the shipped ROM, the
tool compiles one object rather than linking, and asm-differ `-o` diffs
per symbol — whereas a stub with a guessed signature could collide with a
real prototype.

**A dead-end class worth knowing about:** `tier_m2c._claim()` excludes
every row it previously declined (`notes LIKE 'm2c:%'`) to stop an
infinite re-claim loop. That was correct while tier3's LLM was the
fallback — but tier3 is gone, so nothing claims those rows at all and they
sit in `needs_attempt`/`stalled` forever. Measured after a full drain:
**1,165 rows** (857 "doesn't compile", 190 "declined", 118 "blocked by a
sibling"). `unblock_files.py` now moves rows out of `stalled` too, which is
the only thing that puts them back in play. Any future tier that declines
work must leave SOMETHING able to reclaim it.

**E. The queue is saturated; seed QUALITY is the only lever left.**
Worth stating plainly because it is counter-intuitive and it changes what
is worth working on. There are 12 permuter slots and ~2,900 seeds waiting:
the permuter is ~240 deep per slot and **cannot be starved**. Adding seeds
to that queue buys exactly nothing. Neither does "clearing the backlog to
feed it" -- the ~2,600 functions in `needs_attempt` are not waiting for CPU,
they have each been tried and their m2c draft does not COMPILE. That is a
code problem, not a compute problem, and no scheduling change touches it.

Three scheduling ideas were tried and measured against this, and the
history is worth keeping because two of them looked obviously right:

  * **Closest-first claiming** (order by `best_score`) fixed a real
    problem -- 9 of 12 slots were searching seeds scoring 1,495-12,160 --
    but caused a spin loop: a stalled seed got re-seeded, was immediately
    the lowest-scoring row again, and was re-claimed at once. 738 launches
    and 736 stalls in one hour, one match, the same dozen names in the
    slots across three checks. Fixed by sorting on attempt count FIRST
    (`escalation_count`, repurposed from retired tier3), closest-first
    within a round.
  * **Filling the queue faster** does nothing, per the saturation above.
  * **Anything that holds the repo lock in a tight loop starves everything
    else.** `repo_lock` has no fairness. A tool taking it every ~0.5s
    (score_sweep, a churning tier_m2c) will stall `git commit`, the
    validator, and tier2's isolation indefinitely. If two lock-heavy things
    must run, run them sequentially.

**A related trap: don't let two tiers re-derive the same verdict.**
`score_sweep` wrote "score_sweep: seed does not compile", which tier_m2c did
not recognise as already-judged, so it re-generated the identical seed for
the identical verdict -- 1,759 re-tries in 30 minutes for 38 useful
results, all of it holding the lock. Anything that writes a verdict
tier_m2c would otherwise re-derive must stamp it with
`m2c_bridge.ruleset_version()`.

**Where the remaining work actually is:** ~2,400 seeds that do not compile.
m2c now gets a real `--context` (preprocessed from the project headers),
which recovered 290 of 2,706 previously-dead seeds (10.7%) and moved the
near-miss pile (score 1-99) from 6 to 113. It is capped, though: the
context only knows the ~1,295 symbols the headers declare, while ~5,700
`sub_XXXXXXX` functions are declared nowhere, so m2c still guesses most
callee signatures. The compounding fix is to feed the context the
signatures of functions already matched -- marginal at ~280/5,986 matched,
worth revisiting around 20-30%.

**F. Throughput collapse is usually a BUG, not a tuning problem.**
Worth leading with because the instinct — and the previous section's own
framing — points the other way. Convergence had fallen to **0.6% over 12h**
against a 15.6% baseline, and 0 matches in the hour it was noticed. Nothing
about the scheduling was wrong. decomp-permuter was solving functions and
tier2 was throwing the answers away.

The permuter searches an ISOLATED copy of a function
(`nonmatchings/<name>/base.c`) carrying m2c's guessed callee prototypes
above the body. On a win, `trim_source()` spliced only the function text
back into the real `src/*.c` — cutting exactly at the function, so those
prototypes never came back with it. The callee was then undeclared, and
agbcc runs `-Wimplicit -Werror`: the result did not merely score
differently, **it did not compile**. `already_matches()` returned False,
tier2 logged "permuter reached score 0 in isolation but the candidate does
not match in its real source file", and the row went back to `tier2_ready`
to be searched again from nothing.

Measured when found: **178 distinct functions** had reached score 0 this
way and only 10 were ever matched, while tier2 spent **1,599 of 2,897
launches (55%)** over 24h re-searching them. Fixed in `tier2.py`
(`decl_prefix` / `reattach_decls` / `_prefix_variants`), which reattaches a
prefix and lets a real asm-differ score choose between variants — nothing
is promoted without scoring 0 in the real file, and the validator's
from-scratch gate is untouched. `rescue_isolated_zeros.py` replayed the
backlog straight off disk: **26 matches recovered with no new search.**
Matches went 281 → 294 within half an hour of the fix landing.

**How to notice this class of thing:** compare `t2_launch` count against
`converged` count per hour, straight out of the events table. If launches
are healthy and convergence is not, the search is fine and something
downstream of it is discarding results. Queue depth and worker liveness —
what `health.py` and the dashboard show — were green through all of it.

Three more real bugs surfaced in the same pass, all of them invisible to
the dashboard:

  * **`already_matches()` never reverted its splice.** It is a predicate,
    but scoring requires writing the candidate into the real `src/*.c`,
    and it left it there. `gitops.commit()` stages `FACTORY_PATHS`, which
    includes `src/` — so every abandoned splice was swept into whatever
    match committed next. `Match sub_8163A24` (`1f84d124`) carries edits to
    **six unrelated source files, 271 insertions and 284 deletions**.
    Harmless to the ROM (a `#else` branch never builds it) but it makes
    commit messages lie and can commit non-compiling drafts that re-create
    the section-D deadlock in a file nobody touched on purpose. Any
    function that splices to measure something must revert in a `finally`.
  * **tier2 leaked its `permuting` claims on exit.** It marks rows
    `permuting` with `worker_id=None` (ownership lives in its in-process
    `procs` dict), so an abandoned row sits in a state nothing claims from
    until the supervisor's reaper notices — a **45-minute** window. Two
    restarts ten minutes apart parked 24 functions behind a single live
    container. `_cleanup_all()` now hands them back; the reaper stays as
    the backstop for SIGKILL/crash/power-cut.
  * **The permuter can solve a different problem than the real file
    poses.** The isolated `base.c` is built from m2c's *guessed* callee
    signatures, and a project header can contradict them
    (`void *sub_8021A18(void *, s32);` vs. the real declaration). Then no
    prefix can reconcile the two — adding the guess is a conflicting
    declaration, omitting it is an implicit one. This is the residue the
    rescue could not recover (10 of ~90 "no compiling prefix", plus several
    that scored in the thousands in place despite a clean zero in
    isolation). The real fix is for `permute.py`'s isolation to take
    declarations from the actual translation unit rather than from m2c's
    guesses; not attempted yet.

**And a fifth, found by not trusting the rescue's own numbers.** Of the 25
candidates `rescue_isolated_zeros.py` recovered, only 12 became matches —
13 were rejected by the validator as "asm-differ said match but
from-scratch build FAILED". Checking *why* rather than filing them under
the known backlog found the check itself was broken:

`asm_differ_score()` derived its object stem from `find_guard_block()`,
which returns `None` once `splice_candidate()` has REMOVED the guard —
which is precisely the state the validator calls it in. The stem fell back
to the FUNCTION's own name, so for any function living in someone else's
file (`sub_8028E14` in `start_battle_8027AC4.c` — the normal case, since
`split_func.py` appends) it deleted a file that does not exist, while
asm-differ's `-m` rebuilt the real object with `NONMATCHING=1` and nothing
removed it. `object_size_matches()` then ran `make <obj>`, Make saw an
object newer than its source and declined to rebuild, and the size check
measured the NONMATCHING object — where every `#else` branch was compiled
instead of the retail `.include`, so the object is a fraction of its real
size. Reported mismatches like **-4652 bytes** on candidates that were
fine.

Diagnosed by a test worth reusing: with the tree CLEAN, rebuild the object
and compare it to `expected/`. All four files checked reproduced
`expected/` exactly — which ruled out the obvious suspect (a stale
`expected/`) in one step and pointed at `build/` instead. With the stem
fixed, the same three functions report `0xC8` / `0x1388` / `0x4D8`,
unchanged. **17 rows requeued, 14 matched** (`sub_801B034`'s -276 is a
real length mismatch and stays for a human).

Two process lessons from this, both cheap and both nearly missed:
  * **A tool's own success number is not the result.** "26 recovered" was
    26 *promotions*, and 13 of them died at the next gate. Count matches at
    the terminal state, never at the hand-off.
  * **A long-running worker holds the code it imported at startup.** The
    first requeue of those 17 rows failed identically, because the
    validator process had loaded `gitops.py` at 12:07 and the fix landed at
    14:15. Restart the worker that owns a fix before re-running work
    through it — the supervisor restarts children on SIGTERM, so it costs
    one signal.

**A sixth, which was quietly halving the machine.** `tier2.main()` catches
an exception from `run_pool()` and calls it again — but `procs` is LOCAL to
`run_pool()`, so the retry starts with an empty pool and refills to
`max_functions` while the previous pool's containers are still running,
owned only by module-level `_active`. Every exception there therefore
*added* up to 12 concurrent searches instead of replacing them. Measured
live: **20 permuter containers against a 12-slot pool**, stable across three
samples 20s apart, no duplicate names, none of them orphans — 20
genuinely-owned searches, **load average 31 on 6 physical cores**, with
individual permuters starved down to 31-52% CPU. That is not extra
throughput; it is the same work done slower. `_cleanup_all()` now runs on
that path too (killing containers and requeuing their rows); after the fix,
12 containers and load 11.

Worth knowing how nearly-invisible this was. `podman ps`'s `{{.Command}}`
column truncates, and `nonmatchings/<name>` sits past the cut — so a
first pass at the orphan check reported "20 orphans, 0 legitimate" and the
correct reading (`--no-trunc`) reported the exact opposite. `kill_search()`
already carries a comment about this same truncation biting it. **Use
`--no-trunc` for anything that identifies a permuter container.**

**And the reason it took an hour: the logs were lying by omission.** The
supervisor pointed each child's stdout at a file, so Python block-buffered
it — `tier2.log` had stopped updating at 13:57 while tier2 was very much
alive, and the one exception that explains the whole incident sat unflushed
in a buffer for the entire investigation of it. Children now launch with
`-u`. A log you cannot read *during* the incident is not a log.

**A measured claim ordering rule: high-score seeds are not worth a slot.**
Over 1,020 seeds with a recorded asm-differ score, against whether they
ever reached matched/validating:

| seed score | seeds | converted |
|---|---|---|
| 1 – 99 | 43 | **25.6%** |
| 100 – 499 | 147 | 12.9% |
| 500 – 1499 | 213 | 3.3% |
| 1500 – 4999 | 255 | 2.4% |
| 5000 – 19999 | 135 | 0.7% |
| 20000+ | 227 | **0.0%** |

227 seeds above 20,000 have been searched and *none* has ever matched,
while 1,975 of 2,923 queued seeds sit above 5,000 — so attempts-first
fairness was spending most of the pool on the two bands that convert at
0.7% and 0.0%. `tier2.SEED_SCORE_CEILING` (5000) is a **ceiling, not an
exclusion**: those rows stay in `tier2_ready` and the pool takes them the
moment nothing cheaper is claimable, so it can only reorder work, never
drop it. A new m2c rule that re-seeds a function lower puts it straight
back in contention — which is the section-E thesis expressed as a queue
policy.

**G. What the ~1,547 non-compiling seeds ACTUALLY fail on (measured).**
"2,400 seeds do not compile" was the headline for a long time without
anyone asking what the compiler says. Clustered over a random sample of 45,
compiling with warnings ALLOWED so only genuine errors remain:

| fatal error | share | root cause |
|---|---|---|
| `called object is not a function` | 24.4% | unknown callee signature |
| *(compiles once warnings are allowed)* | 22.2% | `-Werror` only |
| `void value not ignored as it ought to be` | 13.3% | unknown callee signature |
| `invalid type argument of ...` | 11.1% | mostly signature/type |
| `X undeclared` (raw `r1`/`r2`) | 8.9% | m2c could not recover a value |
| `X redeclared as different kind of symbol` | 6.7% | signature conflicts a header |
| `too few arguments to function` | 4.4% | unknown callee signature |
| `syntax error before X` | 4.4% | m2c could not recover |

So roughly **half the pile is one root cause — m2c guessing callee
signatures** — about **22% is nothing but `-Werror`**, and only ~13% is m2c
genuinely failing to recover the function.

**Two deterministic levers follow directly, and this is the thesis working
exactly as intended:**

1. **Extend m2c's `--context` with the signatures of already-matched
   functions.** This is the "compounding fix" section E parks as "marginal
   at ~280/5,986, worth revisiting around 20-30%". The measurement says
   otherwise: the binding constraint *right now* is unknown signatures, at
   ~50% of the pile, and every function matched makes the context better.
   The plumbing landed with the review fixes — `ruleset_version()` hashes
   `include/**/*.h`, so improving the context automatically re-opens all
   2,702 parked rows instead of leaving them stamped shut.
2. **A cast-insertion rule for the `-Werror` class.** agbcc's warnings do
   not change codegen, so a cast added purely to silence a pointer/int
   conversion is a no-op at the instruction level — safe by construction,
   and verifiable by comparing the object before and after.

**Method note, because getting this wrong is easy and I did.** The first
clustering pass keyed on the FIRST diagnostic line and produced a confident
"69% are pointer/int conversion warnings". Testing that directly — compile
the same seeds without `-Werror` — showed only **1 of 5** then compiled. The
warning was a symptom sitting *above* the real error. Cluster on the fatal
error, and confirm a cluster by acting on it, before believing a share.

**H. Four things that did NOT work on the non-compiling pile, measured.**
Recorded because each looked obviously right, and re-deriving them costs a
night. Baseline throughout: a fixed 45-seed sample from the pile, 0 of which
compile.

1. **Matched-function signatures in m2c's `--context`** — no effect, 0/45
   twice. The 2,255 failing seeds reference **2,793 distinct `sub_*`
   callees** and only **2.3%** are matched. Section E's "revisit at 20-30%
   matched" is if anything optimistic: a seed needs EVERY one of its callees
   right, and at 9% callee coverage **0 of 49 sampled seeds** had all of
   theirs known. Kept in the tree (it is correct and free) but it is not the
   lever.
2. **Inferring signatures from call sites** (`infer_signatures.py`). The ARM
   EABI puts the first four arguments in r0-r3, and there are 20,123 call
   sites, so arity and void-vs-value are readable without any match.
   Validated at **83.6% arity accuracy** against the 349 known signatures
   (94.7% at >=8 sites and >=0.8 agreement). End to end it made things
   **worse**: 139 errors -> **164** across 20 seeds, introducing `too many
   arguments` (11), `conflicting types` (9) and `previous declaration` (9).
   At 84% per-callee accuracy the wrong signatures cost more than the right
   ones gain. Not wired in. Two "improvements" also measured and reverted:
   widening the scan to the ABI boundary (83.6% -> 70.6%) and
   max-with-support aggregation (-> 64.1%).
3. **`void value not ignored as it ought to be` is not a signature problem
   at all** — and section G's clustering said it was, which was wrong. It is
   30% of all errors and it is m2c **dereferencing an untyped pointer**:
   `temp = *(temp_r1 + 0x58 + ...)`, where dereferencing `void *` yields
   void so the assignment is illegal.
4. **A typed-dereference cast rule** for (3) clears the error, and on one
   seed took it to a clean compile. Across the sample it removed only ~7% of
   errors and produced **0 additional compiles**, because seeds carry several
   errors each. Worse, the obvious implementation is UNSAFE: a regex on
   `= *(` also rewrites `*(u8 *)(p + 4)` into `*(s32 *)(u8 *)(p + 4)`,
   silently turning a 1-byte load into a 4-byte one. Any version of this
   needs a negative lookahead for an existing cast AND the byte-identical
   object gate `werror_casts.apply()` already uses.

**What this leaves, and it is the important part.** After the mechanically
fixable errors are removed, what remains is dominated by m2c failing to
recover the function at all:

| remaining error | count |
|---|---|
| `X undeclared` — raw `r1`/`r2` left in the output | 17 |
| `called object is not a function` | 11 |
| `syntax error before X` | 6 |

Those are not missing declarations or missing casts. They are m2c's ARM/Thumb
backend not managing the function, and **no deterministic rule in this repo
fixes them.** The honest conclusion is that automated throughput is near its
ceiling with m2c as it stands: `werror_casts` (section G) is the one lever
that did pay, adding 211 compiling seeds, and the reachable permuter pool has
roughly 25 matches left in it. Going further means improving m2c's ARM
backend upstream, or decompiling by hand — not another scheduling or seeding
tweak.

**Next levers, in rough order of value:**
1. **More deterministic rules.** This is the whole thesis and it keeps
   paying: the arg-register rule alone covered 15% of the corpus and
   turned 15-minute permuter gambles into instant score-0 matches. Use
   `stall_patterns.py` (clusters stalls by normalized diff signature) and
   `compile_errors.py` (clusters seed compile failures by cause) — but
   note that `compile_errors.py` does NOT apply `blocking_siblings()`, so
   on a poisoned tree it measures the deadlock above rather than real m2c
   defects. Run `unblock_files.py` first or its output will mislead you.
2. **The "asm-differ said match but from-scratch build FAILED" rows**
   (16 currently in `needs_human`; ~30 more isolated by `batch_validate`
   as "the ROM does not reproduce with this candidate").
   Reproduced one (`sub_801ADC0`): it compiles fine, but the linked ROM's
   sha1 differs — so asm-differ and the real ROM genuinely disagree about
   the same bytes. Not corruption fallout (they date from 12h-19h on
   08-20; the ROM-shifting extractions landed at 20:25-20:45). Untriaged;
   the obvious first check is whether `check_layout.py` flags a size
   change, i.e. whether the compiled function is a different LENGTH than
   the retail one rather than different content.
3. The 18 refused trailing regions (real unlabeled code, needs a human).
4. The `ctx+0x80C` pointer trace to finish the collision-data chain.

## Housekeeping still outstanding

- No CI job runs `tools/progress.py` or posts a progress badge yet.
- `tools/apply_library_matches.py` (byte-level raw-region splicing, driven
  by `tools/disasm_object.py`) was built and round-trip-verified for this
  phase but ended up unused — every match this pass found was the "rename
  an existing label" case instead. It's real, tested infrastructure for
  whenever a `find_library_code.py` match *does* land in a genuine raw
  `.byte` run rather than an already-labeled function; don't delete it as
  dead code.
