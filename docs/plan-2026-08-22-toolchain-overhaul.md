# Plan: toolchain overhaul (2026-08-22)

> **SUPERSEDED IN PART, 2026-08-23.** Read this header before acting on
> anything below. Phases 0, 2 and 3 are DONE; Phase 1 was largely obsoleted by
> a cheaper route; Phase 4 is half done; Phase 5 changed shape entirely once it
> was measured. What actually happened, and what is left, is recorded in
> CLAUDE.md sections **T.1 - T.15**, which are the authority. The phase text
> below is kept because the *reasoning* is still worth reading, not because the
> instructions are current.
>
> | phase | status |
> |---|---|
> | 0 requeue dead seeds | **done** -- 1,624 requeued, M2C_ERROR bodies 1,639 -> 5 |
> | 1 scoring out of the shared TU | **obsoleted** -- `isolation_exact.py` measures one symbol alone at ~2,000/min and delivered the same artifact-free number without regenerating `expected/` or adopting objdiff. See T.8, T.13. |
> | 2 compiler-variant hypothesis | **done, NEGATIVE** -- one configuration; agbcc closest for 54 of 58. T.5 |
> | 3 permuter agbcc profile | **done** -- profile landed and is under a randomised A/B (`agbcc_ab.py`, still inconclusive). Two of the three proposed passes were killed by a corpus census: 0 of 3,124 bodies declare a bitfield, 1 declares an array. T.6 |
> | 4 jump tables | **half done** -- 0 -> 49 rewritable, 6,637 instructions and 654 switch cases recovered. The residue needs `code_prefix` boundary work, not label emission. T.12 |
> | 5 fuzzy similarity | **reframed** -- propagation is nearly exhausted (12 left); the real prize was exact-shape DEDUP, 533 redundant searches, now wired into tier2 |
>
> **What was NOT in this plan and mattered more than most of it:** the
> measurement bugs. Sections T.1-T.4, T.9, T.14 and T.15 are all cases where
> correct work was being discarded by plumbing. T.15 states the pattern -- in
> this project a broken measurement always fails toward "this work is bad",
> which is why they survive.
>
> **Current live levers**, in the order I would take them:
> 1. `isolation_exact.py --apply` after any seed repair -- harvests byte-exact
>    candidates AND refreshes the ranking. Cheapest yield in the repo.
> 2. `asmlift_bridge.py` -- a second programmatic seeder for the pile m2c
>    cannot seed. 12% pile-wide (143 of 1,200), 2 byte-exact; 27% and 8
>    byte-exact on a SMALLEST-FIRST sample, which is not representative -- its
>    value is concentrated in small functions. Needs Node installed.
> 3. m2c's remaining type-inference failures: `invalid type argument` (102),
>    `invalid use of void expression` (69). `fix_bare_deref.py` addresses part
>    of this by enumerating widths against the byte oracle.
> 4. The jump-table residue, which needs real code/data boundary work.


Status: **proposed, not started.** Written while the factory was live and a
`rescue_isolated_zeros.py --all-on-disk` harvest was draining, so nothing here
has been applied. Every number below was measured on this repo on 2026-08-22
against `.claude/factory/state.db` and `asm/nonmatching/`, or reproduced in a
scratch container. Where something is a hypothesis it says so.

Companion review (the argument for why this is the right work):
`https://claude.ai/code/artifact/1d3bb5e6-c284-466d-9bfa-f2597b9d5f26`

---

## 0. What this plan is reacting to

Ten measurement/plumbing bugs have each been worth hundreds of matches
(CLAUDE.md sections D, F, I, M, N.1, N.4a, O.2, P, Q, R). The attribution table
below is the reason this plan targets instruments and seeds rather than search.

Matched rows by `candidate_source`, live DB, n=1,156:

