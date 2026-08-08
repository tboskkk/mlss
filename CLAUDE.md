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

## Things that are still fully manual (i.e., don't assume tooling exists)

- Data/asset splitting. 84% of the ROM (14MB) is still two giant `.byte`
  blobs (`asm/rodata081DD790.s`, `asm/rodata081E2764.s`). Nothing in this
  pass touches data — it's all been about code-splitting infrastructure.
- ~642KB of `.text` was never reached by the original disassembly pass and
  is still raw `.byte` data of unknown code/data status.
- No CI job runs `tools/progress.py` or posts a progress badge yet.
