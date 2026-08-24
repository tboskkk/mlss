# What other decompilation projects do that this one does not

Research pass, 2026-08-23. Written incrementally while investigating; sections
are ordered by value, not by when they were found.

**Provenance convention used throughout.** Every claim is tagged:

* **VERIFIED** - I read the code / ran the command myself and state what I saw.
* **CLAIMED** - a README, docstring or comment says it; I did not re-derive it.

Reference clones used (all read-only, nothing committed anywhere):

| repo | where | how |
|---|---|---|
| Klonoa: Empire of Dreams | `~/Desktop/mlss-reference/kl-eod-decomp` | pre-existing clone |
| mizuchi | `~/Desktop/mlss-reference/mizuchi` | pre-existing clone |
| gba-kit | `~/Desktop/mlss-reference/gba-kit` | pre-existing clone |
| Mario Kart: Super Circuit | `<scratchpad>/refs/mksc` | **cloned by me**, `--depth 1` |
| Sonic Advance 1/2/3 (`sa2`) | `<scratchpad>/refs/sa2` | **cloned by me**, `--depth 1` |
| The Minish Cap (`tmc`) | `<scratchpad>/refs/tmc` | **cloned by me**, `--depth 1` |
| pokeemerald | `<scratchpad>/refs/pokeemerald` | **cloned by me**, `--depth 1 --filter=blob:none` |
| Dream-Atelier/agbcc | `<scratchpad>/refs/agbcc` | **cloned by me**, `--depth 1` |

`<scratchpad>` = `/tmp/claude-1000/-home-tyler-Desktop-mlss/83e8aafe-b95b-4e2c-aff3-f2d4464296a2/scratchpad`.
Nothing was cloned into `~/Desktop/mlss-reference/`; nothing in this repo was
modified except this file.

URLs:
- https://github.com/Dream-Atelier/kl-eod-decomp
- https://github.com/jellees/mksc
- https://github.com/SAT-R/sa2
- https://github.com/zeldaret/tmc
- https://github.com/pret/pokeemerald
- https://github.com/macabeus/mizuchi
- https://github.com/Dream-Atelier/agbcc

---

# 1. The TU-poisoning problem is self-inflicted, and two other projects have already solved it

## 1.1 The measurement of our own tree

**VERIFIED** (script run against `src/*.c` at HEAD):

```
src files                886
#ifndef NONMATCHING blocks    4,401
  ... with an EMPTY #else       3,289
  ... with a DRAFT in #else     1,112
mean guard blocks per file      4.97
worst file      src/sub_8171FF8.c   310 guard blocks
```

So the poisoning surface is **1,112 drafts**, not 4,401 guards. An empty `#else`
cannot break anything.

## 1.2 There are three conventions in the wild, and ours is the only one that lets a broken draft survive

| project | convention | is an unproven draft in the committed tree? | is it compiled by the SHIPPING build? |
|---|---|---|---|
| Klonoa, pokeemerald | `INCLUDE_ASM(folder, Name);` | **no** | n/a |
| sa2, sa1, sa3, tmc | `NONMATCH(path, decl) { draft } END_NONMATCH` | **yes** | **yes** (as dead code) |
| **mlss (here)** | `#ifndef NONMATCHING / #else draft / #endif` | yes | **no** |

That third row is the entire bug. Our draft is compiled only under
`NONMATCHING=1`, a mode that never ships and that nothing gates on, so a broken
draft is invisible until some *other* function's measurement runs through the
same translation unit. Sections D, I, M, N.4a, P, Q, T.2 and T.4 of CLAUDE.md are
all downstream of that one property.

## 1.3 The sa2 / tmc macro, read from source

**VERIFIED** - `refs/sa2/include/global.h:55-73` and `refs/tmc/include/global.h:77-95`
carry **character-for-character the same definition**, independently maintained
in two different orgs:

```c
#ifdef NON_MATCHING
#define ASM_FUNC(path, decl)
#else
#define ASM_FUNC(path, decl)    \
    NAKED decl { asm(".include " #path); }
#endif

#ifdef NON_MATCHING
#define NONMATCH(path, decl) decl
#define END_NONMATCH
#else
#define NONMATCH(path, decl)    \
    NAKED decl {                \
        asm(".include " #path); \
        if (0)
#define END_NONMATCH }
#endif
```

`NAKED` is `__attribute__((naked))` (`refs/sa2/include/gba/defines.h:23`).

Read it carefully, because the trick is not obvious. In the **shipping** build
`NONMATCH(...) { draft } END_NONMATCH` expands to

```c
NAKED int myfunc(int a, int b) { asm(".include \"frag.inc\""); if (0) { draft } }
```

The retail bytes come from the `.include`. The draft sits inside `if (0)` in a
naked function, so it is **parsed, type-checked and name-resolved, then
discarded before codegen**. Two consequences:

1. A draft that does not compile **breaks the normal `make`**, immediately, for
   everybody. It can never be committed, so it can never poison anything later.
2. Every still-unmatched function carries **a real C prototype at its real
   location in the file**. Callers in the same TU see it.

`ASM_FUNC` is the same thing with no draft - our "empty `#else`" case, as a
one-liner.

**VERIFIED usage counts:** sa2 has **439 `NONMATCH` sites across 140 files**
(`grep -rn 'NONMATCH(' src`), i.e. this scales to hundreds of concurrent drafts
in one tree. tmc has 0 today because tmc is finished, but the macro is still in
`global.h`. Real example: `refs/sa2/src/sprite.c:392` (`TransformSprite`), with
the draft body immediately below it and `END_NONMATCH` at line ~510.

## 1.4 I tested the macro against THIS repo's own agbcc and flags

Not taken on faith. Ran in the `localhost/mlss-toolchain` container with this
repo's exact `CFLAGS` (`-O2 -mthumb-interwork -fno-common -Wimplicit
-Wparentheses -Werror`), scratch dir only, repo untouched.

**Test 1 - does it emit the fragment and nothing else? VERIFIED YES.**

```
00000000 <myfunc>:
   0:	b500      	push	{lr}
   2:	1840      	adds	r0, r0, r1
   4:	bc01      	pop	{r0}
   6:	4700      	bx	r0
00000008 <caller>:
   ...
   e:	f7ff fffe 	bl	0 <myfunc>   R_ARM_THM_CALL myfunc