| source | matches | share | what it is |
|---|---:|---:|---|
| `rescore` | 415 | 36% | seed already matched; only the score was wrong |
| `permuter` | 278 | 24% | stochastic search |
| `m2c` | 186 | 16% | deterministic seed, matched as generated |
| `twin` | 130 | 11% | cross-function propagation, no search |
| `tier2` | 101 | 9% | search + splice |
| (null/bench) | 46 | 4% | unattributed |

**47% came from `rescore` + `twin`** — repairing a measurement and propagating
across functions, with zero new search. 64% came from something other than the
permuter finding an answer. On 2026-08-23 the factory logged 199 `t2_launch`
events and 233 matches: more matches than searches.

---

## 1. Findings from this pass

Numbered continuing from CLAUDE.md's sections. F11 is in the review artifact;
F12–F15 are new here.

### F11 — 1,639 rows are frozen holding a dead seed

`tier_m2c._claim()` reads only `needs_attempt`, then `stalled`. **Nothing claims
from `tier2_ready`.** Once a row is seeded and promoted, its `candidate_body` is
frozen for life, even when the seeder improves.

Section J's `ldsh`/`ldsb` patch is applied and working (`arch_arm.py:137`).
Section N.1's `ruleset_version()` fix is in place. Neither reaches rows that had
already moved on.

- 1,639 rows still store a body containing `M2C_ERROR` — 6,905 `ldsh`, 592 `ldsb`
- **863 of them sit in `tier2_ready`**, being fed to the permuter as candidates
- **596 permuter launches (9.4% of all 6,335)** already spent on code that cannot compile
- 243 of the 1,639 are under 60 lines

Smallest case, currently parked at score 210:

```
asm/nonmatching/sub_8158308.s        stored body: M2C_ERROR(ldsh ...)
    movs r1, #0x1C                   m2c today:  return M2C_FIELD(arg0, s16 *, 0x1C);
    ldsh r0, [r0, r1]
    bx lr
```

This is section D's law ("any tier that declines work must leave something able
to reclaim it") applied to the **promote** path instead of the decline path.

### F12 — m2c's instruction coverage is not the problem (negative result)

Ran current, patched m2c over a random 600 of the 4,806 unmatched fragments:

- **580/600 (96.7%) produce output with no `M2C_ERROR` at all**
- 38 `Read from unset register`, across ~9 functions
- 3 `unknown instruction: swi` (BIOS veneers, known, tiny)
- 11 hard failures, **all of them jump tables**

The corpus uses 63 distinct mnemonics and m2c handles essentially all of them,
including pre-UAL spellings, `.n`/`.w` narrow suffixes and condition codes
(`parse_suffix`, `normalize_instruction`).

**Do not spend time adding instructions to m2c.** That work is done. The
remaining m2c gap is output *quality* and jump tables, not coverage.

### F13 — the jump-table path is where m2c actually fails, and it is mechanical

`tools/decode_jumptable.py --all` reports **181 candidates, 0 currently
rewritable.** The refusal breakdown is not what the summary suggests:

| refusal | count | real? |
|---|---:|---|
| `rewritten does not assemble` | 83 | **yes — this is the work** |
| `... is not a .4byte 0xADDR literal pool entry` | ~90 | **no — already converted** |
| `bytes differ` | 4 | yes, genuine decode bug |
| `no mov pc, rX dispatch found` | 3 | no (`__divsi3`, `__modsi3`, `nullsub_1`) |
| `table not inside any raw .byte run` | 2 | yes |
| `original does not assemble` | 1 | tooling/tempfile race |

The ~90 "not a `.4byte 0xADDR`" entries are **idempotency false-positives in the
report**: those fragments were already rewritten by a previous run, so their pool
entry now reads `.4byte lbl_0816AEE8` (a symbol) instead of `.4byte 0x...`.
Verified on `sub_816AE5C`. The tool is idempotent; its *reporting* is not, which
makes the remaining work look ~2x larger than it is.

The 83 real failures have three distinct mechanical causes:

