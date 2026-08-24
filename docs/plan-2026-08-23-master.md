# Master plan, 2026-08-23

Consolidates an eight-lane review of the factory pipeline, m2c, decomp-permuter,
the data side, and the wider decomp ecosystem. Every number here is measured and
traceable to one of six companion docs:

    review-2026-08-23-findings.md           factory bugs (inline)
    review-2026-08-23-tooling-research.md   objdiff / ecosystem
    review-2026-08-23-other-decomps.md      other projects, TU convention
    review-2026-08-23-m2c-census.md         the non-compiling pile
    review-2026-08-23-data-symbols.md       Phase 3/4, symbols, the 84KB blob
    review-2026-08-23-readability.md        hand-decomp + readability

State at review time: **1,578 / 5,996 matched (26.3%)**. Factory stopped since
16:09. Queue: tier2_ready 2,526, needs_attempt 1,797, stalled 40, needs_human 31.

---

## 0. The one-paragraph version

The pipeline is not search-limited and never really was. Three of this session's
four biggest findings are *measurement* or *convention* defects that silently
discard correct work, which is now the fifteenth-through-eighteenth instance of
the same law. The single largest lever available is not more compute and not a
better model: it is **one generalized m2c rule** covering an error family that
accounts for 59% of the entire non-compiling pile. Two structural changes
(objdiff for scoring, the sa2/tmc `ASM_FUNC` convention for translation units)
would delete whole classes of recurring bug rather than patching them again.
And separately: **the long-term GBA-port goal is reachable now**, because
gbarecomp wants a symbol map, not finished C.

---

## 1. Do these first (hours, no design work)

### 1.1 Fix the tier2 wedge BEFORE restarting the factory
`run_pool()` refills every free slot before its monitoring loop runs, and each
refill does blocking work (`already_matches()` = splice + build + asm-differ +
repo lock; `ensure_isolated()` = permute.py build). A slow refill outlasts short
give-up budgets, so searches sit unretired. The signature is unambiguous --
overrun rate is inversely proportional to budget:

    60-90s budget    69/  969   7.1%
    91-180s          39/ 2261   1.7%
    181-420s         33/ 2767   1.2%
    421-900s          7/ 1877   0.4%

148 searches wedged; 104 of them closed as `state:tier2_ready` (requeued, not
retired on merit). The *cure* is the expensive half: the watchdog SIGTERMs
tier2, the supervisor restarts it, and `_cleanup_all()` requeues every in-flight
search -- **424 interrupted searches across 35 restart bursts, mean 12.1 lost
per restart**, which is exactly the pool size. We discard all 12 to retire 1-4.

**Fix:** refill ONE slot per loop iteration so the monitor runs between refills.
Small, contained, in `tier2.run_pool()`. Do this before the factory restarts, or
we resume paying 12 searches per watchdog firing.

### 1.2 `isolation_exact.py --apply`
Harvests the **90 seeds that already compile clean** but are still filed as
non-compiling, AND refreshes `iso_score`, which is what the permuter queue is
now ranked by. Zero new tooling. Cheapest yield in the repo.

### 1.3 asmlift: one `npm install`
`tools/factory/asmlift_bridge.py` already exists and its only blocker is "no
system Node" -- but node is present at `~/.bun/bin/node`. `@asmlift/cli` is at
v0.5.0 with four minors in the last month. Already-built tool, already-measured
yield, ~1 hour.

### 1.4 Restart the factory
The ruleset moved to `1f4cf2aa` when `struct Entity` landed in `common.h`,
re-opening ~1,786 declined rows and ~2,435 stale seeds automatically.
**Do not oversell this** -- see §5.1; it is worth ~43 functions, not ~1,700.

---

## 2. The big levers (days, in priority order)

### 2.1 Generalize the uncast-pointer-dereference rule -- up to 1,126 functions
**By a wide margin the largest untapped lever ever measured in this project.**

Over the 1,447 genuine compile failures, four error classes -- `invalid type
argument of unary *` (399), `called object is not a function` (380), `void value
not ignored` (249), `invalid use of void expression` (204), **85.1% combined** --
are ONE root defect: m2c reconstructs an address as untyped arithmetic and then
dereferences or calls it with no cast around the whole expression.

    every diagnostic inside this family : 1,126 / 1,447  (77.8%)
    ...and otherwise completely clean   : 1,060 / 1,447  (73.3%)

