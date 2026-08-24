# Matching-decomp tooling research — 2026-08-23

Scope: what exists TODAY for a GBA/agbcc/ARMv4T byte-matching decomp, verified by
fetching and by reading source, not from model memory. Written against this repo at
~26.3% matched, ~4,400 functions remaining.

**Reading key.** *VERIFIED* = I read the source or ran the tool on this repo's own
files. *ASSERTED* = a README/blog says it and I did not independently confirm.

---

## 1. objdiff — **ADOPT**, and it is the only unambiguous win here

- URL: https://github.com/encounter/objdiff
- Version **v3.8.0**; last commit `dabfa4b` **2026-08-17** (six days ago). Actively
  maintained by Luke Street (encounter). MIT/Apache-2.0.
- Licence-compatible, Rust, no Python runtime dependency.

### 1.1 ARMv4T / Thumb — VERIFIED, first-class

Read `objdiff-core/src/arch/arm.rs` (647 lines):

- Disassembler backend is the **`unarm` crate, v2.1** (`objdiff-core/Cargo.toml`),
  plus `arm-attr` v0.2 for reading ELF build attributes. It is NOT Capstone and
  NOT a hand-rolled decoder.
- `ArmArchVersion::V4t -> unarm::Version::V4T` is an explicit enum arm. The
  config schema (`objdiff-core/config-schema.json`) labels it literally
  **`"v4t" / "ARMv4T (GBA)"`**. GBA is a named target, not an accident.
- `arm.archVersion` defaults to `auto`, which reads `CpuArch::V4T` out of ELF
  build attributes; on failure it falls back to **V5Te**. For this project,
  set `v4t` explicitly — do not rely on autodetect.
- Thumb vs ARM vs data is decided by **ELF mapping symbols `$a` / `$t` / `$d`**.
  **If a section has no mapping symbols the fallback is ARM**, which would decode
  our Thumb as garbage.
  - **VERIFIED this repo is safe**: `readelf -s build/src/alarm.o` shows
    `$t` at 0x0, `$d` at 0x2, `$t` at 0x4, … GNU `as` emits them for us already.
    No build change needed.
- Pre-UAL mnemonics: **a non-issue, and not for the reason you'd guess.** objdiff
  reads *binary ELF objects*; it never parses our `.s` text, so the `ldsh`/`ldrsh`
  spelling problem that cost m2c 36% of the corpus (CLAUDE.md §J) cannot occur.
  Spelling only affects *display*: `arm.unifiedSyntax` defaults to `false`.
  - **VERIFIED**: same function renders `mov r4, r1` with `unifiedSyntax=false`
    and `adds r4, r1, #0x0` with `=true`. The default matches our disassembly
    convention.

### 1.2 It fixes THE bug — `.size`-less `thumb_func_start` — VERIFIED

This is the reason to adopt it. `objdiff-core/src/obj/read.rs` has
`infer_symbol_sizes()` (line 321): any symbol whose `st_size == 0` gets a size
derived from the **next FUNC/OBJECT symbol's address** (local labels such as our
`_081DC804` literal-pool labels are skipped, so a literal pool does not truncate
the function). The symbol is then flagged `SizeInferred`.

That is precisely the gap `thumb_func_start` leaves (`.type %function`, no `.size`).

**VERIFIED on this repo**: `objdiff-cli diff -1 expected/build/src/heap.o -2
build/src/heap.o … init_heap` reports
`"size": "168", "flags": {"global": true, "size_inferred": true},
"match_percent": 100.0`, with correct Thumb (`push {r4, r5, r6, lr}`, `mov r6, r9`).

**VERIFIED — the decisive experiment.** Built two objects in the scratchpad from
this repo's own fragments (repo untouched):

- `a.o` = `asm/nonmatching/sub_8018E88.s` alone
- `b.o` = the same fragment **plus three trailing fragments**

| what is compared | a.o | b.o |
|---|---|---|
| SECTION `.text` — *what asm-differ `-o` diffs* | 316 bytes | **360 bytes** |
| SYMBOL `sub_8018E88` — *what objdiff diffs* | **100.0%**, size 316 inferred | **100.0%**, size 316 inferred |

The per-symbol score is **independent of trailing content**. Sections N.4a, P,
T.13 and T.14 are all instances of one measurement bug; objdiff removes it *by
construction* rather than by the plain-build correction currently used.