1. **`unresolved symbol '_08xxxxxx' (not defined in this fragment)`** — the
   dominant one. Section O.1's guardrail firing correctly: a case target lives in
   a neighbouring fragment. Today this is a hard refusal (O.1 dropped 16
   functions this way). It does not have to be: the linker resolves cross-object
   references through `--just-symbols=symbols.txt` already, which is exactly the
   mechanism CLAUDE.md documents for `room_props_table`. The verifier refuses
   because *it* cannot resolve the symbol, not because the build cannot.
   **This is the "verifier weaker than the gate" pattern inverted — a verifier
   *stricter* than the gate, which silently discards valid work.**
2. **`symbol '_080F36E4' is already defined`** — duplicate label emission when a
   target coincides with an existing label. Straightforward rewriter bug.
3. **`invalid offset, target not word aligned`** — emitted `.4byte` table lands
   at a non-word boundary. Related to the alignment issue already understood in
   CLAUDE.md's `split_func.py` entry.

Plus 4 `bytes differ` cases where **lengths are equal** (1988 vs 1988, 2084 vs
2084, 2256 vs 2256, 2428 vs 2428) — a systematic encoding difference, not a
size/boundary problem. Worth one careful look; a single fix likely covers all 4.

### F14 — decomp-permuter has no agbcc profile, and three measured levers have no mutation at all

`default_weights.toml` defines exactly four profiles: `[base]`, `[ido]`,
`[mwcc]`, `[gcc]`. There is **no ARM or agbcc profile**. Every generated
`nonmatchings/*/settings.toml` in this repo sets `compiler_type = "gcc"`, and
every `[weight_overrides]` block is commented out. The `[gcc]` profile's own
comment reads: *"The following passes were originally written with IDO in mind
and are not beneficial for GCC."*

So all ~6,335 searches this project has run used weights derived for MIPS.

Cross-referencing the 33 `RANDOMIZATION_PASSES` against Klonoa's
ablation-measured agbcc levers
(`docs/learnings/agbcc-source-shape-levers.md` in `kl-eod-decomp`):

| agbcc lever (measured by Klonoa) | permuter pass | status |
|---|---|---|
| 1. named `extern` vs cast address constant | — | **no pass exists** |
| 2. multi-dimensional array shape | — | **no pass exists** (`perm_randomize_internal_type` requires `ca.TypeDecl`, skipping arrays) |
| 3. bitfield group container type (`u8` vs `u32`) | — | **no pass exists** (`bitsize`/`bitfield` appear 0 times in `randomizer.py`) |
| 4. cache global in local vs re-read | `perm_temp_for_expr` (w=100) | partial — introduces temps, never removes a cache to force a re-read |
| 5. operand order | `perm_commutative` (w=5) | covered but underweighted; Klonoa measured 19–33 points from this on agbcc |
| 6. intermediate width | `perm_randomize_internal_type` (w=10) | covered |
| 7. stack slot order | `perm_reorder_decls` (w=10), `perm_pad_var_decl` (w=1) | weak; agbcc orders slots by **size**, not declaration order |

Lever 1 is Klonoa's highest-value single lever and is unrepresented.
**734 of our stored candidates carry 2,116 raw `0x08xxxxxx` constants.**

### F15 — three compiler binaries ship in our toolchain and one is ever used

`tools/agbcc/bin/` contains `agbcc`, `old_agbcc`, and `agbcc_arm`. The Makefile
sets `CC1 := tools/agbcc/bin/agbcc` and nothing else is ever invoked.

Reproduced in a scratch container, same source, same flags:

- **`old_agbcc` vs `agbcc` differ** in register allocation, operand order
  (`add r7, r7, r0` vs `add r7, r0, r7`), **and literal-pool ordering**
  (`.word gTable` emitted before vs after a sibling word). They differ on a
  trivial leaf function too, not only on complex ones.
- **`-fprologue-bugfix` is supported and changes output on leaf functions**
  (its actual purpose — leaf functions without `push lr`).
