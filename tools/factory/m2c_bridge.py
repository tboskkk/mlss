#!/usr/bin/env python3
"""Generate seed C for a function with m2c -- deterministically, no LLM.

This is the successor to tier3's LLM generation step, and it exists because
of measured results, not preference. A controlled 5-way comparison on a
fixed benchmark set (see bench.py and bench_results/) found that NOTHING
tested beat a single plain LLM draft: few-shot, best-of-5, multi-turn
diff-feedback, a 32B dense model, and a reasoning model all scored equal or
worse, several at multiples of the compute cost. Mean asm-differ score for
the best LLM configuration was ~548 with a 69% compile rate.

m2c (tools/m2c, github.com/matt-kempster/m2c) solves the actual problem
instead: it inverts compiler codegen mechanically. Its ARM/Thumb backend
was written and is maintained by Simon Lindholm -- the author of asm-differ
and decomp-permuter, the two tools this project already runs on -- and its
own test suite contains 80 agbcc-Thumb fixtures using the exact
`thumb_func_start` / `.code 16` conventions this repo emits. First
hand-checked function through it (`sub_8047B78`) scored 230 raw, better
than every LLM variant's mean, in milliseconds rather than tens of seconds.

`--valid-syntax` is what makes this practical: instead of inventing struct
names (`arg0->unk2B5`, which does not compile against a `void *`), m2c
emits `M2C_FIELD(arg0, u8 *, 0x2B5)`, which is exactly this project's own
explicit-byte-cast convention AND carries the access width. Those macros
are expanded inline here rather than relying on the header, so a generated
candidate is self-contained C that depends on nothing new.

Output is a SEED, not a finished match -- same as every other candidate
source in this pipeline. It goes through the identical decomp-permuter
search and the identical from-scratch-build validator gate as anything
else. Nothing here bypasses a single check.
"""
from __future__ import annotations

import functools
import hashlib
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402

M2C_PY = gitops.REPO / "tools" / "m2c" / "m2c.py"
COMMON_H = gitops.REPO / "include" / "common.h"

# Declarations m2c emits for symbols it doesn't know. Two shapes:
#   `extern M2C_UNK sub_8080A40;`
#   `M2C_UNK free_heap_8018DA8(void *);                  /* extern */`
EXTERN_LINE_RE = re.compile(r"^\s*(?:extern\s+)?\S.*\b(\w+)\s*(?:\(|;).*$")
DECL_LINE_RE = re.compile(r"^(?:extern\s|.*/\*\s*extern\s*\*/\s*$)")

# The macro bodies from tools/m2c/m2c_macros.h, expanded inline so a
# generated candidate needs no new header. Keep in sync if m2c updates them
# (they have been stable for years; a mismatch shows up immediately as a
# compile error, not as a silently wrong match).
UNK_TYPES = {"M2C_UNK": "s32", "M2C_UNK8": "s8", "M2C_UNK16": "s16",
             "M2C_UNK32": "s32", "M2C_UNK64": "s64"}


def _declared_in_common_h() -> set[str]:
    """Symbols the project's own headers already declare. m2c's guessed
    prototype for one of these would be a CONFLICTING declaration -- a hard
    compile error that has nothing to do with whether the body is right."""
    try:
        text = COMMON_H.read_text()
    except OSError:
        return set()
    return set(re.findall(r"\b(\w+)\s*\(", text)) | set(re.findall(r"\b(\w+)\s*;", text))


@functools.lru_cache(maxsize=1)
def ruleset_version() -> str:
    """Short hash identifying the current translation ruleset.

    A decline records this. tier_m2c then excludes only the rows declined
    by the ruleset it is CURRENTLY running -- so the moment a rule is added
    here, every function m2c previously gave up on becomes claimable again
    automatically, with no manual requeue and no risk of the infinite
    re-claim loop that made a blanket exclusion necessary in the first
    place.

    That loop is the thing to respect: releasing a declined row back to its
    original state with the same deterministic outcome makes it instantly
    re-claimable, forever. One function cycled thousands of times in under
    a second before the exclusion existed. Versioning keeps the exclusion
    airtight WITHIN a ruleset while making it expire when the ruleset
    changes, which is exactly the condition under which retrying is worth
    anything.

    Hashes this file, the pinned m2c submodule revision, AND every header
    under include/ -- the three things that decide what a seed comes out as.

    The headers are not padding. ensure_context() regenerates m2c's
    `--context` whenever any include/**/*.h is newer than it, and that
    context is what tells m2c the struct layouts, globals and callee
    signatures it would otherwise GUESS -- this module's own docstring
    calls the guessing the failure. So a header change materially changes
    every seed while leaving the ruleset hash untouched.

    That gap is not theoretical: 2,697 rows -- 45% of the corpus -- are
    currently parked in needs_attempt/stalled behind this exclusion, and
    CLAUDE.md's own stated next lever ("feed the context the signatures of
    functions already matched") is a header change. Without this, that
    improvement would regenerate every seed and re-open none of the rows
    waiting for exactly it.

    Sorted, and hashing content rather than mtimes, so the value is stable
    across checkouts and only moves when a header really changes.
    """
    h = hashlib.sha1()
    h.update(Path(__file__).read_bytes())
    try:
        rev = subprocess.run(["git", "rev-parse", "HEAD:tools/m2c"],
                             cwd=gitops.REPO, capture_output=True, text=True).stdout.strip()
        h.update(rev.encode())
    except Exception:
        pass
    try:
        for hdr in sorted((gitops.REPO / "include").rglob("*.h")):
            h.update(hdr.relative_to(gitops.REPO).as_posix().encode())
            h.update(hdr.read_bytes())
    except Exception:
        pass
    return h.hexdigest()[:8]