### 1.3 Relocations — VERIFIED, and better than a byte compare

`objdiff-core/src/diff/code.rs:292 reloc_eq()`. Relocations are compared
**symbolically**: relocation flags must match, then symbol **name + addend**
(`symbol_name_matches` + `left_reloc.relocation.addend == right…`), with an
address-equality fallback and a separate data-value check for `SymbolKind::Object`.

Config `functionRelocDiffs`, default **`name_address`**:

| value | behaviour |
|---|---|
| `none` | relocations ignored entirely — **do not use here** |
| `name_address` (default) | name-or-address must match |
| `data_value` | ignores names, compares pointed-to data |
| `all` | name-or-address **and** data value |

**VERIFIED**: renders `bl alloc_heap_8018CEC-0x4` and `bl CpuSet-0x4` — the
relocation target *name*, not the placeholder zero. This satisfies the hard
requirement that `bl target` / `.word target` not be treated as identical across
two different callees.

> Note for anyone copying Klonoa's config: `kl-eod-decomp` sets
> `functionRelocDiffs: "none"`. That is the **relaxed** setting and would
> reintroduce exactly the failure mode this project cannot tolerate. Use
> `name_address` (default) or `all`.

### 1.4 Scoring model — VERIFIED

`objdiff-core/src/diff/code.rs`: an instruction-level sequence diff with
weighted penalties — `PENALTY_INSERT_DELETE`, `PENALTY_REPLACE`,
`PENALTY_REG_DIFF`. Then:

```
max_score      = left_ops.len() * PENALTY_INSERT_DELETE
diff_score     = min(accumulated, max_score)
match_percent  = (1 - diff_score/max_score) * 100
```

Both `match_percent` (f32) and the raw `(diff_score, max_score)` pair are exposed
per symbol. `max_score` is bounded by **the symbol's own instruction count**, so
the number is comparable across functions and cannot be inflated by file
position — the exact property `best_score` lacks.

### 1.5 Automation surface — VERIFIED

```
objdiff-cli diff -1 <target.o> -2 <base.o> -o out.json --format json \
    -c arm.archVersion=v4t -c functionRelocDiffs=name_address <SYMBOL>
```
One-shot, non-interactive, machine-readable. `--format json-pretty` and `proto`
also exist. `objdiff-cli report generate -p <proj> -o report.json` produces a
whole-project progress report but needs an `objdiff.json` and runs `make` — wrong
granularity for this pipeline; use `diff`.

- **No Python bindings.** `objdiff-core` is a Rust crate; `objdiff-wasm` exposes a
  WIT/TypeScript interface. Integration is subprocess-per-diff, or a small Rust
  shim if that ever becomes the bottleneck (it is not — see below).
- Build cost measured here: `cargo build --release -p objdiff-cli` = **1m10s**,
  cargo 1.97.1 already installed (crate needs rust-version 1.88).

### 1.6 Throughput — MEASURED on this box, with a real caveat

Process-per-diff, single-threaded:

| input | ms/diff | diffs/min |
|---|---|---|
| isolated single-function objects (`a.o`/`b.o`, ~1.5KB) | 7.2 | **8,343** |
| real `build/src/heap.o` (13KB, with debug sections) | 5.0 | **11,906** |
| `build/src/sub_8171FF8.o` (**416KB**) | 325 | **184** |

- Against isolated objects it is **4x faster than `isolation_exact.py`'s
  ~2,000/min** — and note that 2,000/min figure *includes* the agbcc compile,
  which dominates. objdiff's scoring is effectively free.
- **The caveat is real and matters**: objdiff parses the whole object per
  invocation, so pointing it at this repo's giant shared translation units is a
  **10x regression**. Use it on the isolated one-function objects
  `isolation_exact.py` already builds. Do not wire it into a whole-TU scoring path.

### 1.7 Integration sketch

The "expected side is an assembled fragment, not a compiled object" question
answers itself — **that is already what `isolation_exact.py` does**, and objdiff
consumes ELF objects from either source identically:

```
target.o  = arm-none-eabi-as  asm/nonmatching/<name>.s        # retail bytes
base.o    = cpp + agbcc + as  (ctx + candidate_body)          # candidate
objdiff-cli diff -1 target.o -2 base.o -o - --format json \
    -c arm.archVersion=v4t -c functionRelocDiffs=name_address <name>
```