- `-fhex-asm` and `-mlong-calls` are supported; `-ftst` is not (Klonoa's
  `old_agbcc` build has it, ours does not).

Literal-pool ordering is a **whole-function property that no amount of C-level
permutation can fix.** If any part of MLSS was built with a different variant,
those functions are structurally unmatchable today regardless of how correct the
C is — and they would present exactly as CLAUDE.md section R's residue: a high
score, identical under both build modes, permuter never converging.

Precedent: Klonoa compiles its `m4a` module with `old_agbcc -ftst` and has
**per-function** `-fprologue-bugfix` translation units. pokeemerald does
similarly. MLSS contains m4a code and assumes a single configuration everywhere.

**This is a hypothesis, not a result.** It is cheap to falsify — see Phase 2.

---

## 2. The plan

Ordered by measured value per hour. Phases 0–1 are independent; 2–4 depend on 1
having landed so their results are measured with a trustworthy instrument.

### Phase 0 — requeue the dead seeds (hours)

**Do after the harvest completes, under `gitops.repo_lock()`, then restart the
factory** so workers pick up the reaper fix.

1. Requeue every row whose `candidate_body` contains `M2C_ERROR`: null
   `candidate_body`, `best_score`, `notes`; set `state='needs_attempt'`.
   Expect ~1,639 rows, freeing 863 permuter slots.
2. Drain `tier_m2c` at the 6-worker parallelism section K established
   (~328 functions/min, so minutes not hours).
3. **Close the hole structurally:** let the seeder reclaim `tier2_ready` rows
   whose stored body predates the current `ruleset_version()`. Without this,
   the next m2c improvement strands another cohort the same way.

Acceptance: zero rows in any state hold an `M2C_ERROR` body; `t2_launch` events
on non-compiling seeds go to zero.

Risk: low. Requeueing cannot lose work — the fragment is the source of truth and
the seed is regenerable.

### Phase 1 — take the shared translation unit out of the measurement path (days)

The single highest-leverage item. Six of the eleven findings (D, F, I, M, N.4a,
P) are downstream of two decisions: `expected/` is copied from our own build, and
`diff_settings.py` forces `make NONMATCHING=1`.

Adopt the Mizuchi/Klonoa shape:

1. **Generate `expected/` from the retail ROM**, cutting objects at symbol
   addresses, the way `kl-eod-decomp/scripts/generate_expected.py` does — instead
   of `shutil.copytree(build, expected)`. Result: never stale, never poisoned by
   a `NONMATCHING` object, immune to extraction, and the manual refresh ritual
   disappears along with the landmine that documents it.
2. **Score one symbol, not one object.** Adopt `objdiff-cli`, which has native
   ARMv4T support — Klonoa drives it with `arm.archVersion: "v4t"` and
   `functionRelocDiffs: "none"`. This removes N.4a's positional artifact by
   construction rather than by correction.
3. **Compile candidates in isolation for scoring**: `ctx + one candidate` → one
   object, the way `mizuchi.yaml`'s `compilerScript` does. Translation-unit
   poisoning cannot affect a measurement taken this way, which retires section
   I's "compiles in isolation" workaround as a special case.
4. `finish_match()`'s from-scratch build + ROM SHA-1 stays the only verdict.
   **This changes the pre-gate, never the gate.**

Acceptance: `audit_instruments.py`'s `score instrument` check reports 0/10 drift
on two consecutive runs a day apart, without anyone re-scoring by hand.

Risk: medium — it is a real refactor of the scoring path. Mitigated by keeping
`finish_match()` untouched, so the worst case is a worse pre-filter, never a
wrong match.

### Phase 2 — falsify or confirm the compiler-variant hypothesis (1 day)

Cheap, decisive, and blocks nothing.

