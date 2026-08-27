# Local decomp-permuter patches - NOT for upstream

Changes to the pinned `tools/decomp-permuter` submodule
(`WhenGryphonsFly/decomp-permuter-agbcc`) that this project needs and that are
**deliberately kept local**. Same standing decision as `tools/m2c_patches/`:
nothing here is contributed back, and nothing is pushed to that repository.

A submodule is tracked by commit SHA, not by content, so edits to its working
tree are invisible to this repo's history and are **lost on any
`git submodule update`**. Keeping them as patches puts them under version
control *here* without entangling anything with upstream.

## Applying

    ./tools/permuter_patches/apply.sh

Idempotent - it checks whether each patch is already applied and skips it. Run
it after `git submodule update`, after a fresh clone, or if the permuter starts
failing with `Unable to find compiler type agbcc in default_weights.toml`.

## 0001 - the agbcc randomization profile

`default_weights.toml` ships four profiles: `[base]`, `[ido]`, `[mwcc]`,
`[gcc]`. **There is no ARM or agbcc profile**, and `permuter_settings.toml`
used to select `"gcc"` - whose own comment in that file reads *"The following
passes were originally written with IDO in mind and are not beneficial for
GCC."* So roughly 6,300 searches in this project ran MIPS-derived weights
against ARM/Thumb code.

The patch adds `[agbcc]`. Profiles override `[base]` key-by-key
(`helpers.merge_randomization_weights`), so it only carries deltas. Every line
has a stated reason, from one of two sources:

* **K** - ablation-measured on agbcc by the Klonoa: Empire of Dreams decomp,
  `docs/learnings/agbcc-source-shape-levers.md`. Same compiler, same target,
  each entry established by reverting exactly one thing and recording the
  score.
* **C** - a census of this project's own 3,124 stored m2c candidate bodies.

| pass | base | agbcc | why |
|---|---:|---:|---|
| `perm_commutative` | 5 | **30** | K: operand order is one of the strongest agbcc levers - writing the varying index term first suppresses strength reduction (19 pts), and multiplication order was the entire remaining gap on `LoadBGTileData` |
| `perm_cast_simple` | 10 | **25** | C: 2,983 of 3,124 bodies (95%) are built from explicit `*(TYPE *)(base + off)` casts - m2c emits flat pointer arithmetic, so cast spelling is the dominant mutable surface |
| `perm_randomize_internal_type` | 10 | **20** | K: intermediate width decides pool-load vs synthesise; `s32` -> `u16` alone took `StreamCmd_DisableVBlankAndStopMusic` from 18 to byte-exact |
| `perm_struct_ref` | 10 | **0.5** | C: **0** of 3,124 bodies contain a struct definition |
| `perm_float_literal` | 3 | **0.5** | C: **0** of 3,124 bodies mention `float`/`double`; fixed-point code, no hardware FP |
| `perm_add_mask` | 15 | **0.5** | upstream `[gcc]`: IDO-specific |
| `perm_xor_zero` | 10 | **0.5** | upstream `[gcc]`: IDO-specific |
| `perm_refer_to_var` | 10 | **0.5** | upstream `[gcc]`: IDO-specific |
| `perm_sameline` | 3 | **0.5** | upstream `[gcc]`: IDO-specific |
| `perm_empty_stmt` | 10 | **0.5** | upstream `[gcc]`: IDO-specific |
| `perm_condition` | 10 | **0.5** | upstream `[gcc]`: IDO-specific |

`perm_temp_for_expr` stays at 100 deliberately: it is the mutation that
introduces and removes value caching, and K's lever 4 ("do not cache a global
in a local", inverted for MMIO) is exactly that axis.

### What was considered and NOT added, and why

Two of K's measured levers have **no** corresponding pass in the permuter, and
building them was rejected on a census rather than on principle:

* **bitfield group container type** (`u8` vs `u32` - K swept 71 combinations;
  under `u8` the CSE form fires 0 times, under `u32` 60 of 71). `bitsize` and
  `bitfield` appear **zero** times in `randomizer.py`, so this is genuinely
  unrepresented - but **0 of 3,124** of our candidate bodies declare a
  bitfield. Nothing to act on.