def expand_macros(c: str) -> str:
    """Expand M2C_FIELD/M2C_UNK* inline.

    M2C_FIELD(expr, type_ptr, offset) -> (*(type_ptr)((s8 *)(expr) + (offset)))
    Done by hand-parsing balanced parens rather than a regex, because the
    `expr` argument is frequently itself a nested M2C_FIELD call (a
    double-dereference, the single most common shape in this codebase's
    remaining functions) and a regex cannot match those reliably.
    """
    for unk, real in UNK_TYPES.items():
        c = re.sub(rf"\b{unk}\b", real, c)

    while True:
        idx = c.find("M2C_FIELD(")
        if idx == -1:
            return c
        open_paren = idx + len("M2C_FIELD")
        depth = 0
        args, cur, i = [], [], open_paren
        while i < len(c):
            ch = c[i]
            if ch == "(":
                depth += 1
                if depth == 1:
                    i += 1
                    continue
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    args.append("".join(cur).strip())
                    break
            elif ch == "," and depth == 1:
                args.append("".join(cur).strip())
                cur = []
                i += 1
                continue
            cur.append(ch)
            i += 1
        if len(args) != 3:
            raise ValueError(f"could not parse M2C_FIELD args: {args!r}")
        expr, type_ptr, offset = args
        replacement = f"(*({type_ptr})((s8 *)({expr}) + ({offset})))"
        c = c[:idx] + replacement + c[i + 1:]


CONTEXT_DIR = gitops.REPO / ".claude" / "factory"
CONTEXT_SRC = CONTEXT_DIR / "m2c_ctx_src.c"
CONTEXT = CONTEXT_DIR / "m2c_ctx.c"


def ensure_context():
    """A preprocessed C context for m2c, or None if it can't be built.

    Without this, m2c knows NOTHING: no struct layouts, no globals, and --
    the expensive part -- no function signatures. So it guesses, emitting
    `s32 foo();` for every callee and `s32 arg0` for every parameter, and
    everything downstream type-errors against the real declarations. That
    guessing is not a minor blemish; measured across 40 known-failing seeds
    it IS the failure, accounting for essentially every top bucket:

        11  void* dereference                      7  called object is not a function
         8  pointer-from-integer assignment        7  undeclared identifier
         8  invalid use of void expression         6  conflicting declaration
         7  pointer-from-integer (arg/return)      6  call arity mismatch

    all of which are one root cause wearing different hats.

    With context, m2c uses the real thing -- alloc_heap_8018CEC comes out
    `(u32 heapId, u32 size, s8 *tag)` with the actual parameter names
    instead of `(s32 arg0, s32 arg1, void *arg2)`.

    Deliberately NOT under build/: the validator does `rm -rf build/` before
    every from-scratch check, which would delete the context (and m2c's
    parse cache beside it) constantly. Regenerated only when a header is
    newer than it, so the cpp call is amortised to nothing.
    """
    CONTEXT_DIR.mkdir(parents=True, exist_ok=True)
    headers = list((gitops.REPO / "include").rglob("*.h"))
    newest = max((h.stat().st_mtime for h in headers), default=0)
    if CONTEXT.exists() and CONTEXT.stat().st_mtime >= newest:
        return CONTEXT

    CONTEXT_SRC.write_text('#include "global.h"\n#include "common.h"\n')
    # Repo-RELATIVE paths: container.sh mounts the repo at /workspace, so an
    # absolute host path does not exist inside the container.
    rel_src = CONTEXT_SRC.relative_to(gitops.REPO)
    rel_out = CONTEXT.relative_to(gitops.REPO)
    r = gitops.run(["./container.sh",
                    "arm-none-eabi-cpp", "-I", "tools/agbcc/include", "-nostdinc",
                    "-undef", "-iquote", "include", "-Wno-trigraphs",
                    str(rel_src), "-o", str(rel_out)])
    if r.returncode != 0 or not CONTEXT.exists():
        return None
    return CONTEXT