Concretely, inside `tools/factory/isolation_exact.py`, next to the existing
`.text`+relocs byte comparison:

1. Both sides are already assembled/compiled into single-function objects — reuse
   them unchanged. The fragment carries `thumb_func_start`, so the target symbol
   is size-0; objdiff infers it. **Confirm the fragment's assembled section has a
   `$t` mapping symbol** (it does for `src/*.o`; assert it for scratch objects
   rather than assuming).
2. Keep the existing byte+reloc equality test as the *promotion* signal — it is a
   boolean and it is correct. objdiff adds what that test cannot give: a
   **graded distance for everything that is not equal**.
3. Store `match_percent` and `diff_score` as a new column (`objdiff_score`)
   alongside `iso_score`. **Do not overwrite `iso_score`** — different scale;
   CLAUDE.md T.13 already learned that lesson keeping `iso_score` apart from
   `best_score`.
4. Rank `tier2`'s claim order on it. T.13 ranked on `iso_score` (byte distance);
   objdiff's instruction-level distance with a register-difference penalty is a
   strictly better proxy for "a permuter search will converge", because a
   pure-register-allocation miss — the thing the permuter is actually *for* —
   scores near-100% here while byte distance can be large.
5. `finish_match()`'s from-scratch build + ROM SHA-1 stays the only gate. This
   changes a pre-filter, never the verdict.

**Cost estimate.** Half a day to a day. Adding the binary to the container is a
one-line `cargo install`/COPY (or vendor the 1m10s build). The scoring call is
~20 lines of subprocess + JSON in `isolation_exact.py`. The schema column and the
`tier2` ranking change are each a few lines. Risk is low because it is additive:
nothing is removed, and the promotion gate is untouched.

**What it replaces.** Nothing outright — and that is the honest framing.
`isolation_exact.py` already delivers the artifact-free *boolean*, which is why
`docs/plan-2026-08-22-toolchain-overhaul.md` marks Phase 1 "obsoleted". That
remains correct for equality. objdiff supplies the **graded score** that neither
`isolation_exact` (boolean only) nor `asm_differ_score` (positional artifact)
can, and it does so ~4x faster than the current measurement rate. It also
retires `expected/`, `diff_settings.py`'s `NONMATCHING=1` scoring build, and the
whole "refresh `expected/` or your score is a lie" ritual for the scoring path.

**Residual risk / open question, stated plainly:** I verified per-symbol scoring,
size inference, Thumb decoding, relocation resolution and throughput on this
repo's real objects. I did **not** run a full sweep of the ~4,400-function pool
through it, so I cannot quote a converted-match number. Expect a re-ranking
benefit of the same character as T.13, not a new class of match.

---

## 2. m2c — **KEEP, PULL** (no fork needed; upstream *is* the ARM home)

- URL: https://github.com/matt-kempster/m2c
- Latest commit **2026-08-23** (today): "sh2: implement swap.b (#350)".
- **VERIFIED**: this repo's submodule is pinned at `19f2ddb` (2026-08-16), i.e.
  ~7 days behind, and it *already contains* the recent ARM work.
- Simon Lindholm committed three ARM fixes on **2026-08-10**, all of which are in
  our pinned tree: `arm: set subroutine arg region size to 0 on 'mov x, sp'`,
  `arm: handle stack alloc using add instead of sub`, `arm: fix PopAndReturnPattern`.
- **No ARM/Thumb-focused fork exists and none is needed.** The ARM backend has not
  moved and has not been superseded; it is being actively developed in mainline by
  its original author. This is a clean negative for "go find a better fork".
- Action: routine `git submodule update` + re-run `tools/m2c_patches/apply.sh`
  (per CLAUDE.md). Verify the pre-UAL `ldsh`/`ldsb` patch still applies — if
  upstream ever adds those aliases, the patch becomes a no-op and should be dropped.
- Sources: https://github.com/matt-kempster/m2c/commits/master

---

## 3. decomp-permuter — **KEEP** (current fork is already at its own HEAD)

- Upstream https://github.com/simonlindholm/decomp-permuter states support for
  "MIPS (compiled by IDO, possibly GCC), PowerPC, and ARM32 assembly". **No agbcc,
  no ARMv4T, no Thumb, no GBA mention.** CLAUDE.md's characterisation is accurate.