```

The four fragment instructions, byte-exact, and the sibling `caller` links to
`myfunc` by relocation - i.e. **the prototype problem solves itself**. Under our
current scheme `myfunc` would have no declaration anywhere and `caller` would
hit `implicit declaration` under `-Wimplicit -Werror`; that is the entire
`declare_missing.py` / N.4 / Q / T.2 / T.4 family.

**Test 2 - does a dead draft perturb its siblings' codegen? VERIFIED NO.**

This is the property that actually decides whether the migration is safe,
because CLAUDE.md's own coupling landmine (and Klonoa's "byte-identical function,
ROM broken 1,833 lines further down") says agbcc couples across a TU. A/B: same
file, one build with a substantial draft body (loop, shifts, an extern array,
a call), one with `{ }`.

```
text size    aempty.o 96   adraft.o 96
.text bytes  cmp e.bin d.bin -> IDENTICAL
symbols      before@0x00  myfunc@0x28  after@0x30   (identical in both)
```

Honest scope: that is one small file, not proof over 5,996 functions. But it is
cheap to re-run at scale here, and the machinery already exists -
`twin_backfill._text_image` compares `.text` + relocations, which is exactly the
right comparator.

**Test 3 - does a broken draft fail the SHIPPING build? VERIFIED YES.**

```
bad.c: In function `myfunc':
bad.c:19: `undeclared_thing' undeclared (first use in this function)
REJECTED at compile time
```

That is the whole point. Today the identical draft would compile fine (the
`#else` is not taken), sit in the tree, and silently fail every future
measurement of every other function in `src/<that file>.c`.

## 1.5 The Klonoa / pokeemerald convention (zero drafts in tree)

**VERIFIED** - `~/Desktop/mlss-reference/kl-eod-decomp/include/include_asm.h`:

```c
#define INCLUDE_ASM(FOLDER, NAME)                  \
    asm(".syntax unified\n"                        \
        ".include \"" FOLDER "/" #NAME ".s\"\n"    \
        ".syntax divided\n")

asm(".include \"asm/macros.inc\"\n");   /* once per TU, at header scope */
```

and in `src/code_0.c:1094`:

```c
INCLUDE_ASM("asm/nonmatchings/code_0", RenderMenuUI); /* RenderMenuUI */
```

Note what this does NOT have: a declaration. Klonoa's `INCLUDE_ASM` is
file-scope `asm()`, like ours, so it has the same missing-prototype weakness -
they patch it by hand in `ldscript.in.txt` (see §5.3) rather than structurally.
**sa2's `ASM_FUNC` form is strictly better than both**, because it is a naked C
function and therefore carries the declaration.

Also **VERIFIED**: that `.include "asm/macros.inc"` at header scope is the same
fix CLAUDE.md's landmine list records us making by hand per `src/*.c`. Klonoa
gets it from one header include; worth copying regardless of anything else here.

## 1.6 Why our alignment landmine mostly disappears under this scheme

CLAUDE.md's worst extraction landmine is that a function extracted into its own
object gets `thumb_func_start`'s `.align 2, 0`, and if the *next* function sits
at a 2-mod-4 address the whole ROM slides. Three such sites exist
(`sub_80796B2`, `sub_819A5D2`, `sub_81C0F7E`).

**VERIFIED** by reading the disassembly: `sub_819A5D2` is preceded by

```
	thumb_func_start sub_819A5D0
sub_819A5D0:
	bx r0
```

A two-byte `bx r0`. That is a `_call_via_rX` interworking veneer, not a compiled
C function - CLAUDE.md's Phase 3 notes already suspected as much. So the
"non-word-aligned function" class is **not compiler output at all**, and the
"walk forward until the extraction ends word-aligned" workaround is compensating
for treating linker-emitted veneers and mid-function labels as functions.

Klonoa handles this class as a *modelling* problem rather than a padding
problem - `scripts/generate_asm.py` has `_merge_fragments()` (absorb any
"function" that does not end in a return into its predecessor), an explicit
`INSIDE_C_FUNCTION_ADDRESSES` set for mid-function labels luvdis split off, and
`_fix_non_word_aligned_starts()` as the last-resort macro swap. **VERIFIED** by
reading `scripts/generate_asm.py:831-862` and its `main()` at line 2946.

Caveat, stated honestly: **VERIFIED** that agbcc emits `.align 2, 0` before
*every* function including a naked one (read the generated `.s` from Test 1).
The reason that is harmless under this scheme is that the object spans a whole
original translation unit, whose functions the original agbcc also 4-aligned.
It stops being harmless if a `src/*.c` covers a range containing a hand-written
veneer - so the veneers must stay in `asm/`, exactly as Klonoa keeps
`asm/libgcc.s` and `asm/thumb_aliases.s` out of `src/`.

## 1.7 Nobody else splits per function. That is the second half of the problem.

**VERIFIED object counts in the linker script:**

| project | objects contributing `.text` | source files |
|---|---:|---:|
| Klonoa | 10 modules + 5 asm | 10 `src/*.c` |
| MKSC | ~30 | ~20 `src/*.c` |
| sa2 | 693 lines total in `sa2_ldscript.txt` (all sections) | 458 `src/*.c` |
| **mlss** | **886 `src/*.c` + 757 `asm/*.s`** | 886 |

Klonoa's `klonoa-eod-decomp.toml` says it outright: *"Each module corresponds to
one original compilation unit."* Their module boundaries are the **original**
TU boundaries recovered from the ROM, so an object's size is fixed by the ROM,
not by how much has been decompiled - and no amount of decompilation can shift
the layout. Ours moves a boundary on every single extraction, which is why
`check_layout.py` had to be written at all.

---

# 2. Klonoa really does regenerate `asm/` from the ROM. VERIFIED.

The earlier lead is correct and it is more thorough than the phrasing suggested.

**VERIFIED** - `~/Desktop/mlss-reference/kl-eod-decomp/.gitignore`:

```
# Generated from ROM (regenerated by scripts/generate_asm.py)
asm/rom_header.s
asm/libgcc.s
asm/nonmatchings/
asm/matchings/
data/data.s
```

`asm/` in git contains exactly **five hand-maintained files**: `crt0.s`,
`libgcc.s` (regenerated, see above - the checked-in copy is stale/ignored),
`m4a0.s`, `macros.inc`, `thumb_aliases.s`. Everything else is produced.

**VERIFIED** - `scripts/generate_asm.py` is 115 KB / ~3,000 lines, and
`_write_asm_files()` does `shutil.rmtree()` on `asm/nonmatchings` and
`asm/matchings` before writing. There is no hand-editing path.

Its `main()` (**VERIFIED**, line 2946):