* **multi-dimensional array shape** (K: declaring dimensions folds `+1` into
  the symbol; a 2-byte struct cannot express it because ARM pads
  `STRUCTURE_SIZE_BOUNDARY` to 4). `perm_randomize_internal_type` requires
  `isinstance(decl.type, ca.TypeDecl)`, so it skips arrays entirely - again
  genuinely unrepresented, and again **1 of 3,124** bodies declares an array.

Both become worth building only if seed generation starts emitting structs and
arrays instead of flat casts. Recorded here so the next person does not
re-derive the same two dead ends.

The one lever that *is* both measured and applicable is K's highest-value one -
a named `extern` versus a cast address constant, which are numerically
identical and compile differently (20-29 points across four functions). **561
of our candidate bodies carry a raw `0x08xxxxxx` constant.** No pass exists,
and one would need project knowledge (`tools/symbols/rom.txt`) to know which
address is which symbol - which is exactly why it belongs in this fork rather
than upstream. Not yet written.

## Measuring whether this helped

The honest baseline is CLAUDE.md's measured **15.6% convergence** (1,780
launches -> 278 converged over 24h). Weights cannot affect correctness - only
how fast the search finds an answer - so the risk of landing this is bounded
to search efficiency. Compare `t2_launch` against `converged` per hour out of
the events table, the same way CLAUDE.md section F recommends, over a window
long enough to matter.

Note that existing `nonmatchings/<name>/settings.toml` directories still carry
`compiler_type = "gcc"` baked in from when they were imported. `tools/permute.py`
regenerates them, so a function re-isolated after this change picks up
`"agbcc"`; ones left over from before do not.

## 0002 - diff-directed randomization weights

`scorer.py`'s `Scorer.score()` already classifies every scored candidate's
diff into stack/regalloc/reordering/insertion/deletion penalties before
collapsing them into one scalar for the search loop -- the breakdown was
computed on every single iteration and then thrown away. Mutation selection
had no way to tell "this function's gap is almost entirely register
allocation" from "this function is structurally wrong", so it spent equal
probability on cast/type mutations (relevant to the second case) even when
the first was true, and vice versa.

Measured on this project's own corpus, not assumed: classifying 107 real
near-miss candidates' diffs by objdump column, ~70% of differing instructions
were pure register allocation (same opcode, same operand shape, different
register), ~30% were a genuinely wrong opcode or immediate. No permuter
mutation fixes a wrong constant; no cast-guessing mutation fixes a register
choice. They need different mutation strategies, and the tool already had the
right passes for both (`perm_reorder_decls`/`perm_temp_for_expr` for the
first, `perm_ins_block`/`perm_remove_ast`/`perm_condition` for the second) --
it just had no way to pick between them per function.

The patch stashes the breakdown as `Scorer.last_penalties` (additive: the
`score()` return signature is untouched, so nothing else needed to change),
then `Permuter.__init__` reads it ONCE, right after the base candidate is
scored, and biases `randomization_weights` for the whole search accordingly.
Classification uses the SAME `PENALTY_*` weights the scorer itself uses for
the score (not raw instruction counts) -- a single insertion/deletion is
worth 100 points, a regalloc mismatch 5, so "which category actually drives
the number down" is not the same question as "which category has the most
instructions", and only the first one is the right thing to bias on. Below a
50% share, no category clearly dominates and the corpus-tuned `[agbcc]`
weights are left alone rather than biasing on a weak signal.

ONCE, not per-iteration across all workers: workers are forked (Linux
default) after this runs, so every worker inherits the adjusted weights with
no cross-process synchronization needed. A per-iteration version would need
that synchronization for a benefit nobody has measured yet.

Purely a WEIGHT change, and this is the property that bounds its risk to
search efficiency, same as 0001: it can only change which existing pass gets
tried more often, never what a mutation does or whether a wrong mutation
becomes "valid" -- every candidate still goes through the identical
compile-and-score gate. Verified end to end via the real CLI (`permuter.py
-j 2`, not just direct construction): 1,789 real iterations in 25s against
`nonmatchings/sub_8053FC4`, no crash, base score reproduced exactly
(315, matching a direct-construction test), search explored down to 245.

Not yet measured over a real multi-hour production window -- see "Measuring
whether this helped" above; the same `t2_launch` vs `converged` comparison
applies here.