- Our fork https://github.com/WhenGryphonsFly/decomp-permuter-agbcc — most recent
  commit **2025-06-27** ("Update import.py"). **VERIFIED our submodule is pinned to
  exactly that commit** (`1f7ef87`, 2025-06-27), so we are at the fork's HEAD.
  Nothing to pull. The fork is dormant but not broken.
- Other ARM forks exist and are worth a diff, not an adoption:
  - https://github.com/laqieer/decomp-permuter-arm — "The main target for the tool
    is ARM/Thumb code compiled by embedded arm compilers"
  - https://github.com/GameCubeGBA/decomp-permuter-arm (formerly DTeachs/…), forked
    from laqieer's, 639 commits on branch `arm`
  - https://github.com/louist103/decomp-permuter
  These target *embedded ARM compilers* generally rather than agbcc specifically.
  Given CLAUDE.md T.6 already built a local `[agbcc]` weight profile and T.6/T.10/T.11
  measured three plausible passes to near-zero on this corpus, the expected value of
  swapping forks is low. **EVALUATE at most** — diff their randomizer passes against
  ours for ideas; do not migrate.

---

## 4. Ghidra / other lifters as a seed source — **EVALUATE**, one specific use

- Ghidra covers ARMv4T via SLEIGH (`ARM:LE:32:v4t`) and its P-code decompiler is
  substantially more robust than m2c's ARM backend — relevant to the ~1,750
  functions where m2c produces nothing that compiles, and to CLAUDE.md §H's
  "m2c could not recover the function" residue.
- **The strongest evidence is not "Ghidra writes better C".** The Klonoa GBA decomp
  used Ghidra to *enrich the function list*, finding **~300 functions Luvdis missed**,
  and to identify module boundaries via a custom script.
  https://gambiconf.substack.com/p/starting-a-decompilation-project
  That maps directly onto this repo's open Phase 3 work — the ~152KB mixed
  code/data run at `0x0819B83C`, the 18 refused trailing regions, and the 94
  refused jump-table candidates (§O). **Function discovery, not C generation, is
  the defensible Ghidra use here.**