1. **Control:** recompile ~50 already-matched functions' committed C with
   `agbcc -fprologue-bugfix`, `old_agbcc`, and `old_agbcc -fprologue-bugfix`.
   They should score *worse* under the alternates. If they do not, the variants
   are indistinguishable for our code and the hypothesis dies here.
2. **Test:** take the never-converging band — section R's rows that score
   identically under both build modes, plus `needs_human` — and score their best
   candidate under each variant.
3. If any variant wins decisively for a cluster of functions, add a per-object
   compiler selection to the Makefile (Klonoa's `m4a_1.c` / `m4a_nopush_*.c`
   pattern is the reference) and record the boundary in `tools/splits.yaml`.

Acceptance: a written yes/no with the score table attached, either way. A clean
negative is a real result and retires a whole class of speculation.

Risk: low, and it is read-only until step 3.

### Phase 3 — give decomp-permuter an agbcc profile and the three missing passes (days)

Local to our fork; nothing goes upstream (maintainer's standing decision).

1. **Add an `[agbcc]` profile** to `default_weights.toml` and have
   `tools/permute.py` emit `compiler_type = "agbcc"`. Start from `[base]`, not
   `[gcc]`, and raise `perm_commutative` — Klonoa measured operand order at 19–33
   points on this compiler, and it currently sits at weight 5 in a profile tuned
   for MIPS.
2. **Add `perm_array_shape`** — mutate array dimensionality and flat-vs-multi-dim
   spelling. Klonoa: declaring dimensions folds `+1` into the symbol; a 2-byte
   struct cannot express it at all because ARM pads `STRUCTURE_SIZE_BOUNDARY` to 4.
3. **Add `perm_bitfield_container`** — flip a bitfield group's container type
   between `u8`/`u16`/`u32`. Klonoa swept 71 combinations: under `u8` the CSE form
   fires 0 times, under `u32` it fires 60 of 71. Zero current coverage.
4. **Add `perm_symbol_vs_constant`** — swap `((T *)0x08057ACC)` for a named
   `extern` and back. This is the one pass that needs *project* knowledge
   (`tools/symbols/rom.txt`), which is precisely why it belongs in our fork and
   not upstream. 734 candidates are exposed to it.
5. Re-measure hit rate against the 15.6% baseline over a fixed function set.

Acceptance: a measured before/after hit rate on the same seed set. If the new
passes do not beat 15.6%, revert them — they are cheap to try and cheap to drop.

Risk: low. Passes are additive and weight-gated; a useless pass costs iterations,
not correctness.

### Phase 4 — finish the jump-table class (days)

181 candidates, currently 0 rewritable, and every one of them is a function m2c
refuses outright.

1. Fix the report's idempotency false-positive so the remaining work is legible
   (treat `.4byte <symbol>` as *already done*, not as a refusal).
2. Allow cross-fragment case targets by emitting a linker-resolved reference
   rather than requiring local resolution. This is the O.1 guardrail relaxed to
   match what the real build can actually do — with the from-scratch build still
   the gate, so a genuinely unresolvable symbol fails loudly as it did before.
3. Fix duplicate-label emission and the non-word-aligned table offset.
4. Investigate the 4 equal-length `bytes differ` cases as one bug.
5. **Requeue every rewritten function** — section O.2: `ruleset_version()` does
   not hash the disassembly, so changing a fragment's content leaves its rows
   stamped shut.

Acceptance: candidates rewritten > 100, and the newly-seeded switch functions
tracked to see whether they actually convert (section O flagged that this was
never checked for the first 79).

### Phase 5 — fuzzy similarity (days)

Measured on our own fragments: exact opcode-sequence grouping covers **133**
unmatched functions; loosening to ≥85% similarity covers **1,784 — 37.3% of the
unmatched pool.** A 13× larger surface.

1. Generalise `twins.py` from an exact md5 of the normalised instruction stream
   to thresholded distance over opcode sequences (`ethteck/coddog` is the
   reference implementation; it also does *partial*-function matching).
2. Index the **1,156 matched functions** as the reference corpus so an unmatched
   function retrieves the nearest already-solved C. Their fragments are deleted
   by workflow step 7, so recover them from git history the way
   `twin_backfill.py` already does.
3. Wire dedup into tier2's claim logic — `twins.py`'s own docstring lists this as
   exploit #1 and it is still not done; one 63-member shape group currently gets
   63 separate searches.

Acceptance: permuter launches per *distinct shape* drops; twin propagation
candidates rise above the 236 that `twin_backfill` found with exact matching.

---

## 3. Explicitly not doing

- **Bulk frontier-LLM decompilation.** The 74% Mizuchi benchmark is real, and
  cost still rules it out at ~4,800 functions on a Pro plan. The transferable
  part is the *context* those pipelines build (retrieval, `ctx.c`, similar-function
  references) — Phases 1, 3 and 5 deliver that to the deterministic tooling.
- **Contributing anything upstream to m2c or decomp-permuter.** Standing
  maintainer decision. Local patches only, held in `tools/m2c_patches/` for m2c;
  Phase 3 needs the same treatment for the permuter fork.
- **Adding the `+0x4C` struct (or any struct) to `include/common.h`.** Settled by
  section S: agbcc's `-ffix-debug-line` breaks the build from a position-dependent
  site and blames `asm/macros.inc`, which is innocent. If it is ever wanted, it
  goes inline into seeds via `m2c_bridge`.
- **Adding instructions to m2c.** F12: coverage is 96.7% clean. Done.
- **Declaring any new ceiling before Phase 1 lands.** Section H called m2c's
  backend the ceiling; section O overturned it. Section R's above-20,000 band is
  still read through the instrument Phase 1 replaces.

---

## 4. Open questions

- Does MLSS actually contain more than one compiler configuration? (Phase 2
  answers this. A clean "no" is valuable.)
- Do the 79 switch functions seeded by the first `decode_jumptable` pass convert?
  Never checked.
- The 16 `needs_human` + ~30 `batch_validate` rows filed as "asm-differ said
  match but from-scratch build FAILED": Klonoa measured agbcc changing a function
  **1,833 lines further down the same `.c`** while the edited function stayed
  byte-identical. That is the signature. `finish_match()` catches it correctly —
  these are translation-unit coupling, not corruption, and need a different
  remedy than re-searching. Worth adding to CLAUDE.md's landmine list.
- `agbcc_arm` is unused and `asm/text08000000.s` has ~11.7KB of genuine ARM crt0.
  Not urgent, but it is the only path to that region.

---

## 5. References

- Klonoa: Empire of Dreams decomp — `github.com/Dream-Atelier/kl-eod-decomp`
  (clone at `~/Desktop/mlss-reference/kl-eod-decomp`). Read
  `docs/learnings/agbcc-source-shape-levers.md` and `agbcc-asm-barriers.md`
  before writing any deterministic rule; both are ablation-measured on our exact
  compiler.
- Mizuchi — `github.com/macabeus/mizuchi` (clone at `~/Desktop/mlss-reference/mizuchi`).
  See `mizuchi.yaml` for the isolated-compile + objdiff-per-symbol shape.
- "Starting a Decompilation Project from Zero" — gambiconf.substack.com
- "Can LLMs Really Do Matching Decompilation?" — gambiconf.substack.com
  (SA3/GBA: m2c + permuter alone matched 0/30; full pipeline 74%)
- "The Long Tail of LLM-Assisted Decompilation" — blog.chrislewis.au
  (similarity scheduling 58% → 75%; permuter removed for "doom loops")
- `github.com/ethteck/coddog` — fuzzy/partial function similarity
- `github.com/encounter/objdiff` — per-symbol diffing, native ARMv4T
- Other ARM permuter forks worth diffing against ours:
  `DTeachs/decomp-permuter-arm`, `laqieer/decomp-permuter-arm`
