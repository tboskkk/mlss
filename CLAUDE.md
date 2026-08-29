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
As of 2026-08-29: 1,781 of 6,395 matched (27.8%). `asm/mariobros.s` is a
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

**The biggest known m2c defect (2026-08-23): FIXED, not just designed —
CLAUDE.md was stale on this point until 2026-08-28.** Four error classes —
`invalid type argument of unary *`, `called object is not a function`,
`void value not ignored`, `invalid use of void expression`, **85.1% of all
compile failures** — are ONE defect: m2c reconstructs an address as untyped
arithmetic then dereferences/calls it with no cast. **1,126 functions
(77.8%)** had every diagnostic inside this family; 1,060 were otherwise
clean. Full analysis in `docs/review-2026-08-23-m2c-census.md` (that doc's
own "design sketch, not implemented" framing is now stale too — read it
for the measurements, not for current implementation status).

`tools/factory/m2c_bridge.fix_untyped_address_access()` implements the
generalization the census sketched, wired unconditionally into
`generate()` — added 2026-08-24, refined 2026-08-26 (three commits:
`e79007cb`, `ba87be68`, `f4528bc3`), two days before the census-derived
"go build this" instruction reached a session that hadn't re-checked
whether it already existed. Walks balanced-paren `*(...)` and `(...)(`
spans, classifies the head via `_local_types()`/`_classify_untyped_head()`
against the function's own declared locals, and only wraps a span whose
head is PROVABLY not already a real pointer (a declared scalar, a raw hex
literal, or itself a `*(TYPE *)(...)` dereference — which always yields a
scalar in C) — a bare pointer-typed identifier is left untouched, since
adding a cast there would be a no-op at best and risks changing
dereference width at worst.

