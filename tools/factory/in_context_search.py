#!/usr/bin/env python3
"""Run decomp-permuter's REAL mutation engine, scored IN the target
function's actual translation unit instead of isolation.

WHY NOT A `--in-context` FLAG ON THE VENDORED FORK. Looked at doing that
first. permuter.py's Scorer disassembles cand_o WHOLE (`objdump -drz`,
scorer.py) and diffs it line-for-line against target_o -- exactly right
for an isolated single-function object, but a full translation unit is
45 functions long, and that would be the same object-level-diffing
landmine CLAUDE.md already documents for asm-differ -o (score tracks
position in file, not code quality). Making that safe means EITHER
teaching Scorer to slice one symbol out of a multi-function object while
preserving relocations (non-trivial: a raw byte extraction loses them,
and CLAUDE.md's own "bytes without relocations" landmine is exactly a
`bl target` looking identical to `bl other_target` pre-link) OR routing
every mutation through a full re-splice+recompile+extract cycle that
touches gitops's splice primitives -- either way, real surgery on a
fork three other things already depend on (36% of the corpus needed the
ldsh/ldsb patch; a bad edit here is corpus-wide, not local).

`Permuter.__init__` takes `compiler`/`scorer` as plain constructor
arguments, already built for dependency injection. So instead: reuse
Candidate/Randomizer/perm-parsing (the actual hard, valuable part of
decomp-permuter) completely UNCHANGED, and supply this file's OWN
InContextCompiler/InContextScorer, which do the ELF-symbol-bounded,
relocation-aware compare in_context_permuter.py already proved correct
on sub_81458C8. Zero lines changed in tools/decomp-permuter/.

WHAT compile()/score() ACTUALLY HAND EACH OTHER. Compiler.compile() is
typed to return Optional[str] (a path) and Scorer.score() takes that
path -- but nothing requires it to be a loadable ELF object, since only
these two classes here ever read it. compile() splices the mutated
source into a scratch copy of the real TU, compiles the WHOLE thing,
extracts the target symbol's (bytes, relocations) by real ELF boundary,
and pickles that tuple to a temp file; score() unpickles it and diffs
against the retail (bytes, relocations) computed once in __init__. This
sidesteps reconstructing a fake standalone object entirely.

    python3 tools/factory/in_context_search.py sub_81458C8 --seconds 300
    python3 tools/factory/in_context_search.py sub_81458C8 --body-file x.c --seconds 60
"""
from __future__ import annotations

import argparse
import pickle
import random
import re
import sys
import tempfile
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402
import in_context_permuter as icp  # noqa: E402
def _ghost_zero_source_raw(name: str):
    """Like icp.ghost_zero_body, WITHOUT stripping the typedef preamble --
    the Permuter's own pycparser-based mutation engine needs u8/s8/etc
    defined to parse the source at all. InContextCompiler.compile() strips
    it later, per-mutation, right before splicing into the real TU."""
    d = gitops.REPO / "nonmatchings" / name
    if not d.is_dir():
        return None
    for hit in sorted(d.glob("output-0-*/source.c")):
        score_file = hit.parent / "score.txt"
        if score_file.is_file() and score_file.read_text().strip() == "0":
            return hit.read_text()
    return None

PERMUTER_ROOT = gitops.REPO / "tools" / "decomp-permuter"
sys.path.insert(0, str(PERMUTER_ROOT))
from src.compiler import Compiler  # noqa: E402
from src.scorer import Scorer  # noqa: E402
from src.permuter import Permuter  # noqa: E402
from src.preprocess import preprocess  # noqa: E402
from src.error import CandidateConstructionFailure  # noqa: E402
from src.helpers import get_default_randomization_weights  # noqa: E402


def inject_escaping_dummies(source: str, fn_name: str, rng: random.Random) -> str:
    """Insert 0-4 `volatile s32` locals at the top of `fn_name`'s body, each
    forced to escape (address-taken, read back) rather than sit dead.

    THE MECHANISM THIS AUTOMATES. Proved by hand on sub_81458C8
    (2026-08-27): a candidate byte-exact in isolation can still be short
    exactly the stack agbcc reserves in the REAL translation unit, because
    the real 45-function file leaves the register allocator enough free
    registers to avoid a spill the 1-function isolated compile does not
    have. Ordinary statement-level mutation never reaches this class,
    because it never changes how much stack the function claims. A
    genuinely UNUSED local, volatile or not, gets optimized away
    regardless (tested directly, six variants, zero effect) -- what
    closed sub_81458C8 was forcing the dummy's ADDRESS to escape
    (`*p = *p` through a pointer to it), which a simple liveness check
    cannot eliminate. This is that fix as a repeatable mutation instead
    of a one-off hand edit: 0 dummies most of the time (so the search
    still spends most of its budget on ordinary mutations), 1-4 when it
    fires.

    Regex-based, not AST-based, on purpose: the exact insertion point
    (right after the function's own opening brace) is all that matters,
    and every existing local declaration afterward is untouched.

    ALL DECLARATIONS, NO BARE STATEMENTS -- agbcc is C89-strict and every
    declaration in a block must precede every statement in that block.
    The escape read-back (`*p = *p`) is semantically a statement, but the
    original function's OWN declarations sit immediately after wherever
    this inserts, so a bare statement here would land BETWEEN two runs of
    declarations and fail with exactly the syntax error this produced the
    first time this ran for real (`syntax error before 'var_r2_14'` on
    sub_80E3D1C -- caught the SAME turn this was written, not assumed
    fixed). Folded the read-back into the pointer's own initializer via a
    GNU statement-expression (agbcc already relies on other GNU
    extensions -- __attribute__((naked)) is used corpus-wide), so the
    whole thing is one declaration line: legal anywhere another
    declaration is, however many of the function's own declarations
    follow it.
    """
    n = rng.randint(0, 4)
    if n == 0:
        return source
    m = re.search(rf"\b{re.escape(fn_name)}\s*\([^;{{]*\)\s*\{{", source)
    if not m:
        return source
    decls = "".join(
        f"volatile s32 _pattack_dummy{i};\n  "
        f"s32 *_pattack_esc{i} = ({{ *(volatile s32 *) &_pattack_dummy{i} = "
        f"*(volatile s32 *) &_pattack_dummy{i}; (s32 *) &_pattack_dummy{i}; }});\n  "
        for i in range(n)
    )
    insert_at = m.end()
    return source[:insert_at] + "\n  " + decls + source[insert_at:]