```
[1/9] validate baserom.gba sha1
[2/9] run Luvdis  -> monolithic .s
[3/9] generate rom_header.s
[4/9] parse -> _expand_sub_functions -> _merge_fragments
      -> _filter_handcrafted_m4a0 -> _fix_non_word_aligned_starts
      -> write asm/nonmatchings/<module>/<Name>.s
[5/9] UPDATE src/*.c: remove INCLUDE_ASM for absorbed fragments,
      INSERT INCLUDE_ASM for newly-discovered ones, in ROM address order
[6/9] fixups; [6.5] fix .2byte branch encodings
[7/9] downgrade internal symbols to local labels
[8/9] apply renames from the TOML
[8.5] fix ldr alignment for non-word-aligned functions
[9/9] generate data/data.s; move matched functions to asm/matchings/
```

Step 5 is the part with no counterpart here at all: **the generator owns the
`src/*.c` INCLUDE_ASM lines**, so the C files and the disassembly cannot drift.

The pieces that map onto specific landmines in our CLAUDE.md, all **VERIFIED**
present as named functions in that file:

| Klonoa function | the landmine it makes structurally impossible here |
|---|---|
| `_detect_sub_functions` (return -> padding -> `push {lr}`) | "trailing orphaned data on the last function extracted" - the class `split_trailing.py` refuses 18 of |
| `_merge_fragments` / `_is_fragment` | leading/trailing orphan data; mid-function labels treated as functions |
| `_fix_non_word_aligned_starts` | the ROM-shifting alignment landmine |
| `_convert_trailing_data`, `_convert_pc_relative_pool`, `_apply_data_regions` | raw `.byte` runs inside fragments (sections O, O.1, T.12) |
| `_assembles_identically` | the byte-identity self-check `decode_jumptable.py` had to grow |
| `_move_matched_functions` | step 7 of our workflow, done by hand, which is how a fragment got deleted while an `.include` still pointed at it |

**What adopting it would cost here.** Honestly: this is the expensive one, and
it is *not* a prerequisite for §1. Our `asm/*.s` came from Luvdis too, so the
generator idea transfers, but 757 blob files, `splits.yaml`, and ~4,400 hand-
maintained fragments (several now hand-rewritten by `decode_jumptable.py`) are
all inputs a generator would have to reproduce byte-for-byte before it could be
trusted. The right sequencing is: **do §1 first** (it is independent and it is
where the throughput is), and treat asm regeneration as the follow-on that makes
sections O/O.1/T.12 stop recurring.

The cheap down-payment available today, with no architecture change:
`make verify-asm`-style byte comparison of every assembled `asm/*.s` against
`baserom.gba` with relocation slots masked. **CLAIMED** by Klonoa's Makefile
comment that this found **1,454 bytes of the cartridge missing from `asm/`
while every other check reported success**. We have no equivalent check.

---

# 3. Migration sketch: adopt sa2's `NONMATCH` / `ASM_FUNC`

This is the recommendation. It is mechanical, it is reversible, and it can be
done file-by-file with the ROM sha1 as the gate at every step.

## 3.1 What changes

**`include/global.h`** gains, guarded exactly as sa2 does:

```c
#define NAKED __attribute__((naked))

#ifdef NONMATCHING
#define ASM_FUNC(path, decl)
#define NONMATCH(path, decl) decl
#define END_NONMATCH
#else
#define ASM_FUNC(path, decl)  NAKED decl { asm(".include " #path); }
#define NONMATCH(path, decl)  NAKED decl { asm(".include " #path); if (0)
#define END_NONMATCH }
#endif
```

Note this keeps `NONMATCHING=1` working unchanged for asm-differ's `-m` flow.
The difference is that `NONMATCHING=1` stops being the *only* mode that
compiles a draft.

**A source file goes from:**

```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018E88.s\"");
#else
u32 sub_8018E88(void *arg0) { ... }
#endif
```

**to:**

```c
NONMATCH("asm/nonmatching/sub_8018E88.inc", u32 sub_8018E88(void *arg0))
{
    ...
}
END_NONMATCH
```

and an undrafted one to a single line:

```c
ASM_FUNC("asm/nonmatching/sub_8018E88.inc", u32 sub_8018E88(void *arg0));
```

**Each `asm/nonmatching/<name>.s` becomes `<name>.inc`** by deleting the
5-line header and the two lines `\tthumb_func_start <name>` / `<name>:`. The
symbol, the `.thumb_func` directive and the alignment now come from the C
function. sa2's fragments are exactly this shape (**VERIFIED**:
`refs/sa2/asm/non_matching/engine/TransformSprite.inc` starts
`.syntax unified` / `.text` / `push {r4,...}` with no `thumb_func_start`).

## 3.2 What we gain, mapped to specific CLAUDE.md sections

| section | problem | status after migration |
|---|---|---|
| D | one broken sibling fails the whole object | **gone.** A broken draft fails the shipping build, so it cannot exist in the tree |
| I | "does not compile" measured in a poisoned TU | **gone.** Same reason |
| M | permuter win rejected because the file will not build | **gone.** Same reason |
| N.4, Q, T.2, T.4 | `X undeclared` / `redeclared as different kind of symbol` / `declare_missing` | **largely gone.** Every asm function has a real prototype at its real position. `declare_missing.py`, `fix_decl_conflicts.py` (all four shapes) and much of `recheck_needs_human.py` lose their reason to exist |
| T.9 | `declare_missing` adding lines trips agbcc's debug-line bug | **gone by removal.** No lines are being inserted any more |
| the alignment landmine | see §1.6 | reduced to "keep veneers in `asm/`" |

Tools that become unnecessary: `unblock_files.py`,
`quarantine_broken_drafts.py`, `reclaim_sibling_blocked.py`,
`gitops.compiles_in_isolation()`, most of `declare_missing.py` and
`fix_decl_conflicts.py`. That is a large amount of code whose only job is to
survive a convention.

## 3.3 What it costs, honestly

* **1,112 drafts must each compile, or be emptied to `ASM_FUNC`.** That is the
  real bill. It is not new work - CLAUDE.md already establishes that most of
  those drafts do not compile - it is *forcing the reckoning now* instead of
  paying it in false negatives forever. The mechanical answer: convert, build,
  and demote to `ASM_FUNC` anything that fails. The draft is not lost; it is in
  the factory DB's `candidate_body`, which is where it should have lived all
  along.
* **4,401 fragment files need a two-line header edit.** Scripted, verifiable:
  assemble old vs new in isolation and compare `.text` + relocations before
  accepting each rewrite - the check `decode_jumptable.py` already implements.