def run_m2c(name: str, extra_args: list[str] | None = None) -> str | None:
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.exists():
        return None
    cmd = [sys.executable, str(M2C_PY), "--target", "gba", "--valid-syntax",
           "--deterministic-vars"]
    ctx = ensure_context()
    if ctx is not None:
        cmd += ["--context", str(ctx)]
    cmd += [*(extra_args or []), str(frag)]
    try:
        r = subprocess.run(cmd, capture_output=True, text=True, timeout=120,
                           cwd=str(gitops.REPO / "tools" / "m2c"))
    except subprocess.TimeoutExpired:
        return None
    if r.returncode != 0 or not r.stdout.strip():
        return None
    return r.stdout


def generate(name: str) -> str | None:
    """-> compilable seed C for `name`, or None if m2c couldn't produce any."""
    raw = run_m2c(name)
    if raw is None:
        return None

    known = _declared_in_common_h()
    kept: list[str] = []
    for line in raw.splitlines():
        stripped = line.strip()
        if not stripped:
            kept.append(line)
            continue
        # Drop m2c's guessed declarations for symbols the project already
        # declares properly -- keeping them is a guaranteed compile error.
        if DECL_LINE_RE.match(stripped) and "{" not in stripped:
            m = EXTERN_LINE_RE.match(stripped)
            if m and m.group(1) in known:
                continue
        kept.append(line)

    c = "\n".join(kept)
    try:
        c = expand_macros(c)
    except ValueError:
        return None

    if f"{name}(" not in c:
        return None  # m2c emitted something, but not this function
    c = fix_void_dereference(c)
    c = fix_uncast_address_dereference(c)
    return restore_omitted_leading_params(c, name)


VOID_DEREF_RE = re.compile(r"\*\(void \*\)")
VOID_STORE_RE = re.compile(r"\*\(void \*\)([^=;]+?)\s*=\s*([^;]+);")
DECL_RE_TMPL = r"^\s*(u8|s8|u16|s16|u32|s32)\s+{var}\s*;"


def fix_uncast_address_dereference(c: str) -> str:
    """Give `*(0xADDRESS + ...)` a pointer cast.

    Distinct from fix_void_dereference() below, which repairs
    `*(void *)ADDR` -- a cast that exists but has no width. This is the case
    where m2c emits NO cast at all and dereferences a plain integer
    expression:

        var_r4_8 = (u16) *(0x03000BEC + (arg0 * 2)) >> 8;
        if (*(0x03000D80 + temp_r1_9) != arg0) {

    agbcc rejects that outright (`invalid type argument of unary *`), so
    the whole translation unit fails and the seed is worth nothing -- no
    score, no permuter search, no possible match. It was the single biggest
    mechanical bucket in a frozen-set measurement: 7 of 19 compile
    failures.

    Width is taken from an immediately-preceding cast when m2c supplied one
    (`(u16) *(...)` is a halfword load), otherwise s32 -- word access is
    both the commonest and the width m2c itself defaults to elsewhere. A
    wrong guess costs a worse score, not a wrong match: every seed still
    goes through asm-differ and the from-scratch build like any other.

    Hand-parses balanced parens rather than using a regex, for the same
    reason expand_macros() does: these expressions nest.
    """
    out = []
    i = 0
    n = len(c)
    while i < n:
        # A dereference of an open paren, not already a cast (`*(u8 *)`).
        if c[i] == "*" and i + 1 < n and c[i + 1] == "(":
            depth = 0
            j = i + 1
            while j < n:
                if c[j] == "(":
                    depth += 1
                elif c[j] == ")":
                    depth -= 1
                    if depth == 0:
                        break
                j += 1
            if j < n:
                inner = c[i + 2:j]
                stripped = inner.lstrip()
                # Only touch a raw address expression. A cast inside
                # (`(u8 *)x`) means m2c already knew the width, and a
                # non-hex start is a normal pointer variable.
                if stripped.startswith("0x") and "*)" not in inner:
                    width = "s32"
                    before = "".join(out).rstrip()
                    for cast in ("(u8)", "(s8)", "(u16)", "(s16)", "(u32)", "(s32)"):
                        if before.endswith(cast):
                            width = cast.strip("()")
                            break
                    out.append(f"*({width} *)({inner})")
                    i = j + 1
                    continue
        out.append(c[i])
        i += 1
    return "".join(out)