**Found and fixed live 2026-08-28, testing 4 functions an earlier session
had filed under this defect from a leaf-candidate batch**
(`sub_8070990`/`sub_807DFE8`/`sub_810D3B8`/`sub_8121B5C`): only 1 of the 4
(`sub_8070990`) actually belongs to this family — the other 3 are
different, already-documented classes (`werror_casts.py`'s pointer/int-cast
mismatch; N.6's undeclared-`spNN` stack-struct idiom) that this rule was
never going to touch. `sub_8070990`'s real blocker was a bug in the OLDER,
narrower `fix_uncast_address_dereference()` (the one that predates
`fix_untyped_address_access` and handles the bare-`0x`-literal case
specifically): its "already has a cast, don't touch it" guard was a bare
substring search, `"*)" not in inner`, over the WHOLE parenthesized
expression rather than a check on its head. Since `stripped.startswith
("0x")` already proves the head is a hex literal (which can't also be a
cast), the guard could only ever fire on an unrelated NESTED cast deeper
in the expression — e.g. `*(0x083B873C + (s32)((*(u8 *)0x03000E7C * 6) +
...))`, where the inner `(u8 *)` sub-dereference's cast made the rule
skip the outer address computation it was supposed to fix. Wrapping the
whole inner expression in a pointer cast is always valid regardless of
what's nested inside it (it evaluates to an integer either way), so there
was no real case the guard protected — confirmed by removing it and
testing, not just reasoned about. Fixed in `b958cd6e`.

**Verified at scale, not just on the one named function** — isolated via
`gitops.compiles_in_isolation()` (the census's own method; NOT
`in_context_permuter`, which compiles the real whole file and mixes in
sibling-function TU-poisoning noise, hit live during this check when an
early pass reported errors inside a DIFFERENT function than the one being
tested): a 150-row random sample of `needs_attempt`/`stalled` flipped 6
rows from failing to compiling, and each of the 6 was confirmed to
specifically need this fix (stashed it, re-ran the same 6 under the
pre-fix code, all 6 failed again) rather than coinciding with something
else. `ruleset_version()` hashes `m2c_bridge.py`'s own bytes, so this fix
auto-bumped the ruleset stamp and re-opened every row `tier_m2c.py`
previously declined under the old one — no manual requeue needed, exactly
the mechanism `ruleset_version()`'s own docstring describes.

**Not sized at the full 1,126/1,060 headline** — that number describes
the whole defect family, most of which `fix_untyped_address_access()`
already covered before this session; this fix closed one specific
false-negative gap inside the older, narrower rule it doesn't fully
subsume. The 150-row sample's 6/150 (~4%) is the honest measured rate for
THIS fix specifically, not a re-derivation of the census total.

**The other 3 of those 4 functions, fixed the same day (2026-08-28):**

- **`werror_casts.py` had two real bugs, both hit by `sub_807DFE8`/
  `sub_810D3B8`.** (1) Its real-file precondition check (`apply()`)
  compiles the whole spliced `src/*.c`, so an unrelated, genuinely broken
  SIBLING in the same file — `sub_810D3B8`'s neighbour `sub_810D34C` is
  not valid C at all, raw register-name pseudocode — fails the "compiles
  with warnings allowed" check for every function in the file regardless
  of their own merit (THE LAW's TU-poisoning shape, hitting this tool
  specifically). Fixed with an isolation fallback (`_compile_isolated`,
  `_poisoned_by_sibling`): when the real-file precondition fails and every
  diagnostic is attributable to a different function, retry the whole
  precondition + cast round-loop isolated instead of declining outright.
  (2) `_cast_comparison()`'s "cast whichever side has a `*`" heuristic
  cast the WRONG side on `(*(s32 *)(...)) == &sub_8086960` — the `*(s32
  *)` dereference contains `*` but evaluates to a scalar, while the real
  pointer (`&sub_8086960`) has no `*` at all — so the cast landed on the
  already-scalar side (a no-op) and the warning never cleared. Fixing
  that surfaced a second bug: the tail-side branch always appended a
  literal `;`, corrupting an `if (a == b) {` line (no trailing `;` at
  all) into a syntax error. Replaced both with a precise pointer-
  expression match (`&name`, a typed cast-deref) that preserves whatever
  trailing syntax follows byte-for-byte. Verified via `apply()`'s own
  byte-identity proof (unchanged) on both named functions, plus a 60-row
  regression sample: 5 genuine fixes, 0 exceptions. Fixed in `accc14b7`.
- **N.6's stack-struct family has a sibling shape, also unimplemented
  until now: m2c's bare `sp` symbol** (`translate.py`:
  `GlobalSymbol("sp", type=Type.ptr())`) for the raw stack-pointer
  REGISTER value used directly (an `add rX, sp`-fed indexed access), as
  opposed to a fixed-offset named `spN` slot. m2c never declares plain
  `sp`, so referencing it is a hard `sp' undeclared` error. Confirmed
  against `sub_8121B5C`'s real `.s` fragment, not guessed: `*(((3 & spC)
  * 4) + sp)` traces to `movs r1,#3; ldr r2,[sp,#0xC]; ands r1,r2;
  lsls r1,r1,#2; add r1,sp; ldr r1,[r1,#0]` — a genuine register add,
  confirming `sp` really is the live stack-pointer value there. Fix
  (`m2c_bridge.fix_bare_stack_pointer`, new): since agbcc/GBA Thumb
  functions never move the stack pointer mid-body, `sp`'s value equals
  the address of frame offset 0 for the whole function — point it at
  `&spN` (or `&spN - N`) using whichever `spN` local the function already
  declares with the lowest offset, reusing an existing declaration rather
  than inventing one. Declines (doesn't guess) when no `spN` exists to
  anchor on. Verified: `sub_8121B5C` compiles clean in isolation; 200-row
  regression sample, 0 exceptions, rule touched 2 rows (expected — a
  narrow sub-shape of an already-small ~3.3% family). Fixed in `f0f03acd`.
  **The broader N.6 idiom itself — the contiguous-`ldr`/`str`-run
  struct-copy shape, `sub_8135084`'s own example — is now ALSO fixed**
  (`m2c_bridge.fix_undeclared_stack_slots`, `93fc8c65`, 2026-08-28), not
  via the census's own sketched approach (scanning the `.s` fragment for
  a monotonic `ldr`/`str` run) but at the C level: the undeclared `spN`
  tokens (`sp48`...`sp7C` in the worked example) ARE the missing
  information, one per slot, and the function's own surviving code
  already shows the exact idiom to generalize (`sub_8135084`'s last line
  already reads offset `0x3C` from `&sp44` via `*(s32 *)((s8 *)(&sp44) +
  (0x3C))` — m2c's own fallback once its per-offset naming runs out).
  Rewrites each undeclared `spN` reference as pointer arithmetic from the
  nearest DECLARED `spN` anchor rather than declaring a fresh local —
  declaring one would be actively WRONG, not just uncompilable: these
  slots are never assigned by an ordinary statement, they get their real
  values as a side effect of an earlier call that received a pointer to
  the low end of the same stack region and filled it through that output
  pointer (`sub_8134CAC(&sp44, arg0, &sp0)`); a fresh local would read a
  different, garbage stack slot. Verified: `sub_8135084` compiles clean
  in isolation now (was `BOTH_FAIL`); not yet byte-exact (130 diff bytes
  via `in_context_permuter.score_in_context`, same "seed not a match"
  expectation as every other seed-generation fix here — needs real
  permuter search on top). 200-row regression sample: 0 exceptions, rule
  touched 3 rows (matches the census's own ~3.3% sizing for this idiom).

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
  of raw hex forces the runtime subtraction retail actually has). A prior
  session (2026-08-27, same day) reported reaching diff 19 via
  `in_context_search.py --allocator-attack`, but that source was **never
  persisted anywhere** — `in_context_search.py` only wrote `best_source`
  to disk on a genuine zero, and the scratch dir it lived in was cleaned
  up before compaction. **Fixed the tool, not just re-derived the
  function**: `main()` now always saves a near-miss (`best_score < 10000`,
  i.e. below the reloc-mismatch penalty band) to
  `nonmatchings/<name>/output-incontext-best/`, and resumes from it on
  the next invocation instead of always restarting from the isolated-zero
  baseline — this class of loss can't recur. Also added `--out-file` so
  several parallel workers on the same function don't race on one shared
  path.

  Rebuilt the reconstruction from scratch (the lost 19-byte source could
  not be recovered) using `title_screen.c`'s own proven idiom for this
  exact symbol pair — `(dword_3001038 + (&loc_819832C -
  &loc_8198220))(args)` — instead of the original's hand-rolled
  `register ... asm("r2")` veneer. Diagnosed the remaining gap by direct
  `objdump`-level comparison (not guessing): candidate is a flat 8 bytes
  shorter than retail, entirely from **literal-pool placement, not
  register allocation** — retail's compiler flushes the `0x2025` literal
  pool separately near each of the 3 switch-case call sites (forcing a
  short skip-branch each time); the candidate's compiler dedups all 3
  into one shared pool entry at function end, needing no branch. Exact
  byte accounting: relocation offsets for `sub_808FC54`/the 3
  `sub_8082E1C` calls run flat 4 bytes short after the veneer block, then
  a further 4 bytes short after each of 2 switch-case transitions (8
  total). Tested and ruled out, not assumed: rewriting the switch as an
  explicit if-`else if` cascade (matching retail's actual `bgt` chain)
  recovers only 4 of the 8 bytes at the cost of a *higher* raw diff
  (146 vs 122) from unrelated instruction-selection differences; the
  original register-forced asm-veneer idiom scores about the same as the
  clean idiom (122 vs 128), so the veneer/no-veneer choice isn't the
  lever either. A fresh 3-worker/600s `in_context_search.py
  --allocator-attack` run against the clean-idiom base plateaued at
  10047–10073 — **never crossed under the 10000 reloc-mismatch penalty
  band**, i.e. never got the size deficit to zero by chance. This is a
  compiler literal-pool-flush-distance heuristic, not a source-shape bug;
  closing it may need deliberately padding the function with extra
  (later-removable) instructions to push the pool-flush point to where
  retail's put it, not further hand-restructuring. **The DB's
  `candidate_body` for this function is still the pre-fix draft** (raw
  hex `0x03001038 + 0x10C`, no symbol references) — don't trust it as the
  current best; the real starting point for a resumed attempt is this
  section plus `nonmatchings/sub_808F2A8/output-incontext-best/` once a
  future run populates it.
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

## Heuristic walls found 2026-08-28 (in-context permuter, near-miss pool)

Two real, verified ceilings on what the permuter can close, both worth
knowing before re-spending a session on either:

- **`agbcc` register-allocation is not influenceable from plain C for an
  ordinary (non-inline-asm) statement.** Found on the `sub_816B0E0` twin
  group (`sub_816B0E0`/`816B21C`/`816B3C4`/`816D6C0`/`81367AC` — same
  shape, a one-line pointer-store-then-call stub): candidate and retail
  are byte-identical except ONE register choice (candidate emits `r1`,
  retail emits `r2`, for the exact same store). Two closing attempts,
  both verified failed, not assumed: (1) extended random search, 2
  workers × 300s × all 5 functions, ~330,000 combined tries, converged to
  exactly this 2-byte gap every single time with zero further movement;
  (2) an explicit `register s32 *p asm("r2")` hint on the local — agbcc
  **silently ignored it** and still emitted `r1` (confirmed via direct
  disassembly, not just the score). This matches known GCC-family
  behavior: a register-variable hint is only honored inside a real
  inline-asm operand context (which is why it worked for this project's
  own `_call_via_r2`/`_call_via_rX` veneer calls elsewhere), never for an
  ordinary C statement. The only remaining lever seen is hand-written
  inline asm hardcoding the instruction sequence directly — deliberately
  NOT done: it would produce byte-exact output without deriving from any
  C source, which stops being decompilation for that line. Leave this
  group as a documented, permuter-unreachable case rather than re-chasing
  it with more search time or more register-hint variants.

- **`decomp-permuter`'s `Randomizer.randomize()` has an unconditional
  infinite retry loop** (`tools/decomp-permuter/src/randomizer.py`,
  `while True: method = random_weighted(...); try: method(...); break
  except RandomizationFailure: pass`) with no attempt cap and no
  timeout inside the loop body itself. Normally invisible because the
  default weight table has ~35 passes active, so *some* mutation almost
  always applies. Triggered live trying to isolate an in-context search
  to ONLY `perm_reorder_decls` (zeroing every other weight, to test
  "declaration-reordering + allocator-attack only" in isolation): on
  `sub_816B0E0`, `perm_reorder_decls` apparently cannot ever apply to
  this function's declarations, so with it as the only nonzero-weighted
  pass the loop spun forever, burning ~90%+ CPU indefinitely — had to
  `podman kill` the container directly; the process ignored plain
  SIGTERM for several minutes (likely a signal-delivery quirk of a tight
  CPython loop with no I/O or bytecode-boundary yield opportunities, not
  investigated further). **Do not zero out decomp-permuter's
  randomization weights down to a single pass for an arbitrary
  function** — no guarantee that pass can ever apply to any given
  candidate's specific declarations/statements, and the vendored fork
  has no cap protecting against exactly that case. If isolating passes
  is ever needed again, either patch a retry cap into `randomize()`
  first (a real, scoped, worthwhile fix — but a change to the vendored
  fork, see "Local m2c patches" policy for the analogous decomp-permuter
  equivalent) or leave at least 2-3 broadly-applicable passes weighted
  (e.g. `perm_reorder_decls` + `perm_reorder_stmts` + `perm_sameline`)
  so there's always a fallback.

- **A third wall SYMPTOM, distinct from the register-swap and negative-
  immediate classes above: candidates that plateau FLAT inside the
  +10000 reloc-mismatch penalty band with zero movement across
  thousands of tries.** `sub_80292EC`, `sub_8095028`, `sub_80F3FE8`,
  `sub_81064F8`, `sub_80F6250` all show this signature. **Root-caused 4
  of the 5, and they are 4 DIFFERENT real causes, not one** — "flat in
  the penalty band" is a symptom of "the required change isn't
  reachable through any available mutation," not a single compiler
  feature. Don't go looking for one unifying cause; diagnose each
  instance on its own. Confirmed NOT the `sub_808C070`-style
  trailing-function measurement artifact above (none of the five appear
  in `split_trailing.py --list`):
  - `sub_80292EC`: a genuine LOOP-SHAPE difference. Retail's real code
    is the classic "jump to condition check, body, fall-through
    compare-and-branch-back" transform (check-at-bottom); the
    candidate's m2c-generated `goto`-based loop compiles to a
    check-at-top structure instead. Tested the obvious fix — rewrote
    the `goto` as a genuine C `for` loop — and it made things WORSE
    (`size_delta` -6 → +4, a different register allocation entirely,
    still check-at-top). decomp-permuter's mutation passes
    (`perm_reorder_stmts`/`perm_condition`/etc.) operate on existing C
    loop constructs; none of them convert one loop SHAPE into another,
    so this may be genuinely unreachable by search as currently built.
    **Re-confirmed 2026-08-29 with a direct `target.o`/`base.o` objdump
    side-by-side** (`nonmatchings/sub_80292EC/`, best_score still 815,
    escalation_count 8 — unchanged, still genuinely stuck, not an
    artifact): the loop body + check together are the EXACT SAME 0x38
    bytes on both sides (`0x0`–`0x38` retail, `0x0`–`0x38` candidate,
    shared tail from `0x38` onward is byte-identical too) — this is not
    "the candidate has extra instructions," it's "same instruction
    count, wrong order," which is consistent with a rewording, not a
    padding gap. Concretely: retail's is `b.n` straight to the check
    ONCE (2 bytes), body, then the check block doubles as the loop-back
    branch (`blt.n` back to the body) — no second unconditional branch
    anywhere. The candidate's check sits at the TOP of the body, and
    needs its own separate unconditional `b.n` back to the top after
    the body runs, which retail's shape never needs. A genuinely
    untried lever, not yet attempted: hand-write the C as an explicit
    guarded `do`/`while` —
    `if (var_r5_8 < N) { do { ...; var_r5_8++; } while (var_r5_8 < N); }`
    — which directly hands the compiler retail's exact shape (test
    once up front, then one shared test-and-loop-back at the bottom)
    instead of relying on agbcc's own loop-rotation heuristic to find
    it from a `for`/`while`, which is the thing the earlier `for`-loop
    attempt showed doesn't fire the same way here. Not attempted this
    session (diagnosis only, per what was asked) — flagged as the next
    concrete thing to try before writing this off as unreachable.
  - `sub_8095028`: a register-PRESSURE/spill difference, the same
    class as the already-documented `sub_81458C8` case. Retail's real
    prologue is `push {r4,r5,r6,r7,lr}` (5 registers); the candidate's
    is `push {r4,lr}` (2) — retail keeps more locals alive in real
    registers across an indirect call rather than spilling and
    reloading. This is exactly what `--allocator-attack` targets; it
    just hasn't found the right combination in the runs so far.
  - `sub_81064F8`: an ARITHMETIC-IDENTITY / instruction-selection
    choice, a third distinct shape. The C computes `(orig - 1) -
    (val >> 8)`, already grouped the same way retail's disassembly
    implies (`subs r2,r0,#1` then `subs r0,r2,shifted`) — so this is
    NOT an expression-phrasing bug. Retail computes it exactly that
    way; the candidate's compile instead rewrites it via the algebraic
    identity `(a-1)-b == ~b+a` (`mvns r1,r1; adds r1,r1,r2`) — same
    result, different instruction sequence, agbcc's own internal
    choice. Also carries a smaller, separate 2-instruction-vs-1
    inefficiency in the `>>8` step itself (`lsls #16; asrs #24` where
    retail does one `asrs #8`) that's mathematically equivalent for a
    promoted `s16`. Not reachable by rephrasing the source; this is the
    compiler picking a different identity, not a different computation.
  - `sub_80F6250`: a REGISTER-PRESSURE overflow into a high register,
    a fourth distinct shape (related to `sub_8095028`'s class but the
    opposite direction and with a second-order effect). Retail's real
    prologue fits entirely in low registers — `push {r4,r5,r6,r7,lr}`,
    nothing more. The candidate's needs one more live value than that,
    spilling into r8 — visible as literal extra prologue/epilogue
    instructions Thumb has to emit for a high-register save
    (`mov r7,r8; push {r7}`, and the mirrored pop), since Thumb `push`/
    `pop` can only directly name r0-r7. That excess pressure has a
    knock-on cost: retail's leaner allocation can dedicate a register
    as a post-incrementing pointer and load two consecutive fields with
    one `ldmia r6!,{r1}` per field (auto-increment addressing); the
    candidate's tighter register budget can't spare that pointer
    register, so it computes each field access as a separate `ldr` at
    a fixed offset instead — functionally identical, structurally
    longer. Likely improvable by reducing the CANDIDATE's own C-level
    temporary count (several of `temp_r1_16`/`temp_r2_24`/`temp_r6_28`
    look mergeable), the opposite direction from `--allocator-attack`
    (which ADDS pressure) — not attempted this session.
  - `sub_80F3FE8`: same flat-penalty-band symptom observed, not yet
    root-caused to this level of detail — grouped here by symptom, not
    confirmed cause. Worth the same objdump-diff treatment before
    assuming it matches any of the other four.

## Housekeeping outstanding

- **`tools/factory/flag_dead_ends.py` (new, 2026-08-28) flags leaf-pool
  rows whose candidate build fails on a cross-file signature disagreement
  against an already-matched callee** (`too few arguments`/`conflicting
  types`/`redeclared as different kind of symbol`/pointer-type-mismatch
  against a real definition elsewhere with a genuinely different
  signature — not auto-fixable by `repair_stale_prototype`/
  `repair_body_signature_mismatch`, both deliberately same-file/same-
  arity only). Existed to stop an ad hoc "pick the next leaf row" query
  from repeatedly re-selecting a row that can never succeed and burning
  a full search on it.

  **Uses a dedicated `dead_end_reason` column (`db.py`'s `MIGRATIONS`),
  not the shared `notes` field.** An earlier version tagged `notes`
  instead — found live 2026-08-28 that the pipeline's own routine
  claim/resolve/reseed writes to that same column reliably clobbered the
  tag between one flagging run and the next (lost on `sub_813D570`/
  `sub_813C7D8`/`sub_813C72C`/`sub_813D74C`), making the tool unreliable
  unattended. `dead_end_reason` is written ONLY by this tool, so nothing
  else in the pipeline can silently overwrite it — verified both
  structurally (`set_state()` only ever touches columns a caller
  explicitly passes, and nothing else in the pipeline passes this one)
  and empirically (a simulated dummy pipeline write to the row changed
  `notes` but left `dead_end_reason` untouched). Deliberately
  non-destructive: only sets `dead_end_reason`, never `state`/`notes`,
  so it carries no risk to live scheduling — a standalone maintenance
  pass, safe to run against a live factory.

      python3 tools/factory/flag_dead_ends.py

- **`split_trailing.py`'s push-prologue-only heuristic was extended and
  run against the "handler-setter" leaf shape, 2026-08-28 — the prior
  entry here ("deliberately not implemented this session") is now stale,
  superseded by this one.** The twins/echo this project already knew
  about (`sub_808C070`/`098`/`0C0`, `sub_8098C78`) turned out to be one
  instance of a repeated leaf idiom with no push prologue at all — `ldr
  r1,[pc,#4]; str r1,[r0,#0x4C]; movs r0,#1; bx lr` (`arg0->handler =
  ptr; return 1`), preceded by up to 2 bytes of genuine `.align`
  padding. Matched against the exact confirmed byte signature (not a
  general code/data classifier — same precision tradeoff the existing
  push-prologue check already makes), plus an `mlss.map`-based address
  fallback for fragments whose last label is a CODE label (real Thumb
  instructions, including a 4-byte `bl`, between it and the trailing
  run — the old label-walk only handled a data-label tail and can't
  guess instruction widths, so it fell back to real linker output
  instead of guessing).

  **Two more real bugs surfaced running it at batch scale, both fixed**:
  (1) fragments `split_trailing.py` itself had already split out
  (bare `.byte` under a label, no code) were re-matching their own
  bytes as a "new" trailing function hiding after themselves — fixed
  via `_fragment_has_code_before()`, which also dropped 10 stale false
  positives out of the previously-reported "211" push-prologue count
  (real number: **201**). (2) `write_split()` called
  `gitops.find_guard_block()` (old-format only) with no fallback to
  `find_new_format_guard()` — the same class of gap already fixed for
  `_owning_source_stem()` earlier this session, just in a different
  caller; failed 4 of 14 in the batch before the fix, 0 after.

  **Result, all verified with a from-scratch `mlss.gba: OK` under
  `repo_lock`**: 19 confirmed handler-setter instances found and
  processed (1, `sub_809EB8C`, was no longer applicable — its trailing
  bytes got a real label from other live pipeline activity between
  scans, nothing left to split). **9 already reached `matched`** — 5
  needed nothing but the split itself (the candidate C was already
  correct; the un-splittable trailing bytes were the entire gap), 4
  more matched shortly after on their own via the live factory, no
  extra permuter time spent. The rest moved from artificially blocked
  (66.7% objdiff, structurally unfixable as long as the phantom bytes
  stayed in the comparison) to genuinely close (66–85% objdiff, real
  remaining diffs) — workable by the ordinary pipeline now, not a
  free win but no longer wasting search time on an unwinnable gap.
  Commits: `bc398eba`, `3fdf8a8b`; splits/matches follow from there.

  **Re-verified 2026-08-29, ticket closed:** `sub_808C070`/`098`/`0C0`/
  `sub_8098C78` (the 4 "twins" this whole entry is about) are all
  `state='matched'` with real, unguarded C in `src/sub_808C064.c` /
  `src/sub_8098710.c` and no `asm/nonmatching/*.s` fragment remaining —
  genuinely done, not a stale terminal state. Their DB `iso_score`/
  `objdiff_score` columns still show the pre-split numbers (12/91.7%
  etc.) because nothing re-measures a row once it's `matched`; that's
  cosmetic, per THE LAW's own "stored vs. live" caution — trust `state`
  and the tracked source, not a scoring column, once a row is matched.

  **The 201 push-prologue candidates were batch-run 2026-08-28.** Result:
  **60 split cleanly** (verified from-scratch `mlss.gba: OK` under
  `repo_lock` for each, plus one final whole-batch rebuild), several
  already promoted to `matched` by the live factory once their trailing
  block stopped poisoning the score. **The other 135 were correctly
  DECLINED by the tool's own safety check**, not guessed at — their
  trailing bytes don't end in a recognizable `bx`/`pop {...,pc}` return
  within the split window, so `looks_complete()` refused rather than
  emit a possibly-wrong split. Those 135 genuinely need a human look
  (or a smarter completeness check, not attempted here) before they can
  be split automatically — this is not the same population as the
  handler-setter sub-class above, and re-running `--list` will still
  show them since nothing was split for those names.

- **135→128/135 recovered via `looks_complete_with_pool()` (same day),
  but a real methodology bug in it reached already-committed work before
  being caught and fixed — full history worth reading before touching
  this population again.** Investigating 7 of the 135 stragglers found
  every one already ends in an exit the tool recognizes (`bx r0`/`bx
  r1`/`pop {...}; bx r0`) — the actual bug was `looks_complete()`
  checking the *last disassembled line* of a trailing blob, which is
  always garbage-decoded pool data after a real return, not the return
  itself. `looks_complete_with_pool()` fixed that — but its first
  shipped version (anchoring on the LAST return-matching line) merged
  **multiple separate hidden functions under one symbol** whenever a
  pool word coincidentally decoded as something matching the return
  regex, confirmed on `sub_80479DC` (two byte-for-byte-identical
  mini-functions, differing only in one embedded constant). Caught by
  auditing all 128 already-completed splits, not before commit. A second
  attempt (first-candidate-only) fixed the merge but broke the opposite
  case — `sub_8135BF8`, a real, correct 808-byte function with an early
  internal return, got permanently declined. **The shipped fix
  (`47252d94`) is conservative on purpose**: `looks_complete_with_pool()`
  now fires ONLY when a fragment has exactly one return-matching line,
  eliminating the ambiguity structurally rather than guessing — narrower
  coverage, but neither bug can recur through it.

  **~48 of the 128 are still flagged** (multiple return-matching lines,
  declined by the conservative checker) and need individual manual
  review — `sub_8135BF8` above is a CONFIRMED false positive (fine,
  no merge) sitting in this same list, which matters for what's below.

- **A recursive, address-verified segmentation search
  (`write_multi_split()`'s design notes, `b3769c43`) can PROPOSE
  boundaries for the 48 — do not let it decide for itself.** It walks
  return-matching candidates and recursively carves a fragment into
  spans, each proven only by its own literal-pool cross-referencing (an
  address is only "this span's pool" if referenced by an `ldr rX,[pc,#N]`
  strictly inside that same span) — no byte-pattern guessing about what
  a fresh prologue looks like. It exactly reproduces every
  hand-confirmed boundary tried: `sub_80479DC` (2), `sub_8084004` (2),
  `sub_80E4308` (3), and `sub_8196ACC` (92 — apparently a per-type
  dispatch table, near-identical ~60-byte entries at dead-regular
  intervals; no direct `bl` reference to any entry found anywhere in the
  tracked corpus, so it's likely reached only through a computed
  function-pointer table elsewhere — the regularity itself is the
  strongest evidence for this one specifically).

  **It cannot self-certify, though — measured, not assumed.** Run
  against all 48, it proposes SOME multi-way decomposition for every
  single one, including `sub_8135BF8` (the confirmed-fine false
  positive above) — an early return's coincidental push-looking byte
  pattern is enough to fool the recursion into a spurious full
  resolution. Three additional guards were tried and NONE discriminated
  the false case from the four confirmed-real ones: a minimum segment
  length (the real cases all clear it easily; the false positive's
  spurious segments include two 4-byte "functions", but raising the
  floor just finds a different spurious 9-way split instead of the
  correct 1-way answer), independently re-verifying each proposed
  segment on its own (they all pass, by construction — the same
  single-return check the recursion is built from), and cross-
  referencing candidate addresses against the whole tracked corpus (zero
  hits either way, real or spurious, so no signal at all). **"Does it
  decompose" carries no diagnostic power for this corpus.** Use the
  algorithm's output as a fast starting point for a human reading the
  real disassembly, never as the verdict itself.

  **Executed on 18 of the 48 as of 2026-08-29**, each independently
  confirmed by hand before running: `sub_80479DC`→2, `sub_8084004`→2,
  `sub_80E4308`→3, `sub_805A9E8`→2, `sub_8117B34`→2, `sub_815D440`→2,
  `sub_8160C98`→3, `sub_805BA78`→2 (this one's pool is genuinely 10
  words — confirmed every one individually referenced well before the
  return, not assumed from the count alone), `sub_806E838`→3 (the
  algorithm itself only proposed 2 here — its `MIN_SEGMENT_LEN` floor
  merges two real ~12-byte leaf functions into one reported span when
  they're too small individually to clear it; hand-reading the
  disassembly found the true 3-way boundary and that's what got
  executed, not the tool's own output), `sub_80E38A0`→2, `sub_816D778`→2,
  `sub_8134B90`→2, `sub_8161128`→2, `sub_812A930`→2, `sub_8132474`→2,
  `sub_813B040`→2, `sub_8171C9C`→2, `sub_81583FC`→2, `sub_8046BC8`→2,
  `sub_80552DC`→2, `sub_806204C`→2, `sub_8062CE4`→2, `sub_8068D0C`→2,
  `sub_806D3F8`→2, `sub_80E9228`→2, `sub_812182C`→2, `sub_8134A44`→2,
  `sub_81366B8`→3, `sub_806C9FC`→3, `sub_8160FCC`→2, `sub_819AA9C`→4,
  `sub_8067948`→3, `sub_8136130`→3, `sub_813B2E0`→4, `sub_813B428`→3,
  `sub_8165374`→4, `sub_8085730`→2, `sub_8085C20`→2, `sub_80E548C`→3,
  `sub_8134298`→4, `sub_8158FBC`→7, `sub_816800C`→7 (42 total). Verified
  from-scratch after each batch. **`sub_8158FBC` is a SECOND confirmed
  instance of the under-split bug first found on `sub_806E838`**: the
  algorithm's own proposal reported one 152-byte span at `(124,276)`,
  but reading the real disassembly found a 12-byte no-push leaf function
  at `0x7c` (`ldr;adds;str;bx lr` — too short to individually clear
  `MIN_SEGMENT_LEN`) immediately followed by a genuinely separate
  140-byte function at `0x88`, both merged into the algorithm's one
  reported span. Executed the hand-corrected 7-way split, not the
  tool's own 6-way proposal. Reinforces: **every proposed span count
  needs the real disassembly read, even the ones with a plausible-
  looking small segment count** — this one didn't even LOOK suspicious
  from the summary alone (152 bytes isn't unusually large for one
  function), the merge was only visible by actually reading it.

  **DONE as of 2026-08-29: all 45 resolvable fragments split, including
  the two largest.** `sub_81651A0`→3 closed the small remainder.
  `sub_818B048` (1480B) and `sub_8196ACC` (5628B, the 92-function
  per-type dispatch table) each got an EXTRA cross-check beyond the
  usual hand-reading before executing, given their size and the
  under-split lesson just learned on `sub_8158FBC`: counted every
  genuine `push {...,lr}` occurrence in the whole disassembly and
  confirmed it matched the algorithm's own span count 1:1 with zero
  discrepancy (25/25 and 92/92), then spot-checked 3–5 transitions
  spread across the full range (start, several midpoints, end) rather
  than just the first few. All came back clean on both fragments — no
  further corrections needed, unlike `sub_806E838`/`sub_8158FBC`.
  **Final tally: 46 of the original 48 flagged fragments resolved**
  (45 as of the previous session + `sub_81DC44C`, closed 2026-08-29 —
  see immediately below). The remaining 2 (`sub_8135BF8`, `sub_801B0B8`)
  are deliberately left unsplit — CONFIRMED single, real, correct
  functions with no merge at all (false positives in the original
  flagging, documented above with exactly why each one fooled the
  checker). `write_multi_split(src_name,
  segments, src_text)` is ready to use once a segmentation is confirmed:
  `segments[0]` keeps `src_name`'s own identity (truncated in place),
  `segments[1:]` are new symbols with fresh guards inserted right after
  it. **Do not trust the algorithm's own proposed span count blindly**
  even on a fragment it otherwise gets right — `sub_806E838` shows it
  can UNDER-split (merge two real tiny functions together) as well as
  over-split, for the same underlying reason (short real functions and
  the length-floor safety guard interact) — always read the real
  disassembly before executing, not just the tool's printed spans.

  **`sub_801B0B8` is a confirmed false positive, deliberately skipped —
  a second, independent instance of the exact bug class this whole
  section is about, caught by the hand-verification step doing its
  job.** The algorithm proposed `(0,134),(134,272)`, anchored on a
  `pop {r3,r7,pc}` match at offset `0x84` — but that address is
  genuinely dead/pool-adjacent bytes, not executed code: a `b.n 0x92`
  at `0x80` jumps clean over it, and a separate `beq.n 0x90` from
  earlier in the function lands just past it, meaning `0x84`'s
  byte pattern coincidentally decodes as a return while the function's
  real control flow never touches it. The function's genuine single
  return is at `0x108`. Left unsplit; still shows up in `--list`/the
  flagged 48, exactly as it should until someone re-derives its
  boundary (there is none — it's one function) properly.

  **`sub_81DC44C` CLOSED 2026-08-29.** Real objdump-level disassembly
  (`arm-none-eabi-objdump`, not the automated segmentation algorithm)
  showed 3 clean functions plus one ambiguous 2-byte span: a bare
  `bx lr` at offset `0x14` (real address `0x081DC460`) with nothing
  before it in that span — no setup, no argument use. Ruled out all
  three shapes the question was originally framed around: not a
  branchless fall-through (the preceding function already returns
  cleanly one instruction earlier via `pop {r4,pc}`), not an
  intermingled literal pool (no `ldr [pc,#N]` anywhere in the fragment
  targets that address), not a non-standard prologue (the next real
  function's own prologue, 2 bytes later past ordinary alignment pad,
  is an entirely ordinary `push {r4,lr}`). Decisive point: `0x14` is
  already word-aligned on its own — if `bx lr` were alignment filler,
  it wouldn't need to exist to reach a boundary that's already there,
  and this project's actual pad convention is `0x00,0x00`, not a real
  instruction encoding. Resolved as its own minimal function
  (`sub_81DC460`, 4 bytes: `bx lr` + the standard 2-byte pad) rather
  than an `unk_ADDR:` data label — it behaves exactly like every other
  `bx lr`/`pop{...,pc}`-terminated span in this corpus, just with an
  empty body, and a future `void sub_81DC460(void) {}` C attempt is a
  trivial, high-confidence match once tried. 4-way split executed via
  `write_multi_split()`, verified with a from-scratch `mlss.gba: OK`,
  committed `d5a2958e`. No cross-reference to `0x081DC460` was found
  anywhere in `asm/*.s`/`src/*.c` (grepped directly) to confirm it as a
  callback-table entry specifically, so the "why does this exist"
  question stays genuinely open — only "is the split safe" was closed.

- **MAJOR FINDING, 2026-08-29: every function `split_trailing.py` has
  EVER produced is invisible to m2c, 402 of 402, zero exceptions, zero
  ever matched.** Found while trying to seed the 117 functions this
  session's 46-fragment remediation unlocked, for the requested
  "wide pass to gauge difficulty" — every one of the first 10 tried
  (and, once checked, literally all 402 `needs_attempt` rows whose
  name came out of a `split_trailing.py` commit) carries the identical
  `tier_m2c` note `declined (outside current translation coverage)`.
  Root-caused directly at the m2c source, not inferred: running
  `python3 tools/m2c/m2c.py --target gba --valid-syntax
  asm/nonmatching/<name>.s` on any of them prints `Function <name>
  contains no instructions. Maybe it is rodata?` — and
  `tools/m2c/m2c/asm_file.py`'s `data_directives` dict lists `.byte`
  (alongside `.word`/`.4byte`/etc.) as a DATA directive. `write_split`/
  `write_multi_split` deliberately emit trailing bytes as raw `.byte`
  under a real `thumb_func_start` (see that function's own docstring:
  "byte-identical BY CONSTRUCTION" — a genuinely correct, deliberate
  safety choice for the ROM) rather than reconstructed mnemonic
  assembly like every OTHER fragment in this corpus (compare
  `asm/nonmatching/sub_8052C50.s`, real Luvdis-style `push`/`ldr`/`bl`
  text). m2c parses assembler mnemonics to build a control-flow graph;
  a fragment that is 100% `.byte` lines has no mnemonics for it to see
  at all, so it's classified as pure data before decompilation is ever
  attempted. This is not a hard-function or heuristic-ceiling problem
  like the walls documented elsewhere in this file — it's a total,
  mechanical block that has applied to every one of these functions
  since the very first `split_trailing.py` split, confirmed by the
  `matched` count above: 0 of 402.
  **FIXED same day, 2026-08-29: `tools/factory/reassemble_bridge.py`
  (new).** Reads the tracked pure-`.byte` fragment, disassembles the raw
  bytes with the project's own `arm-none-eabi-objdump` (via
  `split_trailing.disassemble()`, unchanged), and re-renders that into
  legal GNU-`as` Thumb mnemonic text — the exact shape every OTHER
  (Luvdis-derived) fragment already has. Deliberately NEVER writes to
  the tracked fragment; the reassembled text only ever exists as an
  in-memory string / scratch temp file fed to m2c for one invocation
  (wired into `m2c_bridge.run_m2c()`), so the byte-safety guarantee
  `write_split`'s own docstring cares about is untouched — the
  candidate C this produces still goes through the identical
  compile/diff/validate gate as every other seed.

  Every literal-pool `ldr rX, [pc, #N]` is rewritten to `ldr rX, LABEL`
  with a `LABEL: .4byte 0xVALUE` placed at the exact real address the
  Thumb PC-relative formula (`((instr_off+4)&~3)+N`) computes — not
  left as raw `[pc, #N]`, because m2c has no way to know what value
  lives at an unlabeled address; it needs the value declared as data in
  the same text it's parsing, exactly like every already-matched
  fragment's own `@ =0xVALUE` convention. Branch/call targets outside
  the fragment resolve to a real name via `mlss.map` (ground truth: it
  lists every currently-linked symbol, matched or not) with a
  `sub_<ADDR>` fallback — this project's own universal per-address
  naming convention, not a guess, since a `bl` target is always a real
  instruction-aligned entry point. Internal branch targets get a local
  `_<ADDR>:` label, matching Luvdis's own naming.

  Declines (never guesses) on: more than one return-matching
  instruction (ambiguous control flow), any undecodable span
  (`(bad)`/`.word`/`UNDEFINED` — likely ARM-mode or genuine data), or
  any pool word not referenced by an in-function `ldr rX, [pc, #N]`
  (the code/pool/padding boundary assumption not holding).

  **Verified, not assumed, at three levels before rollout:**
  1. Byte-identity: reassembled 3 hand-picked candidates (a trivial
     4-byte `bx lr` stub and two ~64-byte dispatch-table stubs from the
     `sub_8196ACC`/92-way split), assembled each standalone, linked at
     its OWN real address against the just-built `mlss.elf` (critical —
     linking at the wrong address silently corrupts `bl`/`ldr` encodings
     without erroring, caught and fixed during this verification), and
     diffed against the retail `.byte` bytes: exact match, all 3.
  2. Scaled to an 80-function random sample of the 402-row declined
     pool (seed 42): 63/80 (79%) bridge successfully, 17 correctly
     declined by the safety checks above (0 exceptions). All 63
     independently re-verified byte-identical the same way as step 1
     (assemble, link at real address via `mlss.map`, objcopy, diff) —
     63/63 exact.
  3. Full pipeline, same 80-function sample, through
     `m2c_bridge.generate()` (the real function `tier_m2c.py` calls,
     including `fix_untyped_address_access` and friends): 63/80
     generate real candidate C (up from 0/80 before this fix), and
     54 of those 63 (86%) pass `gitops.compiles_in_isolation()`
     immediately — a jump from "100% mechanically blocked" to "~68%
     of the sample compiles on the very first pass."

  **Reopened automatically, not by manual DB reset** — `ruleset_version()`
  hashes `m2c_bridge.py`'s own bytes (now also `reassemble_bridge.py`'s,
  added in the same change so a future edit to the bridge's OWN rules
  reopens declined rows the same way, closing the exact gap CLAUDE.md
  already documents for the ldsh/ldsb patch), so this fix changed the
  ruleset stamp on its own and every `needs_attempt` row `tier_m2c`
  previously declined under the old one became claimable again the
  moment the worker restarted — no requeue script, exactly the
  mechanism `_claim()`'s own docstring describes. `tier_m2c.py` is a
  long-running worker that holds the code it imported at startup (THE
  LAW, rule 6), so this was committed BEFORE restarting it (rule 7).

  One deliberately-deferred refinement, not a correctness gap: a pool
  word that happens to be a function pointer (e.g. `0x0818AD31`, thumb
  bit set) renders as a raw hex literal rather than `&sub_818AD30` —
  matches CLAUDE.md's own "Extern vs. cast address constant" clean
  negative (measurable only per-function, not corpus-wide), so left as
  a known, optional per-function seed lever rather than built in now.

- **The 94-function bridge-decline pool, sampled and categorized
  2026-08-29 — three genuinely different shapes, not one.** Random
  sample of 3 (`sub_8046BC8`, `sub_8159E48`, `sub_816D61C`):
  - `sub_8046BC8`: **valid code, real edge case, not yet handled.** Has
    a literal pool EMBEDDED MID-FUNCTION (at file offsets `0x58`/`0x5c`/
    `0x74`, sitting between real instructions and jumped around by a
    `bne`/`b` pair), not one clean pool at the tail the way every
    function this bridge already handles has. `reassemble_for_m2c()`'s
    own safety check (every `ldr rX,[pc,#N]` target must land in the
    tail pool it builds) correctly catches this and declines rather
    than mis-rendering the mid-function words as bogus instructions.
    Real, scoped future work: extend the pool-detection to ANY
    `ldr`-referenced word, not just ones after the single return,
    proving each is genuinely never executed (reachable only as a
    `ldr` target, never falls into as straight-line code) before
    labeling it — not attempted this session.
  - `sub_8159E48`: **not a real edge case — a bug in this bridge**,
    found and FIXED same day (see `bca89768`): the undecodable-span
    guard checked the WHOLE disassembly instead of just the code before
    the return, so a pool word that happens to decode as `UNDEFINED`
    when misread as an instruction (harmless — it's data, never
    reassembled as that bogus mnemonic) declined an otherwise perfectly
    bridgeable 1088-byte function. Re-verified byte-identical after the
    fix. `ruleset_version()`'s hash-based reopening (see above) means
    this reopened every row this exact bug hit, no manual requeue.
  - `sub_816D61C`: **a genuine multi-function merge, NOT among the 46
    already resolved** — 3 real return-matching instructions (`bx r1`
    at offsets `0x64`/`0x8c`/`0xa0`), i.e. a NEW instance of the exact
    class the whole "48 flagged fragments" saga above is about, just
    never flagged by that scan (it must have looked single-return
    under whatever check ran then, or postdates it). Correctly declined
    by the bridge rather than guessed at — this needs the same
    hand-verified `write_multi_split()` treatment as the other 46, not
    a bridge fix. Worth a fresh `split_trailing.py`-style sweep for
    more of these rather than assuming 48 was the true final count.

- **`rescore_seeds.plain_score`/`validator._matches_in_plain_build` structurally
  cannot accept a candidate that references a known address via its
  MINTED NAME (`symbols.txt`) where retail's own disassembled `.s`
  fragment shows that same address as a bare hex literal.** Found and
  fully diagnosed on `sub_8029080` (2026-08-28), NOT a compiler-heuristic
  ceiling like the Score-2/Score-4 register-allocation walls above —
  this one is a real gap in our own pipeline, and the underlying C is
  provably correct. `*(s32*)0x03000C78` (raw hex) let agbcc constant-fold
  it against the immediately-preceding `0x03000C24` access (both derived
  from the same base, differing by exactly `0x54`) into a single `adds`
  instead of retail's separate `ldr [pc,#N]` — the exact literal-pool
  class already documented above. Naming it (`dword_3000C78`/
  `sub_800063C`, both already in `symbols.txt`/`common.h`) blocks the
  fold and reaches **byte-exact** via `in_context_permuter.py` (which
  resolves known symbols before comparing, same technique as the
  `sub_808F2A8` fix). Verified independently at the raw object level too:
  `arm-none-eabi-objdump -dr` on the real spliced `.o` shows every
  instruction byte-identical end to end, and the candidate carries
  correct `R_ARM_ABS32` relocations at the two symbol offsets. Rejected
  anyway by `validator.py`, traced to its actual cause rather than
  assumed: `plain_score`/`_matches_in_plain_build` compare **pre-link**
  `.o` files — the candidate's relocation there is genuinely still
  unresolved (placeholder bytes), while retail's raw-hex `.s` produces no
  relocation at that offset at all, so the byte comparison sees a real
  difference that would vanish after the actual `--just-symbols` link
  step `finish_match()` performs. Confirmed this really is
  `plain_score`'s fault and not a wrong assumption: manually forced the
  DB row straight to `validating` to skip the pre-check — `validator.py`
  still rejected it via the exact same `_matches_in_plain_build` call
  before ever reaching `finish_match()`, since that pre-check is
  unconditional in `_validate_claimed()`, not skippable from outside.
  **Deliberately not patched this session** — `plain_score` is imported
  live by both `validator.py` and `tier2.py`, and correctly resolving
  known symbols before this specific comparison (mirroring
  `in_context_permuter.resolve_known_symbol_relocs`) is a real, scoped,
  worth-doing fix, just not one to rush through a widely-shared,
  safety-adjacent comparison function under time pressure. `sub_8029080`
  itself is safe as left: it bounced back to `tier2_ready` automatically,
  nothing was lost or corrupted (this is exactly the "false negative is
  harmless, the real gate is unaffected" case `already_matches()`'s own
  docstring describes, just for the sibling check instead). Next
  session: fix `plain_score` to call `resolve_known_symbol_relocs`
  (or equivalent) on the pre-link object before its byte comparison, then
  re-promote `sub_8029080` through the normal path.
- **`gitops._owning_source_stem` fixed 2026-08-28** — it fell back from
  `find_guard_block()` (old `#ifndef NONMATCHING` convention only)
  straight to a regex matching a real, unguarded definition, so a
  function still in its NEW-FORMAT (`ASM_FUNC`/`NONMATCH`) guard was
  invisible to both checks and `_owning_source_stem` returned `None`.
  Found live promoting `sub_806A730`'s genuine in-context zero:
  `rescore_seeds.plain_score()` silently returned `None` (its own
  first line is `if stem is None: return None`), which
  `already_matches()` read as "no readable verdict" and rejected via its
  legacy `asm_differ_matches()` fallback — a real false negative, not a
  real mismatch, exactly the class `already_matches()`'s own docstring
  already anticipates ("harmless... falls through to the permuter") but
  this time traced to its actual cause rather than left as unexplained
  noise. Fixed by also trying `find_new_format_guard()`, matching every
  other splice/repair path in this file. Verified: `plain_score()`
  returns 0 for `sub_806A730` now, both decl-prefix variants, where it
  returned `None` before.
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
  **Measured 2026-08-27, not just found on one function:** ran every row
  in the escalation-exhausted near-miss pool
  (`objdiff_score>=90 AND escalation_count>=10`, 319 rows) through a
  from-scratch splice+compile, capturing the real `agbcc`/`as`/`cpp`
  stderr per failure instead of trusting `branch_deficit_scan.py`'s
  silent `None` (a fresh diagnostic script, not a stored count — see THE
  LAW on stored vs. live). 32 rows failed to build either side.
  **16 of 32 (50%) are this exact bug** — `conflicting types for X` /
  `previous declaration`, same family as `sub_8091CC8`, just never
  counted before. Full breakdown: 16 self/body-declaration conflicts (this
  bug), 10 warning-as-error pointer/int type mismatches (a different,
  m2c-signature-inference-adjacent class — NOT this bug, don't conflate),
  3 arity (`too few arguments to function` — the already-rejected
  call-site signature-inference class, see Clean Negatives), 3 the
  already-known `agbcc -g` debug-line assembler bug (`asm/macros.inc:1:
  junk at end of line`), 1 `redeclared as different kind of symbol` (same
  family, different agbcc wording). **This makes the
  `_repair_self_declaration` fix the single largest lever in the
  build-failure pool** — over half, not a one-off — reinforcing rather
  than changing the original "fix when idle" call.

  **The 3-row `-g` debug-line class was fixed the same session, not left
  standing.** It wasn't just "not mirrored in the standalone tool" as
  first assumed — it's real and non-deterministic (confirmed live on
  `sub_81495A4`'s BASE candidate: failed 2 runs straight, then a traced
  in-process reproduction caught the actual `.as.err`, then 5/5 fresh
  attempts succeeded once the fix below landed — consistent with
  `PYTHONHASHSEED` randomizing pycparser's set/dict iteration order
  between processes and shifting exactly what debug-line info agbcc
  emits for pycparser's AST-regenerated source). `in_context_permuter.py`
  had `-g -ffix-debug-line` in its `CFLAGS` but, unlike the real
  Makefile's `%.o` rule, no fallback retry. Added `CFLAGS_NODEBUG` and a
  retry in `compile_tu()`: on the exact `asm/macros.inc:1` signature,
  recompile with `-g`/`-ffix-debug-line` dropped (byte-neutral per the
  Makefile's own comment) and re-assemble. Verified, not assumed: all 3
  sampled rows (`sub_8087444`, `sub_810835C`, `sub_814BB80`) compile now.
  Since `in_context_search.py`/`branch_deficit_scan.py` both import
  `compile_tu` from this module, the fix is corpus-wide, not local to
  these 3 — the real remaining "31 build failures" count is whatever's
  left after re-running the scan, almost certainly lower than 32.
- **A genuine 1-halfword branch-offset gap recurred across at least 4
  unrelated functions**: `sub_8072400`, `sub_81132D4`, `sub_806A180`,
  `sub_806A730` — each otherwise byte-identical to retail (relocations
  included) except one `bne` whose encoded offset was exactly 1 halfword
  short. **Not a literal-pool alignment artifact** — ruled out directly:
  `sub_806A180` has no PC-relative literal load anywhere in the function,
  so there is no alignment-sensitive `ldr [pc, #N]` for phase to affect,
  and it showed the identical signature anyway. The real shape, confirmed
  by disassembling both sides side by side: in retail, the branch target
  is a `movs r0, #0`-style return-value write that sits INSIDE the
  if-block as a natural fall-through (executes only on the taken path);
  in every candidate, the equivalent write sat AFTER the target,
  unconditionally on both paths. Same total instruction count, same
  bytes everywhere else — just which side of the branch target that one
  write falls on. A real, permutable structural difference
  (decomp-permuter's own `perm_condition`/`perm_ins_block` passes are
  aimed at exactly this shape), confirmed by that prediction landing:
  `sub_8072400` was confirmed matched via ordinary in-context search
  with `--allocator-attack` on 2026-08-28 (converged to a genuine zero
  across 3 independent workers, promoted through the real production
  gate, committed `b7e07bc1`) — the permuter found the restructuring on
  its own, no manual C rewrite needed. **All four resolved 2026-08-28**:
  `sub_81132D4` turned out to already be matched (the live factory found
  it independently, unrelated to this investigation); `sub_806A180` and
  `sub_806A730` closed the same way as `sub_8072400`, 3/3 workers each.
  `sub_806A730`'s promotion surfaced one more real bug on the way out —
  see the `_owning_source_stem` entry in Housekeeping below. This
  specific class is fully closed; no known recurrence.
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