Two rules in `m2c_bridge.py` already patch narrow slices (bare `0x` literals;
double-star function-pointer casts), which is precisely why the general pattern
went unnoticed. The generalization needs a per-body type map so it fires only
where the head symbol is *provably* scalar -- a bare pointer-typed identifier
must not be touched, or dereference width changes silently.

**This overturns section H's "irreducible backend ceiling"** the same way section
O overturned it for jump tables. Both times the "irreducible" residue was a
symptom of something upstream.

**Caveat, stated plainly:** this is a compile-success estimate, NOT a match-rate
estimate. It makes ~1,060 functions permuter-searchable and scoreable. Score
whatever compiles in a PLAIN build (`rescore_seeds.plain_score`), never the
`NONMATCHING=1` object-diff mode N.4a discredited.

### 2.2 Adopt objdiff for scoring
Verified against this repo's own objects, not assumed. ARMv4T is a first-class
target (`unarm` crate, explicit `V4t` arm, labelled "ARMv4T (GBA)"); our objects
already carry the `$a`/`$t`/`$d` mapping symbols it needs, so **no build change**.
Pre-UAL mnemonics are a non-issue because objdiff reads binary objects, never
our `.s` text.

It fixes the `.size` bug **by construction** (`infer_symbol_sizes()`):

    | measurement                          | fragment alone | + 3 trailing |
    | SECTION .text  (what asm-differ diffs) |     316 B      |    360 B     |
    | SYMBOL sub_8018E88 (what objdiff diffs)|    100.0%      |   100.0%     |

That is sections N.4a / P / T.13 / T.14 removed structurally rather than
corrected. Relocations are compared symbolically (flags + target name + addend).

Two hard constraints: **use the default `functionRelocDiffs: "name_address"`**
(Klonoa's config uses the relaxed `"none"`, which would reintroduce exactly the
failure we cannot tolerate), and **never point it at whole-TU objects** --
8,343/min on isolated single-function objects vs **184/min** on a 416KB shared
TU, a 10x regression. Point it at the isolated objects `isolation_exact.py`
already builds.

Honest scoping: it replaces nothing outright. `isolation_exact` already gives
the artifact-free *boolean*. objdiff adds the **graded score** neither current
instrument can produce -- and instruction-level distance with a register penalty
is a better convergence proxy than byte distance, since pure register-allocation
misses score near-100%. No full-pool sweep was run, so there is no match-count
estimate yet. Cost: half a day to a day, additive, from-scratch gate untouched.

### 2.3 Migrate to the sa2/tmc `NONMATCH` / `ASM_FUNC` convention
The deepest fix available, and the only one that *deletes* recurring bug classes
instead of working around them.

sa2 and tmc independently converged on a naked-function + `if(0){draft}` macro.
Under it, **a broken draft fails the shipping build immediately** rather than
sitting silently in the tree poisoning every sibling in its translation unit.
Verified with three real agbcc compiles in this repo's own container: the macro
emits exactly the retail fragment bytes; a dead draft is byte-neutral on sibling
codegen; a broken draft is rejected at compile time.

| section | problem | after migration |
|---|---|---|
| D | one broken sibling fails the whole object | **gone** |
| I | "does not compile" measured in a poisoned TU | **gone** |
| M | permuter win rejected because the file will not build | **gone** |
| N.4, Q, T.2, T.4 | `X undeclared` / `redeclared` / `declare_missing` | **largely gone** |
| T.9 | `declare_missing` tripping agbcc's debug-line bug | **gone by removal** |

Tools that lose their reason to exist: `unblock_files.py`,
`quarantine_broken_drafts.py`, `reclaim_sibling_blocked.py`,
`compiles_in_isolation()`, most of `declare_missing.py` / `fix_decl_conflicts.py`.

**Costs, honestly:** 1,112 real drafts must each compile or be demoted to
`ASM_FUNC` (not new work -- forcing a reckoning already owed); 4,401 fragments
need a scripted two-line header edit; every guard needs a declaration (use K&R
`void sub_X()` where unknown -- **never** a guessed arity, per section H); and
eight tools parse the guard syntax and must move together. Risk to check first:
re-run the byte-neutrality A/B across every already-matched file before bulk
migration; if any differs, stop.

