# Hand-decompilation & readability track — scoping and worked examples

**Date:** 2026-08-23 · **Baseline:** 1,578 matched / 5,996 (26.3%)
**Status:** IN PROGRESS — this file is appended to as findings land.

## Where the work is happening

The main tree had another agent running m2c concurrently (m2c.py processes live,
`.claude/factory/repo.lock` present) so per CLAUDE.md's contention landmine all
building was done in an **isolated detached worktree**:

    /tmp/claude-1000/-home-tyler-Desktop-mlss/83e8aafe-.../scratchpad/wt

Nothing is committed. Source changes live in that worktree's `src/` and are
listed at the end of this file so they can be replayed into the main tree.

**Useful measured fact:** a full `rm -rf build/ && ./container.sh make` in this
repo is **24.5 seconds**. The from-scratch gate — the only trustworthy one per
CLAUDE.md — is not a bottleneck for hand work. Verify every single time.

---

## 1. Scoping: how big is the human class, really?

Straight from `.claude/factory/state.db` (4,406 unmatched, excluding `excluded`):

| bucket | n | who owns it |
|---|---:|---|
| has an `iso_score` (a candidate that compiles alone and has been measured) | 2,693 | the factory |
| has a `candidate_body` but **no** `iso_score` (m2c produced C, it does not compile) | 734 | **human** |
| has **no candidate_body at all** (m2c declined or errored) | 979 | **human** |

So the hand class is **1,713 functions (38.9% of the remainder)**. That is the
answer to "nobody has scoped it". The dominant recorded reason:

    m2c:088abf4b: produced output but it doesn't compile   1,470
    m2c:088abf4b: declined (outside translation coverage)      75

Within the *measured* 2,693, another band is also effectively human work: 35 rows
score above 1,024 bytes of isolation distance and 427 sit in 257–1024 — section R
established that band is dominated by genuinely-far C, not a scoring artifact.

Conversely **32 rows already sit at `iso_score = 0`** — byte-exact in isolation.
Those are *not* human work; they are `isolation_exact.py --apply` /
`rescue_isolated_zeros.py` harvest and belong to the factory agent's lane. Flagged
here so nobody hand-writes C for a function that is already finished.

## 2. The ranked hand-decomp worklist

Ranking axes, in the order they actually pay:

1. **Call-graph centrality** — an unmatched callee with many callers is a
   signature every one of those callers' seeds currently has to guess at.
2. **Twin-group size** — one hand match seeds `twin_backfill.py` for N others.
   That mechanism has already produced 130 matches with zero search.
3. **`iso_score` (never `best_score`)** — artifact-free byte distance, per N.4a.
4. **Subsystem coherence** — a cluster done as a unit shares its type discoveries.

### 2a. Centrality — the top of the whole ROM

Computed over 12,356 call edges. `in` = distinct callers.

| in-deg | function | lines | iso | note |
|---:|---|---:|---|---|
| **1167** | `sub_8082E1C` | 702 | — | **the single most-called unmatched function in the game.** No seed. |
| **753** | `play_sfx_80195B4` | 36 | — | ✅ **MATCHED this session** (see §3) |
| 403 | `sub_80DF024` | 189 | — | no seed |
| 309 | `sub_80841B8` | 27 | 196 | ⚠ fragment carries ~200 bytes of real unlabeled trailing code |
| 309 | `sub_807F9A8` | 55 | 98 | |
| 309 | `sub_807C564` | 191 | 304 | |
| 277 | `sub_808843C` | 61 | 100 | |
| 218 | `__divsi3` | 88 | 92 | libgcc — retail-known source exists upstream |
| 210 | `sub_8199F30` | 262 | 503 | |
| 193 | `sub_8085B38` | 162 | — | no seed |
| 181 | `sub_81DD77C` | 6 | — | 6 lines, 181 callers — trivial, no seed |
| 169 | `sub_807C298` | 176 | 302 | |
| 167 | `sub_8087CE4` | 136 | — | no seed |
| 155 | `sub_80880C4` | 80 | — | no seed |
| 153 | `sub_801E150` | 336 | — | no seed |
| 120 | `sub_807BF34` | 201 | — | no seed; named in CLAUDE.md's NONMATCHING-link landmine |
| 120 | `sub_80FBD44` | 83 | 124 | |
| 110 | `sub_807F4FC` | 31 | 11 | ✅ **MATCHED this session** (see §3) |
| 103 | `sub_80884AC` | 50 | 85 | |
| 96 | `sub_8088164` | 135 | — | no seed |

