# CLAUDE.md

Guidance for whoever (human or Claude) works on this repo next. Read it all
before touching anything.

**Current plan: [docs/plan-2026-08-23-master.md](docs/plan-2026-08-23-master.md).**
It supersedes both 2026-08-22 plans and is backed by six review docs
(`docs/review-2026-08-23-*.md`) with the measurements behind every claim.

## What this is

A decompilation of *Mario & Luigi: Superstar Saga* (USA), GBA, built with
`agbcc`. Goal is 100%: every byte of the ROM as matching C or labeled data,
in service of modding tools, asset editors, and understanding the engine
(physics/collision is the maintainer's specific interest).

**Run `tools/progress.py` for the live count. Never trust a number in a doc.**
As of 2026-08-23: ~1,578 of 5,996 matched (26.3%). `asm/mariobros.s` is a
separate embedded Mario Bros. ROM — **out of scope by maintainer decision**,
tracked apart from "game proper" everywhere.

Upstream is jellees (`github.com/jellees/mlss`), inactive since July 2024.
Their decompiled work was solid; the problem was that every step was manual,
which doesn't scale to ~6,000 functions. Everything here exists to fix that.

**We are not the only GBA matching decomp, and the method is what's unusual.**
Sonic Advance 1/2 is ~99.2% (human community, explicit no-LLM policy); Minish
Cap and Mario Kart: Super Circuit are done (MKSC by jellees, this repo's own
upstream). What's distinctive here is one maintainer plus corpus-level
automation. Note macabeus benchmarked the standard stack (m2c + agbcc +
objdiff + permuter) at **0 of 30** on Sonic Advance 3 — GBA/Thumb/agbcc, the
same platform. Our results come from the corpus-level layer, not the stack.

## Where this could lead

**Corrected 2026-08-23. The port goal is reachable NOW, not after 100%.**

MinishCapRecomp's own policy: *"Only symbol metadata (function names,
addresses, sizes) from the zeldaret/tmc decompilation enters this repo —
never its C source."* `gbarecomp` (MKSC Recomp, EmeraldRecomp,
FireRedLeafGreenRecomp) statically recompiles the ROM directly. What it wants
from us is a **symbol map**, which we already produce as a by-product.

So an MLSS Recomp is decoupled from ever reaching 100%. The previous framing
here ("finish the decomp first") was wrong. Readable C and a complete symbol
map are the deliverables that matter for that path.

## Building

    ./container.sh make

The container is the entire toolchain (devkitARM + pinned from-source agbcc).
See [INSTALL.md](INSTALL.md) for the native path. `make` ends by hashing the
ROM against `rom.sha1` and must print `mlss.gba: OK`. No retail ROM needed.
`./container.sh <anything>` runs that command inside the toolchain.

## Directory layout

- `asm/*.s` — raw disassembly, one file per Luvdis-emitted chunk.
- `asm/nonmatching/<name>.s` — an extracted function not yet proven matching.
- `src/*.c` — decompiled C. Order in the file IS byte order in the ROM for
  that file's contribution.
- `tools/splits.yaml` — **the** manifest of ROM layout; generates
  `ld_script.ld`. Don't hand-edit `ld_script.ld`.
- `tools/symbols/{ewram,iwram,rom}.txt` — generates `symbols.txt`.
- `tools/splitlib.py` — shared library; `split_func.py`, `gen_ldscript.py`,
  `gen_symbols.py`, `progress.py` all import it.
- `tools/factory/` — the automated pipeline (see Monitoring).
- `.claude/factory/state.db` — sqlite state. **The `sqlite3` CLI is not
  installed; use python3's `sqlite3` module.** Tables: `functions`, `events`,
  `edges`.

## The NONMATCHING convention

```c
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/name.s\"");
#else
return_type name(args) { /* C attempt */ }
#endif
```

Default build splices verbatim retail bytes, so the ROM stays byte-identical
however broken the C is. `make NONMATCHING=1` compiles the `#else` instead.
Once confirmed matching, delete the whole guard — that's what `progress.py`
counts. Before a real attempt exists, `split_func.py` leaves an **empty**
`#else` (deliberately, not an `#error`: agbcc compiles a whole translation
unit, so one `#error` fails every function in that file).

**This convention is scheduled for replacement.** It is the root cause of a
whole family of bugs (see The Law below) because a broken draft can sit in the
tree silently poisoning its siblings. sa2 and tmc both use a naked-function +
`if(0){draft}` macro where a broken draft fails the *shipping* build
immediately. Verified working under our own agbcc. Migration plan and costs:
`docs/review-2026-08-23-other-decomps.md` §3.

## Workflow: decompiling a function

**In a fresh `git worktree`? Run `./container.sh make` once immediately** —
`split_func.py` needs `mlss.map`, which only exists after a build.

1. `./container.sh tools/progress.py` — see what's next.
2. `./container.sh tools/split_func.py <symbol> [--dest NAME]` — extracts,
   wires the stub in, regenerates `ld_script.ld`.
3. `./container.sh make` — must still say `mlss.gba: OK`. If `FAILED`, run
   `./container.sh tools/check_layout.py` first: it names in one line whether
   the extraction shifted ROM layout and which object did it.
4. **Refresh `expected/` now**, not just after a match — extraction moves a
   symbol between objects, and a stale snapshot makes asm-differ diff against
   the wrong thing:
   `./container.sh make && rm -rf expected && mkdir expected && cp -r build expected/`
   (plain `make`, **never** `NONMATCHING=1`.)