_ASM_REGION_RE = re.compile(r"/\*PATTACK_ASM_START\*/(.*?)/\*PATTACK_ASM_END\*/", re.DOTALL)


def hide_asm_regions(source: str) -> tuple[str, dict[str, str]]:
    """decomp-permuter's pycparser-based Randomizer chokes outright on GCC
    register-variable declarations (`register u32 r asm("r0");`) and
    extended `asm volatile(...)` statements -- confirmed live trying to
    search sub_808F2A8's hand-reconstructed C, which needs exactly this to
    call `_call_via_r2` correctly (its target has to land in r2 while real
    arguments occupy r0/r1, which plain C cannot express). The search
    doesn't need to MUTATE inside the asm anyway -- forcing specific
    physical registers is the whole point, permuting it would defeat it.

    Wrap the block in `/*PATTACK_ASM_START*/ ... /*PATTACK_ASM_END*/` in
    the source and this replaces it with a plain, parseable, argument-free
    function call before handing anything to Permuter(); the real content
    is saved here and restored by restore_asm_regions() right before the
    (possibly mutated-around, but never mutated-into) result is actually
    compiled. The placeholder has no arguments or return value the
    Randomizer could see a reason to touch, so ordinary mutations are free
    to move code around it same as any other statement.
    """
    saved: dict[str, str] = {}

    def repl(m: re.Match) -> str:
        key = f"_pattack_opaque_{len(saved)}"
        saved[key] = m.group(1)
        return f"{key}();"

    new_source = _ASM_REGION_RE.sub(repl, source)
    if saved:
        decls = "".join(f"void {k}(void);\n" for k in saved)
        new_source = decls + new_source
    return new_source, saved


def restore_asm_regions(source: str, saved: dict[str, str]) -> str:
    for key, content in saved.items():
        source = re.sub(rf"void {re.escape(key)}\(void\);\n?", "", source)
        source = source.replace(f"{key}();", content)
    return source


class InContextCompiler(Compiler):
    """Drop-in for decomp-permuter's Compiler. Never calls compile_cmd --
    overrides compile() entirely, so the base class is just for the
    isinstance/typing contract."""

    def __init__(self, name: str, work: Path, arm_mode: bool = False,
                 allocator_attack: bool = False, seed: int = 0,
                 asm_saved: dict[str, str] | None = None):
        self.name = name
        self.work = work
        self.arm_mode = arm_mode
        self.allocator_attack = allocator_attack
        self.asm_saved = asm_saved or {}
        self._rng = random.Random(seed)
        self._i = 0
        self.show_errors = False
        self.debug_mode = False

    def compile(self, source: str, *, show_errors: bool = False):
        self._i += 1
        tag = f"m{self._i}"
        if self.allocator_attack:
            source = inject_escaping_dummies(source, self.name, self._rng)
        if self.asm_saved:
            source = restore_asm_regions(source, self.asm_saved)
        body = icp._strip_permuter_preamble(source)
        try:
            c_path = icp.splice_in_memory(self.name, body, self.work)
        except SystemExit:
            return None
        obj = icp.compile_tu(c_path, self.work, tag, arm_mode=self.arm_mode)
        if obj is None:
            return None
        data, relocs = icp.extract_symbol(obj, self.name, self.work)
        if data is None:
            return None
        out = self.work / f"{tag}.icresult"
        with open(out, "wb") as f:
            pickle.dump((data, relocs), f)
        return str(out)