**Knock-on effect, concretely:** CLAUDE.md T.16 measured that a seed needs *every*
callee's signature known, and callee coverage was 7.6% at 25.6% matched — which is
why the `--context` lever keeps failing. Coverage is not uniform: these ~20
functions account for a wildly disproportionate share of all call sites. Matching
`sub_8082E1C` alone puts a correct signature in front of **1,167** functions'
seeds. That is the one intervention that could move T.16's callee-coverage number
without matching thousands of functions first.

**Recommended order within centrality:** take the *small* ones first
(`sub_81DD77C` 6 lines/181 callers, `sub_80841B8` 27/309, `sub_807F9A8` 55/309,
`sub_80884AC` 50/103, `sub_808843C` 61/277), because they are cheap and their
signatures propagate immediately. Save `sub_8082E1C` (702 lines) for a dedicated
session — it is the highest-value single function in the project and deserves one.

### 2b. Twin groups — one hand match, N free

85 shape-hash groups hold **436 unmatched functions in groups of ≥3 with ZERO
matched member**. Each such group is currently getting N independent permuter
searches for one shape (CLAUDE.md N.3 flags exactly this: "one 63-member shape
group currently gets 63 separate permuter searches"). Hand-match the cheapest
member, then run `twin_backfill.py`.

| unmatched in group | lines | cheapest member | its iso |
|---:|---:|---|---:|
| 21 | 142 | `sub_8192E58` | 265 |
| 13 | 317 | `sub_818F0A8` | 650 |
| 12 | 108 | `sub_808CDD4` | 201 |
| 12 | 56 | `sub_808DF5C` | 88 |
| 12 | 59 | `sub_80A1628` | — |
| 12 | 55 | `sub_808DEEC` | 85 |
| **12** | **16** | **`sub_806A7CC`** | **2** | ← best ratio in the whole table
| 10 | 144 | `sub_8173C78` | 259 |
| 10 | 72 | `sub_8095584` | 142 |
| 9 | 22 | `sub_808C070` | 12 |
| 9 | 301 | `sub_818DD74` | — |
| 8 | 151 | `sub_818DA00` | 265 |
| 8 | 150 | `sub_8172784` | 254 |
| 6 | 40 | `sub_8079688` | 4 |
| 5 | 34 | `sub_8091CC8` | 27 |

**Highest-leverage entries by effort:** `sub_806A7CC` (16 lines, iso 2 → 12
functions), `sub_808C070` (22 lines, iso 12 → 9), `sub_8079688` (40 lines, iso 4
→ 6), `sub_8091CC8` (34 lines, iso 27 → 5). Those four are ~112 lines of hand C
for a potential **32 functions**.

### 2c. The named engine entry points

These are the functions where matching buys *understanding*, not just count. All
of them are already extracted; almost all have **no compiling seed** (iso `—`),
confirming they are exactly the human class.

Ordered by size, because size is the honest proxy for effort here:

| lines | function | iso | subsystem |
|---:|---|---|---|
| 36 | `play_sfx_80195B4` | — | sound ✅ **matched this session** |
| 44 | `sprite_heap_free` | 0 | sprite heap — **iso 0, harvest not hand work** |
| 44 | `get_fobj_screen_pos` | — | field objects |
| 48 | `stage_room_solidity_grid` | — | **collision/physics** (maintainer's stated interest) |
| 49 | `get_coldef_ptr_by_xz` | — | **collision** — the open `col_set` consumer from §B |
| 49 | `memset` | — | libc |
| 52 | `strcmp` | — | libc |
| 56 | `memcpy` | — | libc |
| 69 | `free_heap_memory_8018C68` | 168 | heap |
| 77 | `sprite_heap_alloc` | — | sprite heap |
| 77 | `init_heap` | 243 | heap |
| 95 | `alloc_heap_8018CEC` | — | heap (stalled) |
| 101 | `get_surface_height_at_x` | — | **physics — the section-B solved function** |
| 111 | `bclr_update_8053778` | — | jump-table class (section T.12) |
| 125 | `stc_script_execute_next_command` | — | script VM |
| 184 | `btl_script_execute_next_command` | — | script VM |
| 219 | `script_read_next_line` | — | script VM |
| 255 | `fld_script_execute_next_command` | — | script VM |
| 286 | `make_field_objects_80267C0` | — | field |
| 329 | `start_battle_8027AC4` | 634 | battle |
| 646 | `init_fldm_8021FF8` | — | field manager |
| 2249 | `update_field_8023DD4` | — | field main loop (largest in the ROM) |

**Three coherent clusters worth doing as units:**

- **libc/libgcc (`memcpy`, `memset`, `strcmp`, `strlen`, `__divsi3`, `__modsi3`,
  `__udivsi3`, `__umodsi3`, `_muldi3`, `_lshrdi3`, `_negdi2`)** — ~11 functions.
  These are *not* game code: their source is the pinned agbcc's own libgcc/newlib.
  CLAUDE.md's Phase 3 already used `find_library_code.py` to *identify* them. The
  cheap move is to compile the real library source with the project's own flags
  and diff, rather than reverse-engineer. `__divsi3` alone has 218 callers.
- **heap (`init_heap`, `alloc_heap_8018CEC`, `free_heap_memory_8018C68`,
  `sprite_heap_alloc/free/search`)** — 6 functions, one small allocator, one
  shared data structure. Doing them together means deriving the block header
  layout once.
- **script VM (`btl_/fld_/stc_script_execute_next_command`, `script_read_next_line`,
  the `script_cmd_*` family)** — these share a command-dispatch table and an
  interpreter state struct. Deriving that struct once unlocks the whole family,
  and it is what a Harbour-Masters-style port would need most.


---

## 3. Worked examples — honest outcomes

Done in an isolated `git worktree` (main tree had another agent's m2c processes
live, so per CLAUDE.md's contention landmine all building happened at
`/tmp/claude-1000/.../scratchpad/wt`, detached HEAD at `2141e768`). **Nothing in
this section is committed** — see §5 for the exact file list to review before
committing.

The brief asked for 3-5. Twin propagation (§2b) turned 3 hand-written functions
into **13 confirmed matches** with a 14th correctly declined — worth walking
through because the declines and repairs are as informative as the matches.

### 3a. `play_sfx_80195B4` — 753 callers, the most-called function actually
attempted this session

No compiling seed existed (m2c declined it). Hand-written from the disassembly
(`asm/nonmatching/play_sfx_80195B4.s`) in ~10 minutes: a guard-flag check against
`gGameState.field_890` gating a call to the already-matched `sub_8019508`.
First attempt was **instruction-for-instruction identical** to retail
(asm-differ `-o` showed only a harmless symbol-vs-literal-pool coloring
difference, `=gGameState` vs `=0x0300034c` — same address, asm-differ just
prefers the symbolic form once one side has it).

Promoting hit a real, instructive failure: the **plain build** (no
`NONMATCHING=1`) failed with `implicit declaration of function 'sub_8019508'` —
CLAUDE.md's section N.1 exact class ("a repair measured in one build mode,
gated in the other"): the callee's declaration existed only inside a sibling's
`#else` branch, which vanishes in a plain build. Fixed by adding
`void sub_8019508(u8, u8);` at file scope in `src/sound.c`. Then:

    rm -rf build && ./container.sh make  ->  mlss.gba: OK
    ./container.sh tools/check_layout.py ->  layout OK

**Matched.** File: `src/sound.c`. Guard removed, `asm/nonmatching/play_sfx_80195B4.s` deleted.

### 3b. `sub_807F4FC` — 110 callers, iso_score 11

An m2c seed already existed and scored close (asm-differ showed one instruction
group differing: retail materializes an `& -8` mask as `movs r0,#8 / negs r0,r0`;
the seed's literal `(u8)(-8 & ...)` compiled to `movs r0,#0xF8` instead — a
genuine compiler idiom-selection difference, not a logic difference). Rather
than guess-and-check blindly, the **already-matched sibling** `sub_807F4C4` in
the same file does the identical `&= ~7` pattern one function earlier and
compiles to exactly the `movs #8; negs` retail sequence — copying its idiom
(materialize the pointer into a named `s8 *` temp before the mask, matching
agbcc's own scheduling) made the two byte-identical.

    rm -rf build && ./container.sh make  ->  mlss.gba: OK
    ./container.sh tools/check_layout.py ->  layout OK

**Matched.** File: `src/sub_807F4C4.c`.

**Lesson worth generalizing:** when a near-miss seed differs by one compiler
idiom, check whether an already-matched neighbor in the same file does the same
operation — copying its exact C shape is faster and more reliable than
permuting.

### 3c. `sub_806A7CC` — 16 lines, iso_score 2, representative of a 12-member
zero-matched twin group

First attempt (direct transcription: `void sub_806A7CC(...) { stop_sfx(...);
sub_8086C64(...); }`) was one instruction short: retail's epilogue is
`pop {r1}; bx r1` (r0 live across the pop, i.e. the function **returns** its
callee's value) where the direct transcription produced `pop {r0}; bx r0`
(dead r0). Fixed by returning the callee's result. Byte-identical after.

    rm -rf build && ./container.sh make  ->  mlss.gba: OK
    ./container.sh tools/check_layout.py ->  layout OK

**Matched.** File: `src/sub_806A77C.c`.

**Then the propagation.** `sub_806A7CC`'s shape-hash group has 12 unmatched
members, all 16 lines, all `iso_score` 2 (11 of them) or 14 (1 of them) — the
same three-instruction template (`stop_sfx_80195A8(const); return
callee(a,b,c);`) with only the immediate and the callee varying. Reading each
of the other 11 fragments directly (they had no compiling seed — empty
`#else` branches) confirmed all 11 fit the template exactly:

| function | file | const | callee | outcome |
|---|---|---|---|---|
| `sub_80899C4` | `src/sub_808862C.c` | 0x6C | `sub_8087124` | matched |
| `sub_80899E4` | `src/sub_808862C.c` | 0x6C | `sub_8086C64` | matched |
| `sub_8089A04` | `src/sub_808862C.c` | 0x6C | `sub_810DD7C` | **NOT matched — see below** |
| `sub_808A174` | `src/sub_8089BD4.c` | 0x81 | `sub_8087124` | matched |
| `sub_808A194` | `src/sub_8089BD4.c` | 0x81 | `sub_8086C64` | matched |
| `sub_808A1B4` | `src/sub_8089BD4.c` | 0x81 | `sub_810DD7C` | matched |
| `sub_80D909C` | `src/sub_80D7410.c` | 0x81 | `sub_8087124` | matched |
| `sub_80D90BC` | `src/sub_80D7410.c` | 0x81 | `sub_810DD7C` | matched |
| `sub_80DB184` | `src/sub_80DB184.c` | 0x81 | `sub_8087124` | matched |
| `sub_80DB1A4` | `src/sub_80DB184.c` | 0x81 | `sub_8086C64` | matched |
| `sub_80DB1C4` | `src/sub_80DB184.c` | 0x81 | `sub_810DD7C` | matched |

**`sub_8089A04` deliberately left unmatched — a live instance of the documented
trailing-data landmine, not an oversight.** Its fragment's tail after the real
`bx r1` is:

    .byte 0x00, 0x00, 0x01, 0x49, 0xC1, 0x64, 0x01, 0x20, 0x70, 0x47, 0x11, 0x9D, 0x08, 0x08

which decodes as `ldr r1,[pc,#4] ; str r1,[r0,#0x4C] ; movs r0,#1 ; bx lr` plus a
`.4byte 0x08089D11` literal — a real, never-labeled second function Luvdis
missed, exactly CLAUDE.md's "trailing orphaned data on the last function
extracted from a file" landmine. Writing correct C for `sub_8089A04` and
deleting its fragment (the normal step 7) would have silently dropped that
hidden function's bytes from the ROM. Left the fragment in place, guarded, with
an explicit warning comment prepended:

    @ WARNING -- DO NOT DELETE THIS FRAGMENT WHEN sub_8089A04 MATCHES. [...]

It is NOT split out as its own function in this pass (out of scope — that is
Phase 3 disassembly work, and the brief scoped this session to src/include/
hand-decomp, not asm/ splitting); flagging it here is enough to stop it being
silently lost whenever someone next touches this function.

**Compile-time repair needed for the other 10, applied by hand** (this is
CLAUDE.md's T.2/T.4 class, hit live rather than just read about): three of the
four destination files had address-taken twins already declared
`extern s32 sub_808A174;` etc. at file scope (the `declare_missing` "data"
rule, correct for a symbol only ever referenced) — but the moment that same
symbol's own definition landed in the same file, agbcc said `'sub_808A174'
redeclared as different kind of symbol` and failed the WHOLE object. Repaired
by replacing each `extern s32 X;` with a real forward declaration
`s32 X(s32, s32, s32);` and casting the two now-mismatched `&X` address-of
sites to `(s32 *) &X`. `src/sub_80D7410.c` additionally had one more
translation-unit poisoner — a pre-existing m2c draft for `sub_80D7410` itself
containing raw un-compilable pseudo-C (`r2 = (u32*)*(r2);`) that was failing
the whole file; emptied its `#else` back to the documented "no C attempt yet"
placeholder (its own `#ifndef` branch, hence the real ROM bytes, untouched) so
its siblings could compile.

    rm -rf build && ./container.sh make  ->  mlss.gba: OK
    ./container.sh tools/check_layout.py ->  layout OK

**Net for this example: 12 functions hand-touched, 12 matched (3 originals +
10 twins is 13 total across §3a-3c... correcting: 3a+3b+3c-direct = 3, plus 10
twins = 13 total matches this session), 1 correctly declined pending a
Phase-3 split.**

### Session total

**13 functions matched, 0 false positives, 1 correct decline.** Every claimed
match was independently verified with `rm -rf build/ && ./container.sh make`
printing `mlss.gba: OK` **plus** `./container.sh tools/check_layout.py`
reporting a clean layout — re-run one final time, from the current worktree
state, immediately before writing this line:

    === confirming build gate NOW, from scratch ===
    ...
    mlss.gba: OK
    === layout check ===
    layout OK - .text 0x08000000 size 0x1000000, every self-addressed symbol
    links at its own address

`git diff --stat` in the worktree at that same moment (21 files, exact list in
§5).

---

## 4. Second and third dominant struct — generalizing section N.5

N.5 found the `struct Entity` layout by counting single-hop offsets off arg0.
Generalized this session by chasing **double indirection**: for every fragment,
find where a register loaded from `*(arg0 + K)` is *itself* dereferenced
further, and tally those second-hop offsets. Same method as `scan_entity.py`,
extended one level.

### 4a. `*(arg0 + 0x08)` chased further — the strongest second-order signal

**955 of 4,388 fragments (21.8%)** dereference `arg0->unk08` and then access a
field of *that*. Top offsets found on the far side:

| offset | fns | width |
|---|---:|---|
| 0x12 | 476 (49.8% of chased) | 1B |
| 0x34 | 160 (16.8%) | 4B |
| 0x00 | 133 (13.9%) | 1B (71%) / other |
| 0x04 | 94 (9.8%) | 2B |
| 0x06 | 91 (9.5%) | 2B |
| 0x11 | 82 (8.6%) | 1B |
| 0x0C | 46 (4.8%) | 2B |
| 0x4C | 7 (0.7%) | 4B |

**This is not a new, unrelated struct — it is `struct Entity` again.** 0x12 and
0x4C are `struct Entity`'s own `unk12`/`handler` fields at their own widths
(1B, 4B), and 0x34 matches the field `sub_807F4FC` (§3b) already confirmed is
a linked-list pointer (`*(arg0+0x34)` used as a singly-linked-list head/next
slot). The honest reading: **`Entity::unk00` and `Entity::unk08` are
themselves `struct Entity *`** — this object is a node in a doubly-linked (or
parent/list-head + next) structure of its own type, not a pointer to some
other kind of object. `%` matches section N.5's original single-hop count for
`+0x08` almost exactly (21.9% there, 21.8% here), which is the corroborating
check: the same 1,229-ish functions that touch `+0x08` are the ones chasing
through it into fields that are themselves Entity's own layout.

**Convertibility right now:** none of this is free — retyping `unk00`/`unk08`
from `s32`/`s32` to `struct Entity *` is a **second, larger, riskier readability
pass** than `readable_entity.py`'s handler rewrite, for the same reason that
tool's own docstring flags (`p + 4` on `void *` is byte arithmetic; on a typed
struct pointer it is scaled by `sizeof(struct Entity)` = 0xB4, silently
changing every pointer-arithmetic expression's meaning). It needs the same
per-file build-and-compare-relocations verification `readable_entity.py`
already implements, extended to a new access pattern
(`(*(s32**)((s8*)(arg0)+(0x08)))` -> `entity->unk08`, with a second pass for
any further `->` chained through it). **Not attempted this session** — flagged
as the direct next readability step, with the tooling to do it safely already
proven out.

### 4b. `*(arg0 + 0x00)` chased further — a genuinely distinct pair of fields

**1,682 of 4,388 fragments (38.3%)** — a *larger* population than 4a — chase
through `arg0->unk00`. Top offsets on the far side:

| offset | fns | width |
|---|---:|---|
| 0x70 | 342 (20.3% of chased) | 4B |
| 0x74 | 335 (19.9%) | 4B |
| 0x00 | 163 (9.7%) | 1B (46%) |
| 0x12 | 135 (8.0%) | 1B (93%) |
| 0x04 | 85 (5.1%) | 2B |
| 0x0C | 59 (3.5%) | 4B |
| 0x10 | 50 (3.0%) | 4B |
| 0x14 | 46 (2.7%) | 4B |

Same self-similarity signature as 4a (0x00/0x12 recursion), reinforcing that
`unk00` is *also* `struct Entity *` — but **0x70 and 0x74, both 4-byte, both
in the *hundreds* of functions, are new.** `struct Entity`'s current layout
has `pad50[0x24]` spanning 0x50-0x73 (i.e. 0x70 falls **inside the current pad
gap**) immediately followed by the already-named `unk74`. Read together: the
existing `unk74` single `s32` is very likely actually the SECOND of a pair —
`0x70` and `0x74` are two real, heavily-used 4-byte fields (a pointer pair, or
a linked pair like `head`/`tail`), and the current `pad50` array is hiding one
of them.

**This is a low-risk, in-place refinement to the struct already in
`include/common.h`** — carving one more named field (at 0x70) out of an
existing pad array changes nothing about the type's size or the offsets of
anything after it, so the same byte-neutral verification `readable_entity.py`
already runs (per-file object diff, relocations included, then a from-scratch
ROM build) would confirm it costs nothing. **Recommended as the next concrete
struct edit**, ahead of the riskier self-referential retyping in §4a, precisely
because it is provably lower-risk (pure pad-array split, no pointer-arithmetic
scaling hazard).

`*(arg0+0x14)` and `*(arg0+0x18)` were also scanned as third/fourth candidates;
neither showed a comparably strong signal (300 and 239 chased fragments, no
offset above single digits after the top 2-3) — noted for completeness, not
worth a struct-level claim on this data.

**Net answer to "is there a second and third dominant struct":** no cleanly
separate *new* struct emerged — the data says `struct Entity` is more
self-referential than currently modeled (two pointer-to-self fields) and its
existing `pad50` gap hides at least one more real field. That is a smaller,
safer finding than "here is Struct #2", and it is the honest one the
measurement supports.

---

## 5. Automated naming — a conservative proposal, with counts

**Method, and why it is conservative by construction.** Use one-hop call-graph
position: a `sub_XXXXXXX` function is a naming candidate for subsystem prefix
`P_` only if **every one of its known callers already carries prefix `P_`**.
No string-reference or heuristic guessing — pure graph fact, computed from
`.claude/factory/state.db`'s `edges` table (12,356 edges over the whole
corpus). `tools/rename_symbol.py` is a zero-byte-risk whole-word text rename,
so applying this costs nothing to try and nothing to revert.

Measured, over all `sub_*` functions with at least one recorded caller:

| prefix family | candidates (all callers match, >=1 call) |
|---|---:|
| `stc_` | 71 |
| `btl_` | 15 |
| `evts_` | 5 |
| `ybai_` | 3 |
| `optn_` | 2 |
| `fldm_` | 2 |
| `bevs_` | 1 |
| `bclr_` | 1 |
| **total** | **100** |

Under the *stricter* variant (>=2 calls from the family, zero calls from
anywhere else) it drops to 3 (`btl_` x2, `bclr_` x1) — the honest range is
**3-100** depending on how many single-caller edges you trust. A single call
edge from one `stc_` function is weak evidence by itself (could be a shared
utility that happens to have only been reached from one place *so far* in the
call graph the DB has recorded); a function called by 2+ members of the same
family with zero outside callers is much stronger.

**Recommendation: use the strict rule (>=2 same-family calls, 0 outside
calls) as the bar for an actual rename**, and treat the relaxed 100 as a
worklist to re-check as more of the corpus matches and the call graph fills
in (right now `edges` is built from extracted+disassembled call sites, so a
function's caller set can still grow as neighboring functions get extracted).
**Do not rename on a single call edge alone** — a wrong name is worse than
`sub_`, per the brief, and one edge is not enough to rule out the function
being a genuine cross-subsystem utility that just hasn't had its other call
sites discovered yet.

**What was NOT attempted, and why:** string-reference naming (a function that
formats/references a specific dialogue string or debug string could plausibly
be named for it) needs `tools/find_text_strings.py`'s output cross-referenced
against call sites — real, but out of this session's scope (that tool lives in
the data/rodata track another concurrent agent owns per the brief's exclusion
list). Flagging as a second, independent naming signal worth combining with
the call-graph one later, not fabricating numbers for it here.

---

## STATUS

**Done**, within this session's scope and time budget. Summary:

- **13 functions matched** this session (`play_sfx_80195B4`, `sub_807F4FC`,
  `sub_806A7CC`, `sub_80899C4`, `sub_80899E4`, `sub_808A174`, `sub_808A194`,
  `sub_808A1B4`, `sub_80D909C`, `sub_80D90BC`, `sub_80DB184`, `sub_80DB1A4`,
  `sub_80DB1C4`) — every one independently verified with a from-scratch
  `rm -rf build/ && ./container.sh make` -> `mlss.gba: OK` plus
  `./container.sh tools/check_layout.py` -> clean, most recently re-run at the
  very end of this session against the worktree's current state (output pasted
  in §3, "Session total").
- **1 function deliberately left unmatched** (`sub_8089A04`) — a live instance
  of the documented trailing-data landmine; guarded with a warning comment,
  not silently dropped.
- **All work is UNCOMMITTED**, living only in the detached worktree at
  `/tmp/claude-1000/-home-tyler-Desktop-mlss/83e8aafe-b95b-4e2c-aff3-f2d4464296a2/scratchpad/wt`
  (git worktree, HEAD `2141e768`, same commit as `master` at session start).
  Nothing was committed or pushed, and no `git checkout --`/`reset`/`clean`
  was run anywhere, per the brief's constraints.

**Files touched in the worktree** (`git diff --stat` there, 21 files,
101 insertions / 458 deletions — the deletions are almost entirely the 13
now-redundant `asm/nonmatching/*.s` fragments):

    asm/nonmatching/play_sfx_80195B4.s   deleted (matched)
    asm/nonmatching/sub_806A7CC.s        deleted (matched)
    asm/nonmatching/sub_807F4FC.s        deleted (matched)
    asm/nonmatching/sub_80899C4.s        deleted (matched)
    asm/nonmatching/sub_80899E4.s        deleted (matched)
    asm/nonmatching/sub_8089A04.s        MODIFIED (warning comment added, NOT deleted -- still guarded/unmatched)
    asm/nonmatching/sub_808A174.s        deleted (matched)
    asm/nonmatching/sub_808A194.s        deleted (matched)
    asm/nonmatching/sub_808A1B4.s        deleted (matched)
    asm/nonmatching/sub_80D909C.s        deleted (matched)
    asm/nonmatching/sub_80D90BC.s        deleted (matched)
    asm/nonmatching/sub_80DB184.s        deleted (matched)
    asm/nonmatching/sub_80DB1A4.s        deleted (matched)
    asm/nonmatching/sub_80DB1C4.s        deleted (matched)
    src/sound.c                          play_sfx_80195B4 matched + file-scope decl for sub_8019508
    src/sub_806A77C.c                    sub_806A7CC matched (now returns callee's result)
    src/sub_807F4C4.c                    sub_807F4FC matched (idiom copied from matched sibling)
    src/sub_808862C.c                    sub_80899C4 + sub_80899E4 matched; sub_8089A04 draft written but reverted to empty (kept unmatched, see above)
    src/sub_8089BD4.c                    sub_808A174/194/1B4 matched; decl-conflict repair (extern data -> real forward decl + cast) on all three
    src/sub_80D7410.c                    sub_80D909C/90BC matched; decl-conflict repair; a pre-existing broken m2c draft for sub_80D7410 itself quarantined back to an empty #else (its own #ifndef/retail bytes untouched)
    src/sub_80DB184.c                    sub_80DB184/1A4/1C4 matched

  (also `sc.sh` — a throwaway helper script in the worktree root, not meaningful, safe to ignore/delete)

**To bring into the main tree:** these are ordinary small diffs against
`master` at `2141e768` (nothing else changed in that worktree). The
straightforward path is `git diff` in the worktree piped to `git apply` in
the main repo, or `git -C <worktree> format-patch`/cherry-pick once the
worktree's changes are committed there first — deliberately left for the user
to choose and review rather than committing on their behalf, per the brief.

**Remaining / not done, for whoever picks this up next:**

- §2's worklist beyond the three items actually attempted (`sub_8082E1C` at
  1,167 callers most of all — highest single-function leverage in the ROM,
  deserves its own dedicated session, not a 700-line function done in passing).
- §4a's self-referential-pointer retype (`Entity::unk00`/`unk08` ->
  `struct Entity *`) — analysis done, tooling proven safe by
  `readable_entity.py`'s precedent, rewrite itself not attempted.
- §4b's pad50-split (`unk74`'s neighbor at `+0x70`) — lower-risk than 4a,
  a good first target for whoever extends `readable_entity.py` next.
- §5's naming — 100 relaxed / 3 strict candidates identified, zero renames
  applied (recommendation only, per "a wrong name is worse than sub_").
- `sub_8089A04`'s hidden trailing function is still unsplit (Phase-3 work,
  out of this session's scope) — the warning comment is the handoff.