- Headless is available (`analyzeHeadless`, plus
  https://github.com/h4sh5/ghidra-headless-decompile). Cost: heavyweight JVM,
  seconds-per-function, no matching-decomp awareness. Its C is written for
  readability, not for reproducing agbcc codegen, so it needs the same
  compile/score/permute gauntlet as any other seed.
- Binary Ninja: commercial licence — a cost decision, not a technical one.
  angr / RetDec: not matching-oriented, no agbcc modelling. **NOT APPLICABLE** as
  seeders for byte-exact work.

### asmlift — already in this repo, already measured (answering the explicit question)

`tools/factory/asmlift_bridge.py` **is not** a Ghidra bridge. asmlift is
`@asmlift/cli` (MIT), a second programmatic decompiler by the Klonoa decomp author,
built for matching decompilation, with **`--target agbcc`** ARMv4T/Thumb support,
reading pret-style split assembly directly.

- npm: **v0.5.0, published 2026-08-16**; first release 2026-07-21, four minors in
  under a month — actively developed. (VERIFIED via registry.npmjs.org.)
- Our bridge's own measurements, already recorded in its docstring:
  - smallest-first, 150 fragments m2c can't compile: 40/150 produced C, **8 byte-exact**
  - whole pile, 1,200 fragments: 143/1,200 produced C, **2 byte-exact**, 110 sat 50+ bytes out
  - value is concentrated in **small** functions; it is a complement to m2c, not a replacement
  - both decline `swi` BIOS veneers for the same reason
- **Blocker is environmental, not technical**: asmlift is a Node package and the
  bridge notes this machine has no system Node. `node` *is* present at
  `~/.bun/bin/node` — so `npm install @asmlift/cli` and re-running the bridge with
  `ASMLIFT=` pointed at it is a cheap, already-built experiment. **The single
  lowest-cost action in this report.**

---

## 5. LLM-assisted matching decomp, cheap tier — **still NO, honestly**

The question was whether anything cheap (fine-tuned small model, CPU or consumer
GPU) now does *byte-exact* asm→C for ARM/Thumb. As of today: no.

- **Best available data point, and it is MIPS**: "Teaching an LLM to Decompile the
  Nintendo 64", published **2026-06-15**,
  https://huggingface.co/blog/MatthewReingold/n64-decomp-dev-blog
  - Fine-tuned **LLM4Decompile-9b-v2** (also tried OpenCodeReasoning-Nemotron-32B)
    on ~23,400 "perfect" scratches from the **decomp.me** database (~22.2k train /
    1.2k eval), N64 MIPS only, using **Ghidra pseudo-code as input** rather than raw asm.
  - Result: **~4.6% compile rate; of those that compile, 18.9% byte-exact** — i.e.
    roughly **0.9% end-to-end byte-exact**.
  - Training needed a rented **Modal H200** (2.5h vs 22h on personal hardware);
    inference on an NVIDIA DGX Spark.
  - **Explicitly does not address ARM, Thumb, or GBA.**
- LLM4Decompile's own lineage and 2026 successors (SK2Decompile, Decaf, DecLLM)
  optimise **re-executability / readability**, not byte-exactness, and none targets
  ARMv4T+agbcc.
- Read against this repo's numbers, ~0.9% byte-exact is **far below** what the
  existing deterministic stack already delivers, and it needs a GPU this project
  does not have. CLAUDE.md §L's conclusion stands, and the N64 experiment is
  independent confirmation on a *friendlier* architecture.
- The one genuinely transferable idea: **decomp.me's scratch corpus as training
  data**. For ARMv4T+agbcc that corpus does not meaningfully exist, which is the
  binding constraint — not model quality.
- Frontier-model-as-decompiler (Klonoa's 51%) remains capability-proven and
  **ruled out on cost** per the maintainer's Pro plan. Unchanged.

---

## 6. dtk / decomp.me / frogress / splat — mostly **NOT APPLICABLE**

- **decomp-toolkit (dtk)** — https://github.com/encounter/decomp-toolkit —
  "A GameCube & Wii decompilation toolkit", PowerPC only. **No ARM/GBA. NOT
  APPLICABLE.** (Note: same author as objdiff; the ARM support lives in objdiff,
  not dtk.)
- **frogress** — https://github.com/decompals/frogress — API for storing/retrieving
  decomp progress, hosted at https://progress.deco.mp, deployable via Docker
  Compose. Architecture-agnostic (it stores numbers, it does not read code).
  **EVALUATE, low priority** — this would close CLAUDE.md's own outstanding
  housekeeping item ("No CI job runs `tools/progress.py` or posts a progress
  badge yet"). Cheap, cosmetic, zero effect on throughput.
- **decomp.me** — GBA/agbcc scratch support could not be confirmed: the site sits
  behind a **Cloudflare bot challenge** ("Just a moment...") — `/platform/gba`
  returned HTTP 403 and both `/api/platform/` and `/api/stats` returned the
  challenge page rather than JSON. Not fetchable from an automated session at all.
  **UNVERIFIED — do not rely on this line; it needs a human with a browser.** Contextually, Sonic Advance
  reached ~99.2% on decomp.me under an explicit no-LLM policy (per CLAUDE.md), which
  implies real GBA presence, but I did not confirm the compiler presets. Worth a
  manual browser check; it is the only route to a shared ARMv4T scratch corpus.
- **splat** — N64/PSX-oriented binary splitter. This repo's `splits.yaml` +
  `splitlib.py` already occupy that role and are adapted to its specific
  front-to-back/alignment constraints. **NOT APPLICABLE** — migration cost with no
  benefit.

---

## 7. gbarecomp — **the maintainer's long-term goal needs LESS than CLAUDE.md assumes**

This is the most consequential correction in this document.

- https://github.com/mstan/gbarecomp — open source, ~278 commits, "experimental"
  but functional, with a released CLI. **14 public game repos** including Pokémon
  FireRed/LeafGreen/Ruby/Sapphire/Emerald, Minish Cap, WarioWare: Twisted!
- Related/parallel: https://github.com/JRickey/gba-recomp — same category,
  independently reports "169,778 functions out of an estimated 4.1 million mapped
  in 4 days".
- It translates **ARM7TDMI ARM and Thumb machine code straight from the ROM** into
  C/C++, links against a shared GBA hardware runtime (PPU, APU + M4A, DMA, timers,
  flash save + RTC, I/O). Some projects recompile the **BIOS** too rather than HLE-ing it.

**It does not consume a decompilation.** MinishCapRecomp states it outright:

> "Only symbol metadata (function names, addresses, sizes) from the zeldaret/tmc
> decompilation enters this repo — never its C source."
> — https://github.com/mstan/MinishCapRecomp

**What this means for this project.** CLAUDE.md's "Where this could lead" currently
concludes the on-ramp is *"finish the decomp, not also write a GBA runtime."*
That is now **half right and half wrong**: the runtime does exist, but the thing it
wants from a game is a **function-boundary + symbol map**, not byte-matching C.
This repo already produces that as a by-product — `tools/splits.yaml`,
`tools/symbols/{ewram,iwram,rom}.txt`, `mlss.map`, `map_raw_regions.py`, and every
`sub_XXXXXXX` whose name encodes its own address.

So an MLSS Recomp is reachable **now, at 26.3%**, and does not depend on reaching
100%. It is a separate, much smaller export task (symbol map → gbarecomp's
`symbols/<game>.toml` shape), not the finish line of the decomp.

That does not devalue the decomp — modding tools, asset editors and the
physics/collision understanding that motivate this project all still require the C.
It just decouples the two goals, and removes "finish 4,400 functions first" as a
blocker on the one the maintainer cares most about.

*Caveat: last-updated dates for the mstan repos were not exposed in the fetched
pages; the 14-project roster and the symbol-metadata quote are ASSERTED by their
READMEs, not verified by me against their commit history.*

---

## Ranked summary

| rank | tool | verdict | ARMv4T | last updated | cost | replaces |
|---|---|---|---|---|---|---|
| 1 | **objdiff** | **ADOPT** | **VERIFIED first-class** (`unarm`, `v4t`, `$t` mapping syms, size inference, symbolic relocs) | 2026-08-17, v3.8.0 | ~0.5–1 day | the *graded* scoring path (`asm_differ_score`, `expected/`, `NONMATCHING=1` scoring build) |
| 2 | **asmlift** (already vendored) | **ACT — install Node, run it** | yes, `--target agbcc` | npm v0.5.0, 2026-08-16 | ~1 hour | nothing; complements m2c on small functions |
| 3 | **m2c** | **KEEP + pull** | yes, actively developed upstream | 2026-08-23 (we're at 2026-08-16) | minutes | no fork needed — clean negative |
| 4 | **gbarecomp** | **REFRAME the goal** | n/a (consumes ROM) | ~278 commits, active | separate small export task | removes "finish the decomp" as a prerequisite |
| 5 | **Ghidra headless** | **EVALUATE** — for *function discovery*, not C | yes (`ARM:LE:32:v4t`) | active | days | nothing; targets Phase 3 raw regions |
| 6 | **frogress** | EVALUATE (cosmetic) | arch-agnostic | active | hours | closes the open progress-badge item |
| 7 | **decomp-permuter forks** | KEEP ours; skim others | laqieer/GameCubeGBA target embedded ARM | ours 2025-06-27 (at HEAD) | — | nothing |
| 8 | **decomp.me** | UNVERIFIED (403) | unknown | — | — | — |
| 9 | **fine-tuned small LLMs** | **NOT APPLICABLE** | none target ARM/Thumb | N64 study 2026-06-15 | GPU required | ~0.9% byte-exact end-to-end |
| 10 | **dtk / splat** | **NOT APPLICABLE** | dtk is PPC-only | active | — | — |

## Actions, cheapest first

1. `npm install @asmlift/cli`, point `ASMLIFT=` at it (node exists at `~/.bun/bin/node`), re-run `asmlift_bridge.py --limit 200`. Already-built tool, already-measured yield, ~1 hour.
2. `git submodule update` m2c to `master` (2026-08-23), re-apply `tools/m2c_patches/apply.sh`, confirm the `ldsh`/`ldsb` patch still applies.
3. Add `objdiff-cli` to the container; wire `match_percent` into `isolation_exact.py` as a new `objdiff_score` column; rank `tier2` on it. **Do not point it at whole-TU objects.**
4. Reframe CLAUDE.md's "Where this could lead": gbarecomp wants a symbol map, not C — and that is exportable today.