class InContextScorer(Scorer):
    """Drop-in for decomp-permuter's Scorer. Diffs the (bytes, relocs)
    InContextCompiler pickled, against retail computed once here -- never
    calls objdump. PENALTY_INF on any compile failure or missing file,
    exactly like the base Scorer does for a None cand_o."""

    def __init__(self, name: str, work: Path):
        self.retail_bytes, self.retail_relocs = icp.retail_symbol(name, work)
        self.last_penalties = {}

    def score(self, cand_o):
        if not cand_o:
            return Scorer.PENALTY_INF, ""
        try:
            with open(cand_o, "rb") as f:
                data, relocs = pickle.load(f)
        except Exception:
            return Scorer.PENALTY_INF, ""
        n = min(len(data), len(self.retail_bytes))
        diff = sum(1 for i in range(n) if data[i] != self.retail_bytes[i])
        diff += abs(len(data) - len(self.retail_bytes))
        relocs_equal = relocs == self.retail_relocs
        score = diff if relocs_equal else diff + 10_000
        return score, f"{data.hex()}|{sorted(relocs)}"


def search(name: str, body: str, seconds: float, work: Path, verbose: bool = True,
           arm_mode: bool = False, allocator_attack: bool = False):
    body, asm_saved = hide_asm_regions(body)
    if asm_saved and verbose:
        print(f"[{name}] hid {len(asm_saved)} PATTACK_ASM region(s) from the parser")
    compiler = InContextCompiler(name, work, arm_mode=arm_mode, allocator_attack=allocator_attack,
                                  asm_saved=asm_saved)
    scorer = InContextScorer(name, work)
    c_source = preprocess_string(body)
    # "agbcc" matches CLAUDE.md's local weight profile (tools/permuter_patches/):
    # mainline decomp-permuter's default weights are MIPS-derived, and ~6,300
    # searches ran on those before that was caught. Every real nonmatchings/
    # dir already carries compiler_type = "agbcc" in its settings.toml.
    weights = get_default_randomization_weights("agbcc")
    try:
        permuter = Permuter(
            str(work), name, compiler, scorer, f"{name}.c", c_source,
            randomization_weights=weights, force_seed=None, force_rng_seed=None,
            keep_prob=0.2, need_profiler=False, need_all_sources=False,
            show_errors=False, best_only=False, better_only=True,
            score_threshold=None, debug_mode=False,
        )
    except CandidateConstructionFailure as e:
        return {"error": str(e.message)}

    if verbose:
        print(f"[{name}] base score (in-context) = {permuter.best_score}")
    t0 = time.time()
    tries = 0
    best = permuter.best_score
    found_zero = False
    best_source = permuter.base_source
    while time.time() - t0 < seconds:
        seed = next(permuter.seed_iterator())
        result = permuter.try_eval_candidate(seed)
        tries += 1
        from src.candidate import CandidateResult
        if isinstance(result, CandidateResult) and result.score is not None:
            if result.score < best:
                best = result.score
                best_source = result.source or best_source
                if verbose:
                    print(f"  [{name}] improved: {best} (try {tries}, {time.time()-t0:.0f}s)")
            if result.score == 0:
                found_zero = True
                break
    if asm_saved:
        # Written-out/promoted source must carry the REAL asm, never the
        # opaque placeholder this function existed to feed the parser.
        best_source = restore_asm_regions(best_source, asm_saved)
    return {
        "tries": tries, "elapsed": time.time() - t0, "base_score": permuter.best_score,
        "best_score": best, "found_zero": found_zero, "best_source": best_source,
    }


def preprocess_string(body: str) -> str:
    """decomp-permuter's preprocess() takes a FILE path, not a string --
    write to a throwaway temp file since we build `body` in memory."""
    with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as f:
        f.write(body)
        p = f.name
    return preprocess(p)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name")
    ap.add_argument("--body-file")
    ap.add_argument("--seconds", type=float, default=300)
    ap.add_argument("--keep", action="store_true")
    ap.add_argument("--arm", action="store_true",
                     help="compile with agbcc_arm instead of agbcc, for functions "
                          "retail built as ARM rather than Thumb (see CFLAGS_ARM "
                          "in in_context_permuter.py)")
    ap.add_argument("--allocator-attack", action="store_true",
                     help="randomly inject 0-4 escaping volatile locals per mutation "
                          "attempt, automating the TU-register-pressure fix proved by "
                          "hand on sub_81458C8 (see inject_escaping_dummies)")
    args = ap.parse_args()

    body = Path(args.body_file).read_text() if args.body_file else _ghost_zero_source_raw(args.name)
    if body is None:
        sys.exit(f"{args.name}: no --body-file and no ghost-zero source on disk")

    work = Path(tempfile.mkdtemp(prefix=f"icsearch.{args.name}."))
    try:
        r = search(args.name, body, args.seconds, work, arm_mode=args.arm,
                   allocator_attack=args.allocator_attack)
        print(r if "error" in r else
              {k: v for k, v in r.items() if k != "best_source"})
        if r.get("found_zero"):
            out_dir = gitops.REPO / "nonmatchings" / args.name / "output-0-incontext"
            out_dir.mkdir(parents=True, exist_ok=True)
            (out_dir / "source.c").write_text(r["best_source"])
            (out_dir / "score.txt").write_text("0")
            print(f"WROTE {out_dir}/source.c -- genuine in-context zero")
    finally:
        if not args.keep:
            import shutil
            shutil.rmtree(work, ignore_errors=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