* **Every guard block needs a declaration.** This is the only genuinely new
  information required, because `ASM_FUNC(path, decl)` needs `decl`. For the
  1,112 drafted ones the signature is already written. For the 3,289 empty ones
  the honest default is m2c's inferred signature, or the K&R-safe
  `void sub_X()` when nothing is known - **NOT** a guessed arity, per section
  H's measurement that inferred signatures made things strictly worse. A K&R
  `void sub_X()` declares no parameters and so can never conflict with a call.
* **`split_func.py`, `splitlib.py`, `gitops.splice_candidate`,
  `find_guard_block`, `rescore_seeds.plain_score`, `validator`,
  `isolation_exact` and `twin_backfill` all parse the guard syntax.** They need
  updating together. This is the coordination cost and it is not small.
* **Risk of TU-level codegen coupling.** §1.4 Test 2 says a dead draft is
  byte-neutral in a small case. Before migrating in bulk, re-run that A/B over
  every already-matched file: convert, build, compare `.text` + relocs against
  `expected/`. If any file differs, stop.

## 3.4 Suggested order

1. Add the macros to `include/global.h` (byte-neutral - nothing uses them yet).
   Guard against the header landmine in section S; the `-g` fallback in the
   Makefile should already cover it.
2. Convert **one** file with a handful of guards, end to end, including its
   fragments. `rm -rf build/ && make` must say `mlss.gba: OK` and
   `check_layout.py` must be clean.
3. Convert every file that is **fully matched or fully undrafted** first (no
   `#else` bodies to reconcile). That is the majority of the 886 and it is
   pure mechanical win.
4. Convert the drafted ones, demoting non-compiling drafts to `ASM_FUNC`.
5. Only then delete the workaround tools.

Steps 1-3 are worth doing even if 4 stalls, because the declaration benefit
(§3.2, rows N.4/Q/T.2/T.4) lands at step 3.

---

# 4. Ranked transferable techniques

Ordered by expected value here. Each says what it replaces and gives an honest
transferability call, because this project's history is full of another
project's headline lever measuring near-zero on this corpus (T.5, T.6, T.10,
T.11).

## 4.1 `scaninc` - Make dependencies for assembler `.include`/`.incbin`

**pokeemerald `tools/scaninc/`** - https://github.com/pret/pokeemerald/tree/master/tools/scaninc
Also in sa2 (`tools/scaninc`) and MKSC's lineage.

**VERIFIED** by reading `tools/scaninc/asm_file.cpp:62-80`: it parses `.incbin`
and `.include` out of `.s` files (and `#include`/`INCBIN_*` out of `.c`) and
emits a Make `.d` file. **VERIFIED** in pokeemerald's `Makefile:316,326,336`:
`$(SCANINC) -M $@ ... $<` runs for every C and asm object.

**What it replaces here:** the single most dangerous landmine in CLAUDE.md -
*"`make` can report `mlss.gba: OK` against a genuinely broken tree, because
Make's dependency tracking has no idea assembler `.include`s exist."* Our fix
is process-level (`rm -rf build/` before any verdict). `scaninc` fixes it at
the tool level: `build/src/heap.o` gains a real dependency on
`asm/nonmatching/free_heap_8018DA8.s`, so deleting or editing that fragment
forces a rebuild.

**Transferability: HIGH, and unusually so.** It is a self-contained C++ program
with no project-specific assumptions, our fragments are ordinary `.include`
directives, and the failure it prevents has already caused a false "Match"
commit here. It also makes incremental builds trustworthy again, which
partially removes the `rm -rf build/` tax on every verification.

Caveat: it does not remove the `-DNONMATCHING` flag-staleness problem (Make
still cannot see a flag change). That still needs the current discipline.

## 4.2 `-fdump-function-size` and friends: instrument the compiler, not the output