5. Write the C in the `#else`.
6. `./container.sh asm-differ -mwo <name>` — iterate.
7. Stuck on register allocation? `./container.sh tools/permute.py <name>` then
   `tools/decomp-permuter/permuter.py -j nonmatchings/<name>`.
8. Once matching: delete the guard, delete the fragment, and
   **`rm -rf build/ && ./container.sh make`** — the `rm -rf` is not optional
   (see landmines).
9. Commit. Small, one-function-ish commits are the norm.

**Extraction is front-to-back only within a file.** `split_func.py` refuses a
function that isn't the first remaining one in its blob, and says what to
extract first.

## Generating C: use m2c, not an LLM

`tools/m2c/` is [m2c](https://github.com/matt-kempster/m2c), a deterministic
decompiler. Its ARM/Thumb backend is by Simon Lindholm (author of asm-differ
and decomp-permuter), and m2c's own test suite carries 80 agbcc-Thumb fixtures.

    python3 tools/factory/m2c_bridge.py <symbol>       # seed one function
    python3 tools/factory/m2c_sweep.py --generate-only # survey yield

`m2c_bridge.py` adds `--valid-syntax` (unknown fields become
`M2C_FIELD(arg0, u8 *, 0x2B5)`, carrying the access width) and drops m2c's
guessed declarations for symbols `include/common.h` already declares.

**A controlled 5-way benchmark settled this: nothing beat m2c.** Few-shot,
best-of-5, multi-turn diff feedback, a 32B dense model and a reasoning model
all scored the same or worse at 20-125x the cost. Don't reach for a bigger
model or a cleverer prompt — that path is measured and dead. (Scope: those
were *local* 32B models on a CPU-only box. Frontier models are a different
question, ruled out here on **cost**, not capability — the maintainer is on a
Pro plan. Klonoa reached 51% using Claude Code.)

m2c output is a **seed**, not a match. It goes through the identical permuter
search and the identical from-scratch validator gate as anything else.

**m2c is ~5s/function, CPU-bound, embarrassingly parallel: 476/min with 6
workers.** Measure the bottleneck, don't reason about it.

Known rough edges: literal-pool symbol resolution is imperfect; it doesn't
infer arrays; register-size aliasing is weak; complex control flow falls back
to `goto`; it can't translate BIOS `swi` veneers.

**The biggest known m2c defect, and the largest lever available (2026-08-23):**
four error classes — `invalid type argument of unary *`, `called object is not
a function`, `void value not ignored`, `invalid use of void expression`,
**85.1% of all compile failures** — are ONE defect: m2c reconstructs an address
as untyped arithmetic then dereferences/calls it with no cast. **1,126
functions (77.8%)** have every diagnostic inside this family; 1,060 are
otherwise clean. Two existing rules patch narrow slices, which is why the
general pattern went unnoticed. Design sketch in
`docs/review-2026-08-23-m2c-census.md`.

## Local m2c patches (never upstream)

`tools/m2c` is a submodule pinned to `matt-kempster/m2c`. Local changes live
as patches in `tools/m2c_patches/`, applied by `apply.sh` (idempotent).
**Maintainer's decision: never contributed upstream, nothing pushed there.**

Patches, not submodule edits, because a submodule is tracked by SHA — a
working-tree edit is invisible to this repo's history and destroyed by
`git submodule update`. `git status` showing `M tools/m2c` is expected and
means "the submodule's working tree is dirty", not a staged change.

**Run `tools/m2c_patches/apply.sh` after any `git submodule update`**, or if
m2c starts emitting `M2C_ERROR(/* unknown instruction: ... */)`.

The main patch: m2c didn't recognise the pre-UAL Thumb spellings `ldsh`/`ldsb`
though it implements them under the UAL names `ldrsh`/`ldrsb`. That single
alias affected **36% of the corpus**. Read m2c's error text before theorising.

**No fork is needed and none exists** — upstream *is* the ARM home. We already
carry Lindholm's ARM fixes from 2026-08-10.

## Matching tools

**asm-differ** (`diff_settings.py` at repo root): configured for `-o`
(object-file diff) against a gitignored `expected/` snapshot. `-f` whole-ROM
mode **does not work here** — it needs a load-address annotation GNU ld never
emits for this script (everything is VMA==LMA, one flat `.text`).

⚠️ **asm-differ `-o` diffs whole OBJECTS, not functions.** `thumb_func_start`
emits no `.size`, so a diff runs past the function's end and the score is
dominated by however many functions follow it in the file. This caused a large
family of bugs. Prefer `tools/factory/isolation_exact.py` (byte-exact, one
symbol alone, ~2,000/min, read-only) or a plain-build score
(`rescore_seeds.plain_score`).

**objdiff** (`tools/factory/objdiff_score.py`) fixes the above by
construction: it reads real ELF symbol boundaries, so it scores ONE symbol
inside a multi-symbol object, and its per-instruction match percentage
(0-100) is a normalized signal `iso_score`'s raw byte count doesn't give.
Wired into `tier2.py`'s claim ordering (`OBJDIFF_ADMIT_FLOOR`). **Runs on
the HOST directly, not inside the container** (unlike every other factory
tool) — `objdiff-cli` needs to be on the host `PATH` or pointed to via
`OBJDIFF=/path/to/objdiff-cli`. Install: build from
[`encounter/objdiff`](https://github.com/encounter/objdiff) with
`cargo build --release -p objdiff-cli`, then put the binary somewhere on
`PATH` (`~/.local/bin/objdiff-cli` is where the running factory expects
it). `./container.sh` never builds this — it's a host-side Rust binary,
not part of the agbcc toolchain image.

**decomp-permuter** (`tools/decomp-permuter`, fork
`WhenGryphonsFly/decomp-permuter-agbcc` — mainline doesn't target ARMv4T+agbcc).
`tools/permute.py <name>` does the isolate+import dance. Needs a real,
standalone-compilable `#else` first — it improves an attempt, it doesn't write
one. Local patches in `tools/permuter_patches/` (same never-upstream policy),
including an `[agbcc]` weight profile; before that, ~6,300 searches ran
MIPS-derived weights on ARM/Thumb.

`pycparser` is pinned `<3.0` in `tools/requirements.txt` — 3.0 dropped the
`plyparser` module this fork imports. If a container build fails on
`ModuleNotFoundError: pycparser.plyparser`, re-pin it.

Its parser doesn't fully understand nested/tagged unions — expect a reduced
search space on union-heavy functions, not a wrong answer.

## Throughput: what actually limits it (measured)

**Not CPU-bound.** 12 permuter slots on 6 physical cores; adding parallelism
past ~12 does nothing.

**Not extraction-bound.** ~0.7s per function end to end.

**Search is stochastic**: ~15.6% of launches converge, each up to
`stall_seconds_for(lines)` seconds on one core. ~85% of that CPU produces
nothing, by design.

**But the search is not where the matches come from.** Attribution over 1,156
matched rows: `rescore` 415, `permuter` 278, `m2c` 186, `twin` 130, `tier2` 101.
**64% came from something other than the permuter finding an answer** — from
repairing a measurement or propagating across functions. On 08-23 the factory
logged 199 launches and 233 matches.

**So the lever is better seeds and correct measurement, not more compute.**
Every deterministic rule converts a 15-minute gamble into an instant match.

Three scheduling ideas measured and settled: closest-first claiming caused a
spin loop (fixed by sorting on attempt count first); filling the queue faster
does nothing (it's saturated); and **anything holding the repo lock in a tight
loop starves everything else** — `repo_lock` has no fairness, so run
lock-heavy tools sequentially.

## Monitoring

All three are read-only and safe against a live factory:

- `python3 tools/factory/dashboard.py` — live view. `--once` for a snapshot.
- `python3 tools/factory/health.py` — asserts invariants, reports violations.
  **Known blind spot:** it was fully green through a total collapse, because
  queue depth and worker liveness were fine while results were being discarded.
  The check that catches that class is `t2_launch` vs `converged` per hour out
  of the events table.
- `./container.sh tools/check_layout.py` — asserts ROM layout hasn't shifted,
  straight from `mlss.map`. **Run this first whenever `make` says `FAILED`**,
  or whenever `needs_human`/`stalled` spikes: one bad extraction makes every
  match fail to validate and looks like a pipeline problem.

## THE LAW

> **When throughput disagrees with effort in this project, suspect the
> instrument before the code.**

This is the single most important thing in this file. **Eighteen separate
instances** have been found and fixed. Every one failed in the same direction:
**correct, finished work reported as broken.** None ever produced a false
*match*, because `finish_match()`'s from-scratch build + ROM sha1 makes that
impossible.

That asymmetry is why they survive. A false negative is indistinguishable from
a hard function, and this corpus has thousands of genuinely hard functions to
hide among. The prior should be that this codebase is **mostly fine and mostly
mismeasured**.

### The recurring shapes

| shape | what it looks like |
|---|---|
| **Wrong build mode** | A verdict measured under `NONMATCHING=1` but gated in a plain build, or vice versa. Under NONMATCHING every sibling `#else` compiles; in a plain build they become their retail `.include`. Declarations, object contents and scores all differ. |
| **Object-level diffing** | asm-differ `-o` runs past the function's end (no `.size`), so the score tracks *position in file*. A function identical to retail scored 100,700. |
| **TU poisoning** | agbcc compiles a whole unit, so one broken sibling fails every function in the file. A verdict may be about a different function entirely. |
| **Stale terminal state** | A queue nothing reclaims from accumulates dead verdicts at exactly the rate the rest of the system improves. 99 of 106 `needs_human` rows had already self-healed. |
| **Predicting a splice without simulating it** | A tool that predicts what a splice will do must apply the same transformations the splice does, or it under-reports. |
| **`git checkout --` as revert** | Destroys uncommitted work, then re-reports the candidate as broken for the reason the wiped repair had just fixed. |
| **Answering from zero observations** | A check that cannot distinguish "nothing is wrong" from "nothing was measured" is not a check. Also: filters that drop the evidence (`grep 'rror'` misses agbcc's `X' undeclared`), clustering on the wrong line of a multi-line diagnostic, placeholder collisions. |
| **Bytes without relocations** | `bl target` and `.word target` are placeholder zeroes in an object. Comparing bytes alone calls two different callees identical. |
| **Stored vs. live** | A count of what's in the DB is not a count of what the tool does today. T.1's "`M2C_ERROR` driven to 5" is stored; live regeneration gives 114. |
| **Scanning the wrong tree** | `map_raw_regions.py` scans `asm/*.s` but not `asm/nonmatching/*.s`, so its number *falls as extraction proceeds* without anything being classified. Under-reports 1000x. |

### The rules that follow

1. **Every measurement tool must refuse to answer when it cannot** — loudly,
   naming what was missing. Never return a default.
2. **A tool's own success number is not the result.** Count at the terminal
   state, never at the hand-off. ("26 recovered" was 26 promotions; 13 died at
   the next gate.)
3. **Cluster on the fatal error**, and confirm a cluster by acting on it,
   before believing a share.
4. **A verifier that can resolve something the real linker cannot is not a
   verifier.**
5. **When you remove a bottleneck, re-audit everything downstream immediately** —
   new load exercises paths the old one never reached.
6. **A long-running worker holds the code it imported at startup.** Restart the
   worker that owns a fix before running work through it.
7. **Commit a fix BEFORE restarting the thing that loads it**, and grep for
   every copy of a pattern you fix, not just the one that bit you.
8. **Measure the corpus before writing a mutation for it.** Three plausible
   permuter passes were killed this way (bitfields 0/3,124; arrays 1/3,124;
   symbol constants 3.2%).
9. **Sequencing matters**: a repair that runs before its prerequisite measures
   the *prerequisite's* failure and blames the thing it was asked to fix.
   Unblock first, rescue second.
10. **Any tool that changes a fragment's CONTENT must requeue its rows**, or
    the work is invisible to the pipeline. Any tier that declines or promotes
    work must leave something able to reclaim it.

## Clean negatives — do NOT re-chase

Each looked obviously right. Re-deriving them costs a session.

| hypothesis | verdict |
|---|---|
| **Compiler variants** (`old_agbcc`, `agbcc_arm`, `-fprologue-bugfix`) | agbcc closest for 54 of 58; `old_agbcc` never produces a byte-exact result agbcc doesn't. **One configuration.** |
| **Bitfield / array permuter passes** | 0 of 3,124 bodies declare a bitfield, 1 declares an array. m2c emits pointer arithmetic; nothing to mutate. |
| **Extern vs. cast address constant** (Klonoa's top lever) | 11/201 "closer", **0 matches**. Useful only as a per-function seed improvement where it measurably helps. |
| **Signature inference from call sites** | 83.6% arity accuracy, but end to end made things **worse** (139 → 164 errors). At 84% the wrong signatures cost more than the right ones gain. |
| **Matched-function signatures in m2c `--context`** | 0/45, twice. A seed needs ALL its callees known; callee coverage is 7.6% at 25.6% matched, and lags badly because callees are biased toward the big hard ones. Threshold is ~50% **callee** coverage, not corpus. |
| **`struct Entity` improving scores** | 4 identical, 1 worse, 0 better. m2c already emits explicit-width casts that compile identically. It fixes the **declaration** class, not codegen. |
| **Draining the re-opened backlog** (ruleset bump) | 2.5% newly compile — **~43 functions, not ~1,700**. |
| **Shape-group dedup as "exploit #1"** | 761 twins in 249 groups, largest 21 (not 63). `twin_backfill.py` already harvested it. Worth ~512 searches; 92% of the corpus is structurally unique. |
| **Cheap/local LLMs** | Best 2026 data point is MIPS-only, needed an H200, ~0.9% end-to-end. Nothing targets ARM/Thumb or byte-exactness. |
| **dtk / splat** | dtk is PowerPC-only. splat is superseded by our `splitlib`. |
| **The 84KB blob as m4a** | Not m4a, not code. **Solved 2026-08-23** — see Phase 3. |

## Landmines already hit

**The two most dangerous first.**

- **`make` can report `mlss.gba: OK` against a genuinely broken tree.** Make's
  dependency tracking has no idea assembler `.include`s exist, so deleting or
  editing an `asm/nonmatching/*.s` fragment is only checked if the containing
  object happens to get recompiled. A genuinely from-scratch build fails
  immediately. **This breaks the safety check every other landmine relies on.**
  An agent once committed a broken result whose every `make` said `OK`.
  **`rm -rf build/ && make` is the only trustworthy check.**

- **Trailing orphaned data on the last function extracted from a file — NOT
  FIXED at the tool level.** When `split_func.py` pulls the last function from
  a blob it grabs every remaining byte (necessary), but those bytes aren't
  always padding — twice they were a real, never-labeled function.
  A general fix needs real instruction decoding. **Until then, "delete the
  fragment" is unsafe by default for any function that was the last extracted
  from its file** — check the fragment's tail for bytes after the real
  `bx lr`/`pop {..., pc}`. `gitops.finish_match()` refuses to delete a fragment
  carrying real trailing data; that guard is load-bearing.
  **SOLVED 2026-08-24 for `sub_81C0F7E` and `sub_819BABC`**, the two
  functions this note used to warn about by name — both had their trailing
  data split into a separate labeled `unk_ADDR:` region (same technique as
  the 84KB blob), so neither function's fragment carries trailing data any
  more and the guard above is no longer load-bearing for them specifically.
  It stays load-bearing in general — the next one hasn't been found yet.

**Build system**

- **`-DNONMATCHING` goes in `CPPFLAGS`, not `CFLAGS`.** The build splits
  preprocessing (modern `cpp`) from compilation (`agbcc`, fed a `.i`). agbcc
  doesn't understand `-D` at all. Getting it backwards gives
  `agbcc: Invalid option`, which reads like a toolchain problem.
- **Make doesn't track flag changes.** Switching between `make` and
  `make NONMATCHING=1` won't recompile anything — `-DNONMATCHING` isn't a file.
  A suspiciously unchanged diff after flipping it means a stale object.
- **Any tool that runs a NONMATCHING build MUST delete the objects it
  produced**, or the next plain `make` links them. Symptom: an undefined
  reference to a `sub_XXXXXXX` against a clean tree.
- **agbcc's `-g` debug-line emission is buggy** and can make the *assembler*
  fail with `asm/macros.inc:1: junk at end of line` — an error naming an
  innocent file. `-ffix-debug-line` suppresses most of it (removing that flag
  makes things *worse*). **Resolved:** the Makefile now recompiles any object
  the assembler rejects without `-g`, which is byte-neutral (verified at ROM
  level). This is what unblocked putting structs in headers.

**Repo operations**

- **Any manual `make`, `split_func.py` or `git` command run while the factory
  might be live goes inside `gitops.repo_lock()`** — including "just checking"
  commands, since `make` writes to `build/`. Contention produces a real but
  misleading `mlss.gba: FAILED`. Suspect contention before corruption.
- **A fresh `git worktree` has no `mlss.map`**, so `split_func.py` fails on its
  first use. Build once immediately after creating one.
- **`git reset --hard`/`git clean` do not un-stale `mlss.map`**, and
  `split_func.py`'s "already claimed" check trusts it unconditionally. Rebuild
  after resetting a worktree before trusting that tool again.
- **`git checkout --` as a revert destroys uncommitted work.** A predicate that
  splices must restore from a **byte snapshot it took itself**, not from git.

**Fixed at the tool level — symptoms worth recognising**

- **Alignment padding shifting the whole ROM.** An extracted function becomes
  its own object; if the next function sits at a 2-mod-4 address, the object's
  size rounds up and everything after slides. Symptom: `.text` is `0x01000008`
  instead of `0x01000000` and every validator match starts failing.
  `split_func.py` now extends the extraction to a word boundary;
  `check_layout.py` diagnoses it in one pass with no rebuild.
- **Leading orphaned data** before the front-most labeled function (fixed).
- **`asm/macros.inc` include order** — every `src/*.c` now carries one explicit
  order-independent include (fixed).
- **`.gitignore` used to blanket-ignore `*.py`** — would have swallowed every
  tool here. There's a warning comment in `.gitignore` now.

## Finishing the disassembly (Phase 3)

⚠️ **`map_raw_regions.py` still only scans `asm/*.s`, not `asm/nonmatching/*.s`**
— its number falls as extraction proceeds without anything being classified.
Not fixed yet; treat its total as a floor, not the true still-raw figure,
until that's addressed.

**Most raw `.byte` bytes are not unreached code** — much is data between real
functions (sprite/tile/palette tables, unrecognised jump tables).

**SOLVED 2026-08-23, SPLIT INTO REAL SOURCE 2026-08-24: the 84KB blob at
`0x08003000`-`0x08017A00`.** `0x08000534`-`0x0800063C` is a **264-byte
relocatable ARM decompressor** for a game-specific LZ codec, copied to heap at
boot and called through IWRAM slot `0x03000C84`. Found by following real call
sites. Extent independently confirmed: `0x08000534 + 0x108 == 0x0800063C`,
exactly the existing `sub_800063C` symbol. Sweep (re-verified 2026-08-24 with
the corrected `gba_compress.decompress_custom_lz`): **15 streams, 0 false
positives**, each decoding to exactly its declared size, each a multiple of 32
(4bpp tile) or 2048 (screen block). It is the boot/title/menu graphics bank.
Details: `docs/review-2026-08-23-data-symbols.md`.

`asm/text08000000.s`'s single 96,768-byte anonymous `.byte` run
(`0x08000000`-`0x08017A00`, previously counted as one giant raw block) is now
split into real labeled source: 15 `custom_lz_ADDR:` compressed-stream labels
+ 2 `unk_ADDR:` uncompressed-region labels, byte-identical (verified by
re-extracting every `.byte` in the file and diffing against `baserom.gba`
before AND after, plus a from-scratch `mlss.gba: OK`). `map_raw_regions.py`
now recognizes this project's classified-data label prefixes
(`byte_`/`word_`/`dword_`/`off_`/`unk_`/`custom_lz_`, each REQUIRING an
explicit `len=N` in its comment — a label alone still proves nothing, see the
tool's own docstring) as closing a run instead of treating every label as
inert the way a bare Luvdis jump-target label is. Verified effect, not
assumed: this file's raw-byte count for `map_raw_regions.py`'s existing
`asm/*.s`-only scan went from 96,768 to 12,963 (the still-genuinely-raw crt0
prologue plus small inter-stream alignment gaps); game-proper total (that
same scan, still excluding `asm/nonmatching/*.s` per the caveat above) is now
13,303 bytes across 31 regions.

**Some "raw" functions were already disassembled, just anonymously.**
`tools/find_library_code.py` byte-matches our own agbcc's libgcc/libc against
the ROM. Confirmed and renamed: `_lshrdi3`, `_muldi3`, `_negdi2`, `memcpy`,
`memset`, `strcmp`, `strlen`, `abort` (which bundled `isatty` and `alarm`).
The `_call_via_rX` veneer matches were **not** applied — likely spurious
matches of a low-entropy repeating pattern.

**SOLVED 2026-08-24: `sub_819BABC` was NOT actually a gradual code/data
transition needing days of instruction reading** — that estimate turned out
to be pessimistic once actually checked. It's a complete, clean 112-byte
Thumb function (56 real instructions + a 2-word literal pool, ends in a
normal `pop {r4,r5,r6}; pop {r1}; bx r1` epilogue) immediately followed by
152,658 bytes of data running right up to `sub_81C0F7E`'s own address — one
continuous `.byte` run the whole way, no code resuming anywhere inside it.
Confirmed as real data, not misaligned code, via `probe_code_region.py`:
ARM disassembly 20-40% bad throughout (no clean stretch anywhere) and Thumb
function-prologue density 0.604/KB, far below real Thumb code's measured
3.4-6.9/KB in this ROM. Both this function and `sub_81C0F7E` (104KB, flat
~16% bad-instruction rate at every alignment phase — same signature) had
their trailing data split into a labeled `unk_ADDR:` region; see the
landmine note above.

**Still open:**
- `0x08000000`-`~0x08002E00` is clean ARM crt0 and is solid.
- 18 refused trailing regions (~2KB) that don't end in a return — real
  unlabeled code, needs a human. `split_trailing.py` declines rather than
  guessing.
- **Jump tables.** Luvdis stops at `mov pc, rX`, dumping the table and every
  case body as raw `.byte`. `tools/decode_jumptable.py` rewrites fragments into
  the shape m2c's ARM backend already supports. Requirements that are not
  guessable: label prefix must be `lbl_`; disassemble as **`armv4t`**, not
  `arm`; stop at the first non-Thumb-1 instruction; do **not** rewrite
  `[pc, #N]` literal loads into symbolic form. ~94 candidates still refused
  (mostly raw runs mixing trailing data). A second attempt at the residue
  gained exactly zero and was reverted — for those, the duplicate label is a
  symptom, not the cause.

## Data/assets (Phase 4)

Neither rodata blob (`asm/rodata081DD790.s` ~20KB; `asm/rodata081E2764.s`
~14MB) has been split into buildable source yet. Full findings:
[docs/formats/README.md](docs/formats/README.md).

- `tools/find_compressed_blocks.py` / `gba_compress.py` — finds all three real
  formats in this ROM: the two GBA BIOS codecs (LZ77, RLE) and this game's own
  custom, non-BIOS LZ scheme (`decompress_custom_lz`, promoted from the old
  `try_custom_decomp.py` experiment 2026-08-24 — see below). 70 BIOS blocks (69
  RLE + 1 LZ77) plus **1,309 individual custom-LZ streams**.
- `tools/extract_assets.py` — decompresses to `assets/raw/*.bin` (gitignored)
  and renders tile previews, writes `assets/manifest.json` (1,379 entries).
  **The tile decoder is verified correct** against known uncompressed data.
  **Which blocks are actually graphics is not verified** — treat PNGs as leads.
- `tools/find_pointer_tables.py` — 20 code-confirmed tables, 337 unconfirmed.
- `tools/mint_data_symbols.py` — names 946 addresses, 100% of
  currently-referenced ROM addresses, up from 3.5%. **Symbol names are
  committed** (`tools/symbols/rom.txt`/`symbols.txt`); the literal-pool
  rewrite half is **reverted, not applied** — it broke `compiler_variants.py`'s
  isolation staging (assembles a fragment alone, no `--just-symbols` link
  step, so a symbol reference becomes an unresolved relocation/zero bytes
  where a raw hex literal used to be the real address, corrupting the
  isolated byte-diff *and* the relocation-set comparison for ~1,050
  fragments). Re-applying it safely needs the isolation harness taught to
  resolve `symbols.txt` first — real, scoped follow-up work, not done.

**SOLVED 2026-08-24: the custom-LZ codec is a first-class format now, not an
experimental dead end.** `tools/try_custom_decomp.py`'s original port had
three real bugs (off-by-one header skip, a too-small iteration cap, no
declared-size validation) that made a genuine, common format look like it
explained nothing. The corrected decoder (`gba_compress.decompress_custom_lz`)
is verified against all 4 addresses `src/title_screen.c` calls the real
in-ROM decompressor on directly, and `gba_compress.scan()` now disqualifies
an LZ77/RLE hit whose span is mostly covered by genuine custom-LZ streams
instead (fixed 11 of 12 previously-hand-corrected `assets/manifest.json`
false positives automatically, by threshold; the 12th needed a named,
decisive-evidence exclusion since its coverage was too low to trust — see
`gba_compress.KNOWN_FALSE_POSITIVE_ADDRS`). **Two addresses remain a
genuinely open question** (`0x084EAAD4`, `0x081ED420` — real custom-LZ
coverage ~11%, above every genuine RLE block but below the reliable
threshold, no decisive code reference either way): left classified RLE,
the conservative default, not guessed at. Full numbers and the false-positive
table: [docs/formats/README.md](docs/formats/README.md).

## Room properties & the solidity/collision pipeline

Real, address-level-confirmed reverse engineering; full writeup in
[docs/formats/README.md](docs/formats/README.md).

`room_props_table` (24 bytes/room, layout known) and the two-level chain
resolving each room's collision grid (`room_solidity_index_table` →
`solidity_grid_offset_table` → a row-major byte-per-tile grid, staged by
`stage_room_solidity_grid`) are located and understood. Grid width is **30
tiles**, confirmed by rendering all 529 rooms and getting coherent shapes.
Cross-confirmed against the independently-built
[Yoshi Magic](https://github.com/CaptainSwag101/YoshiMagic) tool — found here
first.

**SOLVED: slope/height semantics.** `get_surface_height_at_x` resolves surface
height in pixels; byte 0 = signed tile height, byte 1's low nibble = slope
type, dispatched through a 7-entry table (flat / two 45° / four 22.5°).
Re-derived from the *write* side too: `sub_81606C8` scans a BG tilemap column
and takes the slope variant from the tile's **horizontal-flip bit** — the level
author mirrors a tile in the editor and the physics reads the same flag the
renderer does.

**`ctx+0x80C` is NOT the coldef arrays** — negative result, don't re-chase. It
is a heap array of one 4-byte record per tile column.

**Still open:** what consumes the coldef path (`col_set_ptr_table` →
`load_col_set_to_dest` / `get_coldef_ptr_by_xz`). Note
`src/load_col_set_to_dest.c`'s draft has its **copy direction backwards** (the
asm copies 256 entries OUT of `col_set_ptr_table[solidind]` INTO
`*(u32*)(dest+0xA0)`) and cannot match as written; a corrected redraft exists in
`docs/review-2026-08-23-data-symbols.md`.

## Scope decision: Mario Bros. minigame

`asm/mariobros.s` (~712KB, 923 functions, `0x08F502B8`-end) is a complete,
separate Mario Bros. ROM embedded for the multiplayer minigame. **Confirmed by
the maintainer: excluded from "100%".** Tracked separately everywhere. If that
ever changes, nothing blocks it.

## In-context permuter (2026-08-27 session)

A whole new toolkit, built to close the specific class of near-miss the
scheduling fix below finally exposed: a candidate byte-exact in
**isolation** that still doesn't match spliced into its **real**
translation unit, because agbcc's register/stack allocation is coupled
across the whole file (proved by hand on `sub_81458C8`; the isolated
1-function compile has registers free to spare that the real 45-function
file doesn't).

- **`tools/factory/in_context_permuter.py`** — the primitive: splice a
  candidate into a scratch copy of its real file (never the tracked one),
  compile the WHOLE translation unit, extract one symbol by real ELF
  boundary, diff against retail (bytes + relocations). `resolve_known_
  symbol_relocs()` additionally patches `symbols.txt`'s 61 exact-value
  addresses into candidate bytes at scoring time — mirrors
  `--just-symbols`, touches nothing tracked (rewriting the retail `.s`
  fragment instead was checked and rejected: every isolation tool here
  bare-assembles with no link step, so a symbolic relocation in the
  TRACKED source reads back as zero bytes in all of them — this is
  CLAUDE.md's own already-rejected literal-pool-rewrite finding, almost
  repeated on a different file).
- **`tools/factory/in_context_search.py`** — wires decomp-permuter's real
  mutation engine (unmodified, imported directly) to the above via
  dependency injection (`InContextCompiler`/`InContextScorer`), not by
  patching the vendored fork. `--allocator-attack` automates the
  sub_81458C8 fix (0-4 escaping `volatile` locals, forced to survive
  dead-code elimination via a GNU statement-expression so the C89
  declarations-before-statements rule isn't violated). `hide_asm_regions`
  lets a candidate use real GNU inline-asm (needed for `_call_via_r2`-
  style forced-register calls, which plain C can't express) without
  breaking decomp-permuter's pycparser-based parser — wrap the block in
  `/*PATTACK_ASM_START*/.../*PATTACK_ASM_END*/`, it's hidden as an opaque
  call for parsing/mutation and restored before every real compile.
- **`tools/factory/in_context_batch.py`** / **`branch_deficit_scan.py`** —
  batch runner, and a corpus-wide scanner comparing branch-instruction
  COUNT (candidate vs retail) across the escalation-exhausted pool to
  distinguish control-flow collapse from register-pressure gaps. Verdict,
  re-run at `--min-deficit 1` after the dedup fix below: **8 of 288 rows
  (2.8%)** show a real deficit — collapse is a real but minority pattern,
  not the dominant one.

Five real bugs found and fixed building this, each verified against the
specific case that surfaced it, not assumed fixed: new-format `ASM_FUNC`/
`NONMATCH` guards unhandled in the splice helper; missing `rom_symbol_
declarations()` prepend; `_dedupe_decls`/`_strip_permuter_preamble`
whitelist too narrow (`u16`/`uint16_t`); C89 declarations-after-statements
in the allocator-attack injection; and the big one — **`_dedupe_decls`
scanned dead `#else` branches of unrelated neighbors' unmatched drafts as
if they were live declarations**, since it reads raw un-preprocessed
source text with no regard for which `#ifndef NONMATCHING` branch the
plain build actually takes. Fixed via `_strip_dead_else_branches()`.

**Also corrected**, not just found: last session's claim that
`sub_806A180`/`sub_806A730` were ARM-mode functions was WRONG — the bug
was in `retail_symbol()` assembling header-less new-format fragments in
the assembler's own default mode (ARM) for lack of an explicit
`thumb_func_start`. Both are ordinary Thumb. Fixed in the same function
that had the dead-`#else` bug.

**tier2 scheduling**: near-miss rows (`objdiff>=90`) past
`escalation_count>=10` now drop into the same priority tier as far rows
instead of permanently outranking them — the near-miss band had gone
80% saturated at escalation 10-11 with 12 slots against 400+ rows, so far
rows (including 12 already-arity-fixed ones) got zero launches all
session under the old strict two-tier ordering. Query-ordering change
only, deliberately not a new DB state (see THE LAW's stale-terminal-state
entries).

**Three real reconstructions in progress, none closed yet** (scratch work,
not committed — rebuild from `nonmatchings/<name>/candidate_body` in the
DB if resuming):
- `sub_808F2A8`: root cause found (agbcc const-folds a literal address
  subtraction that's really two already-minted `symbols.txt` addresses,
  `loc_819832C`/`loc_8198220` — referencing them as real symbols instead
  of raw hex forces the runtime subtraction retail actually has). diff
  163→19 bytes via `in_context_search.py --allocator-attack`, not zero.
- `sub_81649AC`: confirmed a genuine dead store IN RETAIL ITSELF (a
  computed value immediately, unconditionally overwritten) that m2c
  correctly dropped as dead but retail's own compiler didn't optimize
  away. Reconstructing it (forced to escape via `volatile`, same
  mechanism as `sub_81458C8`) moved diff 416→372. Large function, likely
  more spots like this one, not fully closed.
- `sub_81495A4`/`sub_814BB80`: the "classic bitfield artifact" hypothesis
  for their shift-based bit tests (`(x<<31)!=0` etc.) is **refuted** —
  rewriting to a clean bitmask made the diff WORSE (86→132). Retail's own
  codegen is shift-based too; this was never an m2c representation issue.
  Real gap is likely the `goto`-heavy control flow these two still have,
  not investigated further.

## Housekeeping outstanding

- `tools/apply_library_matches.py` is real, tested, round-trip-verified
  infrastructure that ended up unused (every match this pass was the "rename an
  existing label" case). **Don't delete it as dead code.**
- **`tools/factory/asmlift_bridge.py` is unblocked from Node (npm install
  done, `node_modules/@asmlift/cli` present) but hits its OWN separate
  disassembler gap.** Tested directly against a random sample of
  still-undraftable functions, not assumed: **80% (12/15) decline with
  the exact same reason**, `raw data directive '.byte' in the code
  stream`. The one checked closely (`sub_8103B6C`) is full of `ldsh` —
  the pre-UAL Thumb spelling — strongly suggesting this is the SAME root
  cause as m2c's own already-fixed `ldsh`/`ldsb` gap (see "Local m2c
  patches" above, 36% of the corpus), just unpatched in asmlift's
  separate Node/TS lifter instead of m2c's Python one. Not fixed here —
  patching a third-party Node package's own disassembler is out of scope
  for a quick check, flagged as a real, well-scoped lever for later.
- **`gitops._repair_self_declaration` misses a stale forward-declaration
  placed AFTER a function's own definition when it has a mismatched
  return type.** Found live on `sub_8091CC8` (2026-08-27): its real file
  already carries `s32 sub_8091CC8(void *); /* extern */` a few lines
  below the (correct, `void`-returning) definition — left over from
  whatever neighbor originally needed a forward-reference — and splicing
  a fresh candidate in hits `conflicting types for 'sub_8091CC8'` /
  `previous declaration`. This is the same declare-vs-define-conflict
  family `_repair_body_decls`'s own docstring describes (function
  declared as the wrong kind), just the AFTER-the-splice-point case and
  in the self-declaration repair rather than the body-declaration one.
  `_dedupe_decls` already got a position-aware fix for its own version of
  "after the splice point doesn't count" (2026-08-27, commit `61b2e0be`);
  `_repair_self_declaration` needs the analogous fix. **Deliberately not
  patched yet** — touches the same shared `gitops.py` every live worker
  imports, and three other fixes already landed there in one session;
  do this one when the pipeline is idle, not mid-rush. Repro: `python3
  tools/factory/in_context_search.py sub_8091CC8` (or any of the ~20
  ghosts in `find_ghost_zeros.py`'s output still failing on
  `redeclared as different kind of symbol` / `conflicting types`).
- **A genuine, unexplained 1-halfword branch-offset gap recurs across at
  least 4 unrelated functions**: `sub_8072400`, `sub_81132D4`,
  `sub_806A180`, `sub_806A730` — each otherwise byte-identical to retail
  (relocations included) except one `bne` whose encoded offset is
  exactly 1 halfword short. **Not a literal-pool alignment artifact** —
  ruled out directly: `sub_806A180` has no PC-relative literal load
  anywhere in the function, so there is no alignment-sensitive `ldr [pc,
  #N]` for phase to affect, and it shows the identical signature anyway.
  The real shape, confirmed by disassembling both sides side by side: in
  retail, the branch target is a `movs r0, #0`-style return-value write
  that sits INSIDE the if-block as a natural fall-through (executes only
  on the taken path); in every candidate, the equivalent write sits
  AFTER the target, unconditionally on both paths. Same total
  instruction count, same bytes everywhere else — just which side of the
  branch target that one write falls on. A real, permutable structural
  difference (decomp-permuter's own `perm_condition`/`perm_ins_block`
  passes are aimed at exactly this shape), not measurement noise. Not
  chased further this session; worth a targeted permuter pass or a
  manual C restructuring (move the return-value write inside the `if`)
  next time one of these four — or a fifth showing the same signature —
  comes up.
- **A previous version of this section incorrectly claimed `sub_806A180`
  and `sub_806A730` were ARM-mode functions retail compiled differently
  from the rest of the corpus.** That was wrong, and the error was in the
  measurement, not the ROM: `tools/factory/in_context_permuter.py`'s
  `retail_symbol()` assembled these two functions' fragments (new-format,
  header-less) without ever invoking `thumb_func_start`, so the assembler
  fell back to its own default mode — ARM — and the resulting spurious
  `R_ARM_CALL`/`R_ARM_V4BX` relocations looked exactly like genuine ARM
  code, self-confirmed further when `agbcc_arm` also produced ARM-typed
  relocations against the same broken comparison. Fixed 2026-08-27
  (commit `e1dcd3b3`) by synthesizing the same header
  `compiler_variants.py`'s `stage()` already synthesizes for exactly this
  case. Both functions are ordinary Thumb, both are the 1-halfword
  branch-offset class immediately above. THE LAW, once more: an
  instrument that has never been checked against a known-good case is not
  a check — this one produced a fully self-consistent-looking wrong
  answer for most of a session before a plain side-by-side disassembly
  caught it.

CI already runs `tools/gen_readme_progress.py --check` (closes the old
"no CI posts a progress badge" item) and `twins.py`'s docstring already
carries the corrected PROPAGATE/DEDUPLICATE numbers — both done, this
section no longer needs to track them.