**Order:** macros into `global.h` -> convert ONE file end to end -> convert all
fully-matched / fully-undrafted files (the majority, pure mechanical win) ->
convert drafted files -> only then delete the workaround tools. Steps 1-3 are
worth doing even if step 4 stalls.

---

## 3. The data track (runs in PARALLEL, different bottleneck)

Data work is CPU-cheap sweeps; function work is permuter-slot search. They do
not compete, so this should run alongside, not instead of.

### 3.1 The 84KB blob is SOLVED
`0x08000534`-`0x0800063C` is a **264-byte relocatable ARM decompressor** for a
game-specific LZ codec, copied to heap at boot and called through IWRAM slot
`0x03000C84`. Found by following real call sites, not statistics. Extent
independently confirmed: `0x08000534 + 0x108 == 0x0800063C`, exactly the
existing `sub_800063C` symbol.

Sweep result: **15 streams, 0 false positives**, every one decoding to exactly
its declared header size, every one an exact multiple of 32 (4bpp tile) or 2048
(screen block). It is the boot/title/menu graphics bank. **Retire CLAUDE.md's
"custom/packed format, do not spend time on it" note for this region.**

### 3.2 Re-open the `try_custom_decomp.py` negative
`docs/formats/README.md` records this format as a measured dead end for the
5.1MB of unclassified rodata. That conclusion was reached with a decoder that
has an off-by-one in its header skip plus two other defects -- it could not
decode this format at all. A full rodata sweep with a correct decoder found
**1,167 more valid streams, 4.5MB decompressed.**

Note the honest complication already flagged: 661 of those overlap a
"confirmed" BIOS-RLE entry in `assets/manifest.json`. Already-decompiled
`src/title_screen.c` calls this exact codec on four addresses inside the disputed
range, so that manifest entry is likely a false positive. **Maintainer decision
needed**, and the other 74 entries want the same audit.

### 3.3 Apply the symbols-only minting patch
`tools/mint_data_symbols.py` names **948 addresses -- 100% of currently
referenced ROM addresses**, up from 3.5%. Verified end to end twice:
`rm -rf build/ && make` -> `mlss.gba: OK`, SHA1 exact, layout clean. Safe by
construction per T.11's argument (the symbol resolves to the address the code
already loads, by definition).

Two separable patches: **symbols-only is safe to apply immediately**; the
literal-pool rewrite must wait for m2c-reseed coordination, since it changes
fragment object bytes rather than only the linked ROM.

### 3.4 Fix `map_raw_regions.py`
It scans `asm/*.s` but not `asm/nonmatching/*.s`, so its number *falls as
extraction proceeds* without any data being classified. True still-raw figure is
**~593,000 bytes, not the 440 it reports** -- a 1000x under-report. Any "how much
raw data is left" number from it is currently wrong.

Load-bearing detail found alongside: `sub_81C0F7E` is a **2-byte** interworking
veneer with **104,208 bytes** of data glued to its fragment. If it ever matches,
workflow step 7 says "delete the fragment" -- which would delete 104KB of ROM.
`finish_match()`'s refusal-to-delete guard is what stands between us and that;
re-verify it.

---

## 4. The strategic reframe: the port goal is reachable NOW

CLAUDE.md says the on-ramp to a Harbour-Masters-style GBA port is "finish the
decomp". **That is wrong.** MinishCapRecomp states its own policy plainly:

> Only symbol metadata (function names, addresses, sizes) from the zeldaret/tmc
> decompilation enters this repo -- never its C source.

gbarecomp recompiles the ROM directly. What it wants from us is a **symbol map**
-- which we already produce as a by-product, and which §3.3 just multiplied by
28x. An MLSS Recomp is reachable at 26.3%, decoupled from ever reaching 100%.

This deserves a rewrite of CLAUDE.md's "Where this could lead" section.

---

## 5. Clean negatives -- do NOT re-chase these