**Dream-Atelier/agbcc fork** - https://github.com/Dream-Atelier/agbcc
(the Klonoa fork's README documents six flags; **VERIFIED** they are declared in
`gcc/toplev.c`'s `f_options[]` at lines 745-756).

| flag | what it prints | what it replaces here |
|---|---|---|
| `-fdump-function-size` | `agbcc-size: FOO bytes=NNN` to stderr per function | a whole class of `asm-differ`/`plain_score` invocations. The **delta** between two builds of the same function is exact, so "did my edit change codegen at all" costs one compile and a grep, with no `expected/`, no object diff, no repo lock |
| `-fdump-reg-lifetimes` | `agbcc-reglife: FOO r0=22-33 r4=18-32` | catches the same-size/different-bytes case a size delta misses - i.e. regalloc reshuffle, which is exactly what the permuter is searching over |
| `-fdump-pool-literals` | every fresh literal-pool entry that looks like an unnamed ROM/IWRAM address, plus the `sym + N` "cast cascade" shape | **T.10's 684 unnamed ROM addresses**, surfaced automatically by the compiler at the moment the code references them, instead of by scanning candidate bodies for `0x08xxxxxx` |
| `-finstrument-src-locs` | `@ src:file.c:LINE` comments in the `.s` | reading generated asm without counting instructions |

**CLAIMED** (their README, A/B tested by them and echoed in
`agbcc-source-shape-levers.md`'s "what does not matter" section): all six are
byte-neutral, ROM SHA1 unaffected.

**Transferability: HIGH for the flags, MEDIUM for the effort.** We already
build agbcc from source in the container, so adding a fork is a Containerfile
change plus rebuilding. The measurement discipline this repo has built
(`isolation_exact`, `plain_score`, `audit_instruments`) would get a *cheaper and
more direct* signal - and CLAUDE.md's own history says the instruments were the
problem fourteen times, so a signal that comes straight out of the compiler
rather than out of a diff of two linked objects is worth real weight.

**One concrete lead attached to this.** Their fork also carries
`dwarf2out: make -g output linkable and readable` (the only commit on the
branch). Their two `-g` bugs are not our
`asm/macros.inc:1: junk at end of line` - but the flag table shows
`-finstrument-src-locs` is implemented in `gcc/final.c`'s `output_source_line`
and the `case NOTE` line-number branch, which is *the same code path* that
emits the line directives our section S / T.9 blames. Somebody has already been
inside that function on this compiler. Our current answer is to recompile the
affected object without `-g` (Makefile fallback); patching agbcc would be the
real fix, and section S's "you cannot add a struct to a header" would go with
it. **Speculative** - I did not reproduce our bug against their tree.

## 4.3 Ghidra headless for the code/data boundary and jump tables

**Klonoa `scripts/detect_data_regions.py`** - **VERIFIED** by reading it: it
drives Ghidra headless with the **ARM Constant Reference Analyzer** and
**Decompiler Switch Analysis** to identify jump tables, literal pools and other
non-executable data inside the code section, and writes them back as
`[[data_regions]]` TOML entries the asm generator then honours. Its own
docstring says it is **game-agnostic** for any Thumb GBA ROM.

**What it replaces here:** the hand-rolled boundary logic in
`decode_jumptable.py` ("stop at the first non-Thumb-1 instruction") and the
manual `map_raw_regions.py` / `probe_code_region.py` reasoning. Section O left
**94 candidates refused**; T.12 got it to 49 rewritable and then explicitly
records that a second attempt at the remaining 29 assemble-failures + 10
byte-differs *gained nothing*, concluding the residue needs "the
region/`code_prefix` boundary logic to be right". That is precisely what
Ghidra's switch analysis produces.

**Transferability: HIGH on the analysis, MEDIUM on the plumbing.** The output is
address ranges, which slot straight into `map_raw_regions.py`'s world. It needs
a Ghidra install, which the container does not have. But this is the one place
where the residual failures here have a named cause and somebody else has the
industrial answer to it.

## 4.4 `pool_abs_syms.sh` - stop penalising named symbols when scoring

**Klonoa `scripts/pool_abs_syms.sh`** - **VERIFIED** by reading it. It appends
`.set NAME, 0xADDR` lines for the **data** globals a candidate object still has
undefined, then re-assembles, so the literal pool holds a bare number rather
than a relocation.

Its own header explains why, and it is the trap T.11 hit here:

> a data address in a target's literal pool is a bare number (`.4byte
> 0x03005428`). A candidate that spells the same cell as a named extern
> assembles to `.word gUnk_03005428` plus an `R_ARM_ABS32` relocation, and
> objdiff scores that row as a mismatch ... The penalty therefore lands ONLY on
> candidates that use names, which is backwards.

**CLAIMED** effects, from that header: `RenderDialogSprites` 42 -> 0,
`AnimatePaletteEffects` 24 -> 2, `PlayerRespawnOrDeath` 6 -> 0, and - the
telling one - *"asmlift ranked its own raw-address candidate above its named one
and printed the worse of the two"*, and *"Transmuter could not report a perfect
match at all"*.

**VERIFIED limit, stated in the script**: symbols the ELF types as `FUNC` are
left alone, because a `bl` is a relocation on both sides.

**What it replaces here:** T.11 documents exactly this trap being hit
(*"Comparing without resolving relocations reports the lever as harmful in every
single case"*) and being worked around inside `extern_lever.py`. Klonoa's
version is a general fix applied at the *compiler template* level, so every
consumer - asmlift, the permuter's scorer, objdiff - benefits. Ours is local to
one tool.

**Transferability: HIGH, and it is small.** ~20 lines of shell over
`arm-none-eabi-nm -u` and `readelf -sW`. Worth wiring into
`isolation_exact.py`'s comparator so the named/unnamed spelling stops
distorting `iso_score` - which is now what the permuter queue is ranked by.

## 4.5 The agbcc source-shape levers with no pass in our profile

Both Klonoa learnings docs are in `docs/learnings/`
(https://github.com/Dream-Atelier/kl-eod-decomp/tree/main/docs/learnings).
`agbcc-source-shape-levers.md` was already mined here.
**`agbcc-asm-barriers.md` (417 lines) apparently was not**, and it contains
different material.

**VERIFIED** by reading `tools/permuter_patches/0001-agbcc-randomization-profile.patch`
against `tools/decomp-permuter/src/randomizer.py`: our `[agbcc]` profile raises
`perm_commutative` (lever 5), `perm_cast_simple` and
`perm_randomize_internal_type` (lever 6), and suppresses eight passes. It leaves
three at their MIPS-era defaults that map onto documented agbcc levers:

| pass | default | the lever it implements | source |
|---|---:|---|---|
| `perm_ins_block` (`if (1) {...}` / `do{}while(0)`) | 10 | **the orphan-block pattern**: a C89 block scope that ends one local's live range so the next can reuse its register. Klonoa calls these "load-bearing" in practice | `agbcc-asm-barriers.md`, "The Orphan Block Pattern" |
| `perm_reorder_decls` | 10 | **lever 7** - two locals of the *same size* follow declaration order in the stack frame; and separately, *"declaration order hoists literal-pool loads"* (declaring `tbl` before `p` moved its `ldr r5, =...` ahead of a re-read, and was half of a zero-pin match) | levers doc §7 + barriers doc, `StreamCmd_SetBGScroll` |
| `perm_temp_for_expr` | 100 (already dominant) | **lever 4** in both directions - introduce/remove a temp for a global. Klonoa measured that *caching* a global collapses four switch arms and loses the match, while for MMIO the local is mandatory | levers doc §4 |

**Recommendation:** raise `perm_ins_block` and `perm_reorder_decls` in the
`[agbcc]` profile, with the citations above written next to them the way the
existing entries are. This is a small, cheap, evidence-backed change - not a
claimed breakthrough.

**Transferability: MEDIUM.** Honest caveat, and it is the T.6 pattern: Klonoa's
measurements are on *hand-written* C with real structs and named externs, while
95% of our candidate bodies are flat `*(TYPE *)(base + off)` casts from m2c.
`perm_reorder_decls` still has decls to reorder and `perm_ins_block` still has
statements to wrap, so unlike the bitfield and array passes there IS something
to act on - but expect a few points, not matches.

## 4.6 Two levers from `agbcc-asm-barriers.md` that are seed rules, not permuter passes

Recorded because section E's thesis is that a deterministic rule beats a
15-minute search, and both of these are deterministic.

**(a) `u16` vs `u32` parameter width decides shift folding.** **CLAIMED**, with
a worked mechanism: with a `u32` parameter agbcc folds `(x << 16) >> 13` into
`x << 3`; with a `u16` parameter the `<< 16` is the ABI zero-extension at
function entry and cannot be folded, so `lsls`/`lsrs` stay separate and loads
schedule between them. Klonoa notes pokeemerald and sa3 both declare
`m4aSongNumStart(u16 n)`, and that their own `u32` was *"a type inference error
that required shift barriers to compensate"*.

**Why this is interesting here:** m2c has no reason to prefer `u16`, and
CLAUDE.md's own m2c rough-edge list already says *"register-size aliasing
(u8/u16 vs word) is weak"*. Our single highest-yield deterministic rule to date
(`restore_omitted_leading_params`, 15% of the corpus) is also about argument
shape. This is the same family and it is testable cheaply: for any seed whose
body shifts an incoming parameter left by 16 or 24 and then right by less,
try narrowing the parameter and re-measure with `isolation_exact`. **I did not
measure this on our corpus** - it is a hypothesis with a mechanism, not a
result.

**(b) The DMA-macro idiom.** **CLAIMED** with a strong worked example: a
`register volatile u32 *dma; dma[0]=src; dma[1]=dst; dma[2]=ctrl; dma[2];`
block is an inlined `DmaCopy16`/`DmaFill16`/`DmaCopy32`, and writing the
canonical macro instead reproduces the bytes - including register choice -
because the target came from the same macro. Their write-up is unusually candid:
a 239k-iteration permuter refine and ~8 hand variants all failed on
`SetupTextBGLayer`, and the four-line macro matched.

The general form is the useful part: **when a permuter search plateaus on a
value you hand-rolled, the smell is the hand-rolling.** m2c emits hand-rolled
pointer arithmetic by construction, so any function touching `0x040000B0`-`0xE0`
is a candidate for this. **We have no DMA macros in `include/`** - worth
checking against the ROM's actual DMA sites.

## 4.7 Filename-encoded per-TU compiler flags

**MKSC** - **VERIFIED** in `Makefile` and `ld_script.ld`: `src/actorList.O3.c`,
`src/oam.O3.c`, `src/transition.O3.c` are matched by a
`$(C_BUILDDIR)/%.O3.o : $(C_SUBDIR)/%.O3.c` rule that compiles at `-O3`.
Klonoa does the same thing with explicit rules and naming (`m4a_1.c` under
`old_agbcc -ftst`, `m4a_tst_*.c`, `m4a_nopush_*.c` per-function
`-fprologue-bugfix` units).

**What it replaces here:** nothing yet - but T.5 closed the compiler-variant
question at the *whole-ROM* level ("this ROM has ONE compiler configuration"),
and both of these projects needed per-*file* and even per-*function* variation.
If a stubborn cluster ever turns out to be a differently-compiled module, the
convention for expressing that is a filename suffix and one Makefile rule.

**Transferability: LOW right now, cheap insurance later.** Do not go looking
for it; recognise it if `compiler_variants.py` ever shows a *contiguous* run of
functions preferring a different variant.

## 4.8 `find_dead_code.py` - a whole-cartridge reference graph

**Klonoa `scripts/find_dead_code.py`** - **VERIFIED** docstring. It reports a
function as unreachable only when *none* of these finds a way in: any branch
form read both from the disassembly **and decoded straight from cartridge
bytes** (because some calls are emitted as raw `.4byte`); an ARM B/BL inside a
`bx pc; nop; b <arm>` interwork thunk; an `adr rN, X; bx rN` mode switch; a
literal-pool or jump-table word; **or a pointer at ANY byte alignment anywhere
in the 4 MB cartridge**.

**What it gives us:** the by-product is more valuable than the headline. That
graph is a caller/callee index over the whole ROM, built from bytes rather than
from what has been extracted - which is what T.16's callee-coverage problem
needs, what `infer_signatures.py` was reaching for, and what T.10's 684 unnamed
addresses need in order to be named by role rather than by address.

**Transferability: HIGH for the graph, unknown for the dead-code answer.** MLSS
is a bigger, later game; how much genuinely-unreachable code it has is not
something I can predict.

---

# 5. Data and assets (Phase 4)

## 5.1 `gbagfx` closes the loop that `extract_assets.py` cannot

**pokeemerald `tools/gbagfx/`** - https://github.com/pret/pokeemerald/tree/master/tools/gbagfx
(sa2 vendors it too, at `tools/gbagfx/`).

**VERIFIED** by reading `tools/gbagfx/main.c:601-622`, the full conversion
matrix is bidirectional:

```
1bpp|4bpp|8bpp <-> png        png -> gbapal, gbapal <-> pal (JASC)
latfont | hwjpnfont | fwjpnfont <-> png
* -> lz    lz -> *            * -> rl    rl -> *      * -> huff   huff -> *
```

**The direction that matters is the one we do not have.** Our
`tools/gba_compress.py` **VERIFIED** exposes `decompress_lz77`,
`decompress_rle`, `decompress_any`, `scan` - and nothing that compresses. So
`assets/raw/*.bin` can be looked at but never turned into buildable source: the
build still has to `.byte` the compressed blob out of the ROM. gbagfx has
`LZCompress` and `RLCompress` (`lz.c:72`, `rl.c:64`).

The detail that makes it actually work is easy to miss and is **VERIFIED** in
`main.c:428-479`: `LZCompress` takes a **`minDistance`** parameter, defaulting
to 2 *"for compatibility with `LZ77UnCompVram()`"*, overridable per invocation.
Reproducing a ROM's original compressor byte-for-byte is exactly the kind of
one-knob difference that decides whether a re-compressed asset round-trips, and
pret has already found and exposed the knob.

**What it replaces here:** the front half of Phase 4. Our 75 confirmed
compressed blocks (CLAUDE.md: *"RLE dominates over LZ77 in this ROM"*) become
`graphics/foo.png` + a build rule, instead of `.byte` runs. The gate is
obvious and cheap: decompress -> re-compress -> compare to the ROM bytes. Any
block that round-trips is convertible; any that does not tells you the game used
a different compressor setting, which is itself the finding.

**Transferability: HIGH.** It is a standalone C program, the formats are BIOS
formats (not game-specific), and our tile decoder is already independently
verified against `dword_81DD9F4`. The classifier problem CLAUDE.md flags -
*"which of the 75 blocks are actually graphics is not verified"* - is answered
by round-tripping, not by heuristics: a block that decodes as 4bpp tiles, renders,
re-encodes and re-compresses back to the identical ROM bytes is graphics.

## 5.2 `preproc` and `charmap.txt` for text

**pokeemerald `tools/preproc/`** (+ `charmap.txt`) - **VERIFIED** present with
`charmap.cpp`, `string_parser.cpp`, `utf8.cpp`, and **VERIFIED** in the Makefile
as `$(PREPROC) $< charmap.txt | $(CPP) ... | $(PREPROC) -ie $< charmap.txt | $(AS)`.
It turns `_("Hello")` in C/asm into the game's own character encoding at build
time.

**What it replaces here:** CLAUDE.md's `find_text_strings.py` found where
dialogue lives; `preproc` is what turns that from a finding into source. Our
`docs/formats/README.md` records the text-string location as confirmed.

**Transferability: MEDIUM.** The machinery is game-agnostic; `charmap.txt` is
not - it has to be derived from MLSS's own font/encoding tables. That derivation
is the work, and `preproc` is the (small) part that comes free afterwards.

## 5.3 Naming ROM data: the mechanism is already proved here, only the volume is missing

T.10 correctly killed the extern-vs-constant permuter pass on the grounds that
`tools/symbols/rom.txt` holds **56 symbols** against **684 distinct** referenced
ROM addresses. Klonoa's answer is not a tool, it is a *file*: **VERIFIED**,
`ldscript.in.txt` opens with ~500 lines of hand-curated
`gSpriteDataTable = 0x08189E84;` / `gSineTable = 0x080D8E14;` assignments,
including an explicit comment for the case where a function has no
`thumb_func_start` of its own and "C cannot link against it by name".

Two things follow:

* The **mechanism** is identical to ours (`--just-symbols=symbols.txt`, which
  MKSC also uses - **VERIFIED** in its `LDFLAGS`), and CLAUDE.md already records
  the `room_props_table` renames working exactly that way. So nothing new is
  needed to *hold* 684 symbols.
* T.11's measurement stands - minting them all up front buys ~5% "closer" and
  zero matches - **but T.11's own conclusion was that the lever belongs as a
  per-function seed improvement.** `-fdump-pool-literals` (§4.2) is what makes
  that cheap: the compiler tells you which addresses a candidate is about to
  bake in as constants, at the moment it does it.


---

# 6. Inventory of the local clones, and what's already wired up here

## 6.1 gba-kit - VERIFIED, and it is not a decompilation tool at all

**`~/Desktop/mlss-reference/gba-kit`** (https://github.com/macabeus/gba-kit) is
a **TypeScript GBA emulator** built as npm packages, by the same author as
mizuchi/asmlift: `@gba-kit/arm-emulator` (ARM7TDMI core), `@gba-kit/gba-emulator`
(full PPU/APU/DMA/timers/IRQ), `@gba-kit/gba-node` (headless scripting),
`@gba-kit/gba-browser`, `@gba-kit/gba-react`, and `@gba-kit/debug-info` (ELF
symbols + DWARF line tables for PC->source). **VERIFIED** package list via
`packages/` and the README's own table.

**Relevance here: none for matching decomp itself**, but two things are worth
flagging:

* `@gba-kit/debug-info` parses DWARF the same way the Klonoa `-g` sidecar
  (§4.2) is meant to be consumed - it is a second, independent implementation
  of "read agbcc's DWARF output" that could be diffed against if our own DWARF
  reading (if we ever add it) needs a cross-check.
* It is a **headless, scriptable GBA emulator with a debugger** (breakpoints,
  memory viewer, disassembler). CLAUDE.md's collision/physics work
  (`get_surface_height_at_x`, the `ctx+0x80C` trace, the coldef struct) has all
  been done by static reading of ROM data plus disassembly, with no runtime
  verification tool in this repo at all. `gba-node` would let a hypothesis like
  "this coldef byte is a slope enum" be checked by actually running the ROM and
  watching the value, the same category of tool the "GBA decomp reference
  repos" memory note already flags as reusable but distinct from mizuchi/Klonoa.
  **Not evaluated further here** - out of scope for a matching-decomp technique
  hunt, flagged for whoever next touches the physics thread.

## 6.2 `tools/factory/asmlift_bridge.py` - what's wired vs. what asmlift does upstream

**VERIFIED** by reading `tools/factory/asmlift_bridge.py` in full (its own
docstring, ~210 lines). What's actually wired up:

* Finds a local `@asmlift/cli` binary (env var, `which`, or a
  `node_modules/.bin/asmlift` search) and shells out to it per fragment with
  `--target agbcc`.
* Runs only on rows with **no `iso_score` yet** - i.e. functions m2c could not
  seed at all.
* Every asmlift body is compiled alone and byte-compared against the retail
  fragment (`isolation_exact`-style), never taken on faith.
* Byte-exact candidates are **routed to the validator**, never promoted
  directly - `finish_match()`'s from-scratch gate is unchanged.
* Measured and recorded honestly in its own docstring: smallest-first 150
  fragments -> 27% produce compiling C, 8 byte-exact; the full remaining
  1,200-fragment pile -> 12% produce C, 2 byte-exact, "outside the band that
  converges" for the large-function majority. The docstring explicitly warns
  against extrapolating the small-sample number, citing CLAUDE.md N.4b's own
  sampling-bias lesson.

**What upstream asmlift has that this bridge does NOT use, based on Klonoa's
`decomp.yaml`/Makefile (§ "Split Compilation Units" and the `asmlift-elf`
target, both **VERIFIED** read earlier in this pass):**

* **The DWARF-sidecar symbol source (`klonoa-eod-syms.elf`).** Klonoa's
  `make asmlift-elf` merges a modern-gcc-compiled `ctx.c` (built at
  `-mabi=apcs-gnu -gdwarf-2 -g3 -gstrict-dwarf`, just for its
  `.debug_macinfo` macro table) onto their agbcc-built ELF's own `-g` DWARF
  (types + per-function signatures for every function already decompiled),
  and asmlift reads *that* as its symbol source - so asmlift's callee
  signatures come from **our own matched functions**, compounding exactly the
  way T.16 wants (T.16 killed the "feed m2c the matched-function context"
  lever at 25.6% matched / 7.6% callee coverage - a *richer* signature source
  than a flat header might behave differently, untested here).
  `asmlift_bridge.py`'s docstring does not mention an `--elf`/symbol-source
  flag at all, and this repo does not compile with `-g` for that purpose
  (Makefile's `-g` exists only for the debug-line-bug workaround per section
  S/T.9, not to build a types sidecar).
* **`decomp.yaml`'s `pool_abs_syms.sh` post-processing** (§4.4) - asmlift's own
  compile template resolves named-extern literal-pool rows to absolute values
  before scoring. Nothing in `asmlift_bridge.py` does this, so any asmlift
  candidate that names a ROM global would be penalised in `isolation_exact`
  exactly the way T.11 found and worked around for the extern lever generally.

**Recommendation, concrete and small:** wire `pool_abs_syms.sh`'s technique (or
a Python port) into `asmlift_bridge.py`'s scoring step. It is independent of
the DWARF-sidecar idea (which needs a `-g` build discipline change, bigger) and
directly fixes a known, named class of false negative.

## 6.3 mizuchi - already-known conclusion holds, one addition

CLAUDE.md section L already places mizuchi correctly (an ARMv4T/agbcc pipeline
integrating Claude + m2c + decomp-permuter + objdiff, reached via a paid
frontier-LLM budget this project does not have). **VERIFIED** addition worth
recording: `mizuchi.yaml`'s `compilerScript` for Klonoa strips `.size`
directives with `sed -i '' '/\.size/d'` before assembling - a data point
consistent with our own N.4a finding that `.size` is exactly what
`thumb_func_start` does NOT emit, which is why asm-differ's `-o` mode cannot
tell where a function ends. Mizuchi's own template treats that as something to
actively delete rather than rely on, which is a second, independent
confirmation that this ROM-format family has no reliable function-size
metadata and any scorer must get its own boundary information some other way
(objects, not symbols) - exactly N.4a's fix (`_text_image`, whole-object plain
build).

---

# 7. NOT WORTH IT

Recorded explicitly, in the tradition CLAUDE.md already keeps (T.5, T.6, T.10),
so nobody re-derives these:

* **The mizuchi Claude-runner plugin itself, wholesale.** Its full pipeline
  (Claude Agent SDK, `compile_and_view_assembly` tool loop, iterative
  feedback) is exactly the "LLM as decompiler" tier CLAUDE.md's section L
  already excludes on cost grounds (Tyler is on a Pro plan; ~5,600 functions is
  not viable). Nothing here changes that arithmetic. Re-confirmed, not new.
* **A wholesale switch to Klonoa's `INCLUDE_ASM` (plain `asm()`, no
  declaration).** §1.5 shows it is strictly weaker than sa2/tmc's `NONMATCH` -
  it still has the missing-prototype problem this project has repeatedly
  hit (N.4, Q, T.2, T.4). Klonoa papers over it by hand-listing forward
  declarations in `ldscript.in.txt`'s header comment for the rare veneer case,
  not structurally. Adopt sa2's form (§3), not Klonoa's.
* **Ghidra as a dependency for anything beyond the one-off jump-table/data-
  region pass in §4.3.** It is a heavyweight, GUI-oriented tool to run
  headless in a container; worth it once for the specific
  switch-analysis/constant-reference output that has no cheap substitute, not
  worth building an ongoing pipeline around when `map_raw_regions.py` and
  `probe_code_region.py` already cover the general case adequately.

---

# 8. Ranked summary

**ADOPT, high confidence:**

1. **§3 - migrate the `NONMATCHING` guard to sa2/tmc's `NONMATCH`/`ASM_FUNC`
   scheme.** The single highest-value change available. Removes the
   TU-poisoning root cause (CLAUDE.md D, I, M, N.4a-adjacent, Q, T.2, T.4) at
   the source instead of continuing to build detection/workaround tooling
   around it. Verified byte-neutral on a representative small case (§1.4,
   Tests 1-3); cost is real but bounded and mechanical (§3.3-3.4).
2. **§4.1 - `scaninc`.** Fixes the single most dangerous landmine in
   CLAUDE.md ("`make` can report OK against a genuinely broken tree") at the
   tool level instead of the current process-discipline workaround. Small,
   self-contained, no game-specific assumptions.
3. **§4.4 - `pool_abs_syms.sh`.** Small, concrete, fixes a real measured
   false-negative class in exactly the tool (`isolation_exact`/`iso_score`)
   that now ranks the whole permuter queue (T.13). Also apply to
   `asmlift_bridge.py` per §6.2.

**ADOPT, medium confidence / bigger lift:**

4. **§2 - regenerate `asm/` from the ROM (Klonoa's `generate_asm.py`
   pattern).** Structurally the safest architecture, and it would have
   prevented essentially every orphaned-data / alignment / trailing-fragment
   landmine in CLAUDE.md's history. Correctly sequenced *after* §3, since it
   is the bigger of the two rewrites and §3 delivers most of the near-term
   throughput gain on its own.
5. **§4.2 - the six agbcc instrumentation flags (Dream-Atelier fork).**
   Cheaper and more direct signal than our current object-diff-based
   measurement stack, which CLAUDE.md's own history shows has been the
   recurring source of false verdicts (T.15's "fourteen sections, same bug").
   Requires forking/patching our own agbcc build, which this project already
   does for other reasons (local m2c patches, local permuter patches - same
   pattern, same governance).
6. **§5.1 - `gbagfx` (compress direction).** Closes Phase 4's biggest gap:
   we can decompress and inspect but not re-compress, so nothing in the two
   rodata blobs can become buildable source yet. Standalone C, game-agnostic
   BIOS formats, cheap round-trip verification.

**WORTH TRYING, smaller/speculative:**

7. §4.3 (Ghidra for the jump-table/data-region residue T.12 stalled on),
   §4.5 (`perm_ins_block`/`perm_reorder_decls` weight increase - cheap,
   evidence-backed, expect points not matches), §4.6a (`u16` parameter width
   as a deterministic seed rule - untested here, has a stated mechanism),
   §5.3 (wire `-fdump-pool-literals`-style output into per-function extern
   promotion rather than bulk-minting).

**NOT WORTH IT:** see §7.

---

STATUS: done. All five priorities from the brief are addressed: §1-3
(priority 1, TU-poisoning structural comparison + migration sketch, in full),
§2 (priority 2, asm-regeneration finding, verified with function-level
detail), §4+§6.3 (priority 3, agbcc source-shape rules), §6 (priority 4,
local-clone inventory incl. asmlift_bridge wiring gap), §5 (priority 5,
data/asset pipelines). §7 gives explicit NOT WORTH IT calls per the brief's
instruction to flag when another project's headline lever looks like it may
be near-zero here. §8 is the final ranked ADOPT summary. No repo files
outside this doc were modified; no commits made; tools/factory/, tools/m2c*,
tools/symbols/, and asm/ were read-only throughout (a few isolated agbcc
compiles happened only in /tmp scratch, never in-repo). Reference clones live
at `~/Desktop/mlss-reference/kl-eod-decomp`, `~/Desktop/mlss-reference/mizuchi`,
`~/Desktop/mlss-reference/gba-kit` (pre-existing) and under
`<scratchpad>/refs/{mksc,sa2,tmc,pokeemerald,agbcc}` (cloned this session,
scratchpad only, safe to delete).