def fix_void_dereference(c: str) -> str:
    """Give `*(void *)ADDR` a real width.

    m2c emits a bare `*(void *)` when it can't infer an access width --
    which is not valid C at all (void has no size, so it cannot be
    dereferenced or assigned through), so the seed is guaranteed not to
    compile, and a seed that doesn't compile is worth nothing to the
    pipeline: no score, no permuter search, no possible match. Measured:
    23 of 368 generated seeds (6%) hit this.

    The width is recovered from the value being stored, whose type m2c
    DOES declare locally -- e.g.

        u8 var_r0_15;
        var_r0_15 = *(u8 *)0x03000ED0 + 1;
        *(void *)0x03000ED0 = var_r0_15;   <-- becomes *(u8 *)

    Falls back to u32 (the natural word, and what a bare `str` would be)
    when the stored value isn't a locally-declared variable. A wrong
    guess here is cheap and self-correcting: it costs one asm-differ
    score, exactly like any other imperfect seed, whereas leaving the
    `void` in place costs the function entirely.
    """
    if not VOID_DEREF_RE.search(c):
        return c

    def store_repl(m: re.Match) -> str:
        addr, value = m.group(1), m.group(2).strip()
        ctype = "u32"
        if re.fullmatch(r"\w+", value):
            d = re.search(DECL_RE_TMPL.format(var=re.escape(value)), c, re.MULTILINE)
            if d:
                ctype = d.group(1)
        return f"*({ctype} *){addr} = {value};"

    c = VOID_STORE_RE.sub(store_repl, c)
    # Any remaining read-side `*(void *)` has no value to infer from;
    # u32 is the safe default rather than leaving uncompilable C.
    return VOID_DEREF_RE.sub("*(u32 *)", c)


FUNC_DEF_RE = re.compile(r"^(.*?\b)(\w+)\s*\(([^)]*)\)(\s*\{)", re.MULTILINE)
ARG_RE = re.compile(r"\barg(\d+)\b")


def restore_omitted_leading_params(c: str, name: str) -> str:
    """Re-insert argument-register parameters m2c dropped because the
    function never READS them.

    m2c names parameters by their argument register (arg0=r0, arg1=r1,
    arg2=r2, arg3=r3, arg4+ = stack), and omits any it can prove unused.
    That's correct as a description of the assembly, but it does NOT
    round-trip through the compiler: agbcc assigns argument registers
    positionally, so a signature starting at `arg1` puts arg1 in r0,
    arg2 in r1, and so on -- every parameter shifted one register off
    from retail. The result compiles, looks semantically right, and is
    consistently wrong in a way the permuter cannot fix by mutation,
    because the defect is in the signature rather than the body.

    Measured: 59 of 391 translatable functions (15%) hit this. Verified
    end-to-end on sub_80EA928, which had been STALLED at score 55 through
    a full permuter search -- restoring the dropped `arg0` took it
    straight to score 0, an exact match with no search at all.

    Deliberately narrow: only fills the leading gap (arg0..argN-1 before
    the lowest argument m2c actually emitted), and only for the register
    arguments r0-r3. Holes in the MIDDLE of a parameter list are left
    alone -- they'd need the same fix, but they're rarer and this stays
    a mechanical certainty rather than a guess.
    """
    m = None
    for cand in FUNC_DEF_RE.finditer(c):
        if cand.group(2) == name:
            m = cand
            break
    if m is None:
        return c.strip()

    prefix, params, suffix = m.group(1), m.group(3), m.group(4)
    if params.strip() in ("", "void"):
        return c.strip()

    indices = [int(x) for x in ARG_RE.findall(params)]
    if not indices:
        return c.strip()
    first = min(indices)
    # Only r0-r3 are register arguments; a gap at/after arg4 is a stack
    # layout question, not something to paper over with a dummy.
    if first <= 0 or first > 3:
        return c.strip()

    filler = ", ".join(f"s32 arg{i}" for i in range(first))
    new_def = f"{prefix}{name}({filler}, {params.strip()}){suffix}"
    return (c[: m.start()] + new_def + c[m.end():]).strip()


if __name__ == "__main__":
    for n in sys.argv[1:]:
        print(f"=== {n} ===")
        out = generate(n)
        print(out if out else "(m2c produced nothing usable)")
        print()