### 5.1 Draining the re-opened backlog is worth ~43 functions, not ~1,700
40-row A/B, regenerated under the current ruleset, compiled in isolation:
34 no-compile / 3 no-output / 2 M2C_ERROR / **1 COMPILES (2.5%)**. Section S
holds exactly as written: `struct Entity` fixes the DECLARATION class, not the
COMPILE class.

### 5.2 Shape-group dedup is worth ~512 searches, not 1,639 -- N.3 is stale 3x
Live: 249 multi-member groups, 761 unmatched twins, largest group **21 members
(not 63)**, and only 5 groups still have a solved template. `twin_backfill.py`
already harvested nearly all of it, and 3,872 of the groups containing an
unmatched function are singletons -- **the corpus is mostly structurally
unique.** Worth wiring in (~128 slot-hours), but it is not "exploit #1" and
`twins.py`'s docstring should stop saying so.

### 5.3 Cheap LLMs: still no
Best 2026 data point -- fine-tuned LLM4Decompile-9b on 23.4k decomp.me scratches
-- is MIPS-only, needed a rented H200, and scored 4.6% compile x 18.9%
byte-exact = **~0.9% end-to-end**. Nothing targets ARM/Thumb or byte-exactness.

### 5.4 Others
* **m2c needs no fork** -- upstream IS the ARM home; we already have Lindholm's
  three ARM fixes from 2026-08-10. Just `git submodule update` and re-apply patches.
* **dtk is PowerPC-only.** splat is superseded by our own `splitlib`.
* **N.6's stack-struct-copy idiom** is real but small: 60/1,447 (4.1%).
* **The residue is not concentrated** -- 92% structurally unique, 63% over 100
  lines. The easy functions are drained; any "days to completion" figure from a
  current rate is a best case.

---

## 6. Stale CLAUDE.md numbers to correct

| claim | says | actually |
|---|---|---|
| N.3 dedup | 1,639 unmatched in 431 groups, one 63-member | 761 in 249, largest 21 |
| T.1 `M2C_ERROR` | driven 1,639 -> 5 | 5 is a STORED count; live regeneration gives **114/1,837 (6.2%)** |
| K, m2c throughput | ~5s/fn, 6 workers -> 328/min | **476/min** measured today |
| Phase 3 raw bytes | per `map_raw_regions.py` | under-reports **1000x** |
| Phase 3, the 84KB blob | "custom/packed, do not pursue" | **solved** (§3.1) |
| formats README | custom codec is a dead end | measured with a broken decoder (§3.2) |
| "Where this could lead" | finish the decomp first | gbarecomp wants a symbol map (§4) |
| H's "irreducible ceiling" | m2c backend weakness | 77.8% is one fixable defect (§2.1) |

---

## 7. Pending human decisions

1. **13 matched functions** sit uncommitted in a detached worktree
   (`scratchpad/wt`), each verified with a from-scratch build + clean layout.
   21 files, 101 insertions / 458 deletions. Needs review and a deliberate
   commit. `sub_8089A04` was correctly DECLINED -- a live trailing-data landmine
   instance, left guarded with a warning comment.
2. **The disputed `assets/manifest.json` BIOS-RLE entry** (§3.2) and an audit of
   the other 74.
3. **Whether to commit these six review docs** to the fork.
4. **`sub_8082E1C`** -- 1,167 callers, the highest single-function leverage in
   the ROM. A 700-line function that deserves its own dedicated session.

---

## 8. The law, restated, because this session added four more instances

*When throughput disagrees with effort in this project, suspect the instrument
before the code.* New this session:

* `map_raw_regions.py` under-reporting by 1000x
* `try_custom_decomp.py`'s three defects invalidating a documented negative
* T.1's `M2C_ERROR` count being stored-not-live, off by 23x
* **my own first pass at the tier2 overrun measurement, wrong by 10x** because
  the launch/terminal pairing spanned factory restarts

Every one failed in the same direction: correct work reported as broken. None
could ever produce a false MATCH, because the from-scratch ROM sha1 gate makes
that impossible. That asymmetry is why these survive -- a false negative is
indistinguishable from a hard function, and this corpus has thousands of genuinely
hard functions to hide among.

Corollary that earned its place today: **a tool's own success number is not the
result, and neither is a five-minute-old measurement of your own.**
