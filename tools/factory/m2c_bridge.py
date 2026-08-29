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

    Hashes this file, the m2c source CONTENT, every header under include/,
    AND the Makefile -- the four things that decide what a seed comes out as
    and whether it compiles.

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
    # The recorded submodule SHA above is NOT sufficient on its own, and
    # relying on it alone was a silent, measured failure. This project keeps
    # its m2c changes as patches applied to the submodule's WORKING TREE and
    # deliberately never commits them (see CLAUDE.md, "Local m2c patches"),
    # so `HEAD:tools/m2c` never moves when a patch lands. The ldsh/ldsb
    # patch -- the single biggest deterministic win this project has had,
    # affecting 36% of the corpus -- therefore re-opened ZERO parked rows:
    # every function it fixed stayed excluded by _claim() behind a ruleset
    # stamp that could not change. 766 rows were still storing
    # `M2C_ERROR(/* unknown instruction: ldsh ... */)` bodies long after the
    # patch made those errors impossible.
    #
    # Hash the decompiler's actual source content instead, so a working-tree
    # patch moves the ruleset exactly like a submodule bump would.
    try:
        for src in sorted((gitops.REPO / "tools" / "m2c" / "m2c").rglob("*.py")):
            h.update(src.relative_to(gitops.REPO).as_posix().encode())
            h.update(src.read_bytes())
    except Exception:
        pass
    try:
        for hdr in sorted((gitops.REPO / "include").rglob("*.h")):
            h.update(hdr.relative_to(gitops.REPO).as_posix().encode())
            h.update(hdr.read_bytes())
    except Exception:
        pass
    # The Makefile too, for the same reason the headers are here and by the
    # same argument. A decline is very often "produced output but it doesn't
    # compile" -- and whether a seed compiles is decided by CFLAGS and the
    # compile rule, not only by what m2c emitted.
    #
    # Found the hard way. The `-g` debug-line fallback (CLAUDE.md T.9) made a
    # whole class of previously-unbuildable objects build, which is exactly
    # the verdict these rows are stamped with -- and it re-opened NONE of
    # them, because the Makefile was not part of the hash. health.py was
    # reporting `1847 row(s) (31% of corpus) ... 0 still claimable` with the
    # queue running dry at 4 matches/hr while the fix that unblocks them was
    # already committed.
    #
    # Same lesson as the submodule-SHA hole above (section N.1): the stamp has
    # to cover everything that decides the verdict, or the project's best
    # deterministic wins land and reach nothing.
    try:
        mk = gitops.REPO / "Makefile"
        h.update(mk.read_bytes())
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
    sigs = matched_signatures()
    sig_hash = hashlib.sha1(sigs.encode()).hexdigest()[:12]
    stamp = CONTEXT_DIR / "m2c_ctx_sigs.stamp"
    fresh = (CONTEXT.exists() and CONTEXT.stat().st_mtime >= newest
             and stamp.exists() and stamp.read_text() == sig_hash)
    if fresh:
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

    # Append the signatures of functions we have already MATCHED.
    #
    # This is the "compounding fix" CLAUDE.md parks as marginal until
    # 20-30% matched. The measurement in section G says the binding
    # constraint is now: ~50% of the non-compiling pile fails on an unknown
    # callee signature (`called object is not a function`, `void value not
    # ignored`, `too few arguments`, `redeclared as a different kind of
    # symbol`), and each function matched removes one more guess for every
    # function that calls it.
    #
    # Appended AFTER preprocessing rather than #include'd before it: these
    # are plain prototypes whose types (s32, struct Process *, ...) the
    # preprocessed text above already declares, and a matched function's
    # definition is authoritative -- it compiled and reproduced the ROM
    # byte-for-byte, so it cannot conflict with a header without the build
    # already being broken.
    # NOT appended any more -- measured harmful. See matched_signatures().
    if False:  # pragma: no cover
        with CONTEXT.open("a") as f:
            f.write("\n/* signatures of already-matched functions */\n")
            f.write(sigs)

    # VALIDATE, and fall back if this made things worse. The blast radius
    # of a malformed context is every seed the factory generates, not one
    # function -- so a bad append must never ship. If m2c cannot parse the
    # augmented context, rebuild the header-only version and use that.
    if sigs and not _context_parses():
        r = gitops.run(["./container.sh",
                        "arm-none-eabi-cpp", "-I", "tools/agbcc/include", "-nostdinc",
                        "-undef", "-iquote", "include", "-Wno-trigraphs",
                        str(rel_src), "-o", str(rel_out)])
        print("m2c_bridge: augmented context failed to parse -- "
              "falling back to headers only")
        if r.returncode != 0 or not CONTEXT.exists():
            return None
        sig_hash = "headers-only"

    stamp.write_text(sig_hash)
    return CONTEXT


# A definition at column 0, allowing a multi-line signature (88 of the 342
# matched functions have one) but stopping at the first `;` or `{` so a
# prototype or a call can never be mistaken for a definition.
_DEF_RE = re.compile(r"^([A-Za-z_][\w \t\*]*?)\b(\w+)\s*\(([^;{]*?)\)\s*\{",
                     re.MULTILINE | re.DOTALL)


def matched_signatures() -> str:
    """Prototypes for every already-matched function, from the real source.

    NO LONGER FED TO m2c -- kept because infer_signatures.py uses it as
    ground truth for validating call-site inference.

    Measured on a fixed 20-seed sample, counting compiler errors (the metric
    that shows incremental change, unlike compile/fail):

        matched signatures in --context + declarations restored   107 errors
        signatures in --context only                              103
        NEITHER                                                   100   <- best

    So the whole path costs +7 errors. It was originally kept on the grounds
    that it was "correct and free"; it is neither. The reason it backfires:
    at 349 matched of 5,986, the signatures cover ~2% of the callees these
    seeds reference, while every one that IS published risks conflicting
    with a project header (`conflicting types`, `previous declaration` --
    both tripled in the measurement). A tiny benefit against a per-signature
    risk is a losing trade until coverage is far higher.

    A matched function has had its `#ifndef NONMATCHING` guard removed --
    that is what "matched" MEANS here -- so its definition in src/*.c is
    plain C and is the authoritative signature. Nothing is inferred.

    `static` definitions are skipped: they are not callable from another
    translation unit, so a prototype for one would be wrong rather than
    merely useless.
    """
    out, seen = [], set()
    try:
        for c_path in sorted((gitops.REPO / "src").glob("*.c")):
            text = c_path.read_text()
            # Only the parts NOT inside a NONMATCHING guard are real
            # definitions; a #else branch holds an unproven attempt.
            for m in _DEF_RE.finditer(text):
                ret, name, args = m.group(1).strip(), m.group(2), m.group(3).strip()
                if name in seen or ret.startswith("static") or "static" in ret.split():
                    continue
                if _inside_guard(text, m.start()):
                    continue
                seen.add(name)
                ret = " ".join(ret.split())
                out.append(f"{ret} {name}({args or 'void'});")
    except OSError:
        return ""
    return "\n".join(out) + ("\n" if out else "")


def _inside_guard(text: str, pos: int) -> bool:
    """Is `pos` inside a `#ifndef NONMATCHING` ... `#endif` block?

    An unproven `#else` attempt must not be published as a signature: it has
    not compiled, let alone matched, and m2c would then guess CONFIDENTLY
    wrong instead of merely guessing.
    """
    depth = 0
    for m in re.finditer(r"^\s*#\s*(ifndef\s+NONMATCHING|if|ifdef|ifndef|endif)",
                         text[:pos], re.MULTILINE):
        tok = m.group(1)
        if tok.startswith("endif"):
            depth = max(0, depth - 1)
        else:
            depth += 1
    return depth > 0


def _context_parses() -> bool:
    """Can m2c actually load the context we just wrote?

    Checked by running m2c against a real fragment. A context that fails to
    parse does not fail loudly per-function -- m2c falls back to guessing,
    which is precisely the failure this whole mechanism exists to remove,
    so it would look like "the fix did not help" rather than "the fix is
    broken".
    """
    frag_dir = gitops.REPO / "asm" / "nonmatching"
    try:
        frag = next(iter(sorted(frag_dir.glob("*.s"))))
    except (StopIteration, OSError):
        return True  # nothing to test with; don't block on it
    # Use the SAME invocation run_m2c() uses -- target "gba", M2C_PY, the
    # real interpreter. A first version of this guessed `--target
    # arm32-gcc-c` and m2c rejected the ARGUMENT, so the check failed for
    # every context including a perfectly good one, and the fallback fired
    # unconditionally. The validator was broken, not the thing it validated,
    # which is the more embarrassing of the two and completely silent: the
    # feature simply never took effect.
    import subprocess as _sp
    cmd = [sys.executable, str(M2C_PY), "--target", "gba", "--valid-syntax",
           "--context", str(CONTEXT), str(frag)]
    try:
        r = _sp.run(cmd, capture_output=True, text=True, timeout=120, cwd=gitops.REPO)
    except Exception:
        return False
    # m2c reports a context it could not parse on stderr and then carries on
    # guessing, so a zero exit code alone does not mean the context loaded.
    stderr = r.stderr or ""
    if "Error:" in stderr or "Unsupported" in stderr and "context" in stderr.lower():
        return False
    return r.returncode == 0 and bool((r.stdout or "").strip())


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


@functools.lru_cache(maxsize=1)
def _matched_prototypes() -> dict:
    """name -> real prototype, for every already-matched function."""
    out = {}
    for proto in matched_signatures().split(";"):
        proto = " ".join(proto.split())
        if not proto:
            continue
        m = re.match(r"^(.*?\b(\w+))\s*\(", proto)
        if m:
            out[m.group(2)] = proto + ";"
    return out


_CALL_RE = re.compile(r"\b([A-Za-z_]\w*)\s*\(")


def restore_context_declarations(body: str, known: set) -> str:
    """Re-declare callees that m2c knew from --context but the SOURCE won't.

    Subtle and it bit immediately. Once a matched function's signature is in
    m2c's `--context`, m2c stops emitting its `/* extern */ ` guess for it --
    correctly, from m2c's point of view, since it is no longer guessing. But
    the context is m2c's private input; the real `src/*.c` includes only
    global.h/common.h, and ~5,700 `sub_XXXXXXX` functions are declared in
    neither. So the callee became IMPLICIT, and agbcc runs `-Wimplicit
    -Werror`.

    Measured: adding the context alone took a 45-function sample from
    0/45 compiling to 0/45 -- no gain -- and diffing the seeds showed
    exactly this, whole `extern` lines disappearing (`s32 sub_808863C(void
    *);`). The context has to be paired with putting those declarations
    BACK, now with m2c's real signature rather than its guess.

    Declarations go in the `#else` branch alongside the candidate, so they
    are local to the attempt and cannot affect the shipped ROM -- unlike
    adding them to a shared header, which would change argument promotion
    for already-matched CALLERS and risk breaking matches that are already
    byte-exact.
    """
    protos = _matched_prototypes()
    if not protos:
        return body
    head = body[: body.find("{")] if "{" in body else body
    already = set(re.findall(r"\b(\w+)\s*\(", head))
    needed = []
    for callee in dict.fromkeys(_CALL_RE.findall(body)):
        if callee in known or callee in already or callee not in protos:
            continue
        if re.search(rf"^[\w \t\*]*\b{re.escape(callee)}\s*\(", body, re.MULTILINE) \
                and f"{callee}(" in head:
            continue
        needed.append(protos[callee])
    if not needed:
        return body
    return "\n".join(needed) + "\n" + body


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
    # restore_context_declarations() is NOT called any more -- measured
    # harmful. See its docstring.
    try:
        c = expand_macros(c)
    except ValueError:
        return None

    if f"{name}(" not in c:
        return None  # m2c emitted something, but not this function
    c = fix_void_dereference(c)
    c = fix_uncast_address_dereference(c)
    c = fix_indirect_call_precedence(c)
    c = fix_untyped_address_access(c, name)
    c = fix_scaled_pointer_arithmetic(c, name)
    c = fix_pointer_assign_without_cast(c)
    c = fix_integer_assign_from_pointer(c)
    c = fix_bare_stack_pointer(c)
    c = fix_undeclared_stack_slots(c)
    return restore_omitted_leading_params(c, name)


# `*(s32 (**)(s32, s32))0x03000D48(a, b)` -- m2c's shape for "load a function
# pointer from this address and call it". It does not parse the way it reads:
# a call binds tighter than unary `*`, so C sees
# `*( ((s32 (**)(s32,s32))0x03000D48)(a, b) )` -- calling the CAST expression,
# which is `called object is not a function`.
#
# One pair of parentheses fixes it, and the fix is purely syntactic: the
# operand, the cast and the arguments are all unchanged, so it cannot alter
# what the seed means. It changes an uncompilable seed into a compilable one.
#
# Worth the rule rather than a one-off: `called object is not a function` was
# the largest single error class in CLAUDE.md section G (24.4%) and is still
# 75 of the 248 genuine failures in the isolation clustering (T.15), and this
# exact shape appears in 142 stored candidate bodies.
INDIRECT_CALL_RE = re.compile(
    r"\*\((\s*[\w\s\*]+\(\*\*\)\s*\([^()]*\)\s*)\)\s*([0-9A-Za-z_]+)\s*\(")


def fix_indirect_call_precedence(c: str) -> str:
    """Parenthesise a dereferenced function pointer before it is called."""
    return INDIRECT_CALL_RE.sub(lambda m: f"(*({m.group(1)}){m.group(2)})(", c)


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
                # Only touch a raw address expression (a non-hex start is a
                # normal pointer variable, already typed).
                #
                # Used to also require `"*)" not in inner`, meant to skip an
                # expression that ALREADY has a pointer cast at its head
                # (`*(0x1234 *)x`, which can't actually occur once
                # stripped.startswith("0x") is already true -- a hex literal
                # can't itself be a cast). What it actually did: bail out
                # whenever a cast appeared ANYWHERE in the inner text, which
                # is common and harmless when it belongs to an unrelated
                # NESTED sub-dereference, e.g.
                # `*(0x083B873C + (s32)((*(u8 *)0x03000E7C * 6) + ...))`
                # (sub_8070990) -- the substring `*)` from the inner `(u8 *)`
                # cast made the rule skip the OUTER deref entirely, leaving
                # it untouched and the function uncompilable. Wrapping the
                # whole inner expression in a pointer cast is always valid
                # regardless of what's nested inside it (it evaluates to an
                # integer either way), so there was never a real case this
                # guarded against -- confirmed by removing it and testing
                # against this exact function, not just reasoned about.
                if stripped.startswith("0x"):
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


LOCAL_DECL_RE = re.compile(
    r"^\s*((?:void|u8|s8|u16|s16|u32|s32|u64|s64)\s*\*?)\s*(\w+)\s*;", re.MULTILINE)


def _local_types(c: str) -> dict:
    """name -> declared C type (bare, e.g. 's32' or 'void*') for every
    m2c-declared local in this candidate. m2c always declares its locals
    up front, one per line, before the first executable statement.

    THE TRAILING '*' MUST BE PART OF GROUP 1 FOR EVERY TYPE, NOT JUST
    `void`. An earlier version of this regex had the optional star
    OUTSIDE the alternation, so it matched but was never captured for any
    keyword but `void` -- `s32 *var_r3_45;` reported as bare `"s32"`,
    silently losing that it was a pointer at all.

    That is not cosmetic: _classify_untyped_head() below decides "already
    a real pointer, nothing to fix" by checking `t.endswith("*")`, so it
    was silently FALSE for every `s16 *`/`s32 *`/`u16 *`/`u32 *`/... local
    -- fix_untyped_address_access (already shipped) could wrap an
    already-correctly-typed pointer in a spurious cast. Confirmed live
    while adding a second rule on this same helper: `s32 *var_r3_45;`
    assigned pointer arithmetic was treated as a plain integer, and a
    naive fix would have cast a pointer value into a mismatched
    assignment -- caught by regression-testing before commit, not by
    review.
    """
    types = {}
    for m in LOCAL_DECL_RE.finditer(c):
        types[m.group(2)] = m.group(1).replace(" ", "")
    return types


UNTYPED_HEAD_TOKEN = r"[A-Za-z_]\w*"
# An address reconstructed as untyped arithmetic: a bare identifier (a
# local, a symbol like dword_XXX/sub_XXX), optionally +/- an offset -
# NOT already behind a cast (no `TYPE *)` immediately before it) and NOT
# a raw hex literal (fix_uncast_address_dereference above already casts
# that shape). Deliberately conservative about the HEAD (only a leading
# identifier or `0x`, never an arbitrary expression, to keep this a
# mechanical certainty rather than a guess at operator precedence) but
# not about the offset's own shape - `ident + (a * b)` is common m2c
# output and its offset legitimately nests parens, so the span itself is
# found by hand-parsing balanced parens (same reason
# fix_uncast_address_dereference above does, and expand_macros() does),
# with this regex only used to VALIDATE an already-extracted, already-
# balanced span's shape once found.
CTYPE_KEYWORDS = {
    "void", "u8", "s8", "u16", "s16", "u32", "s32", "u64", "s64", "int",
    "char", "short", "long", "unsigned", "signed", "float", "double",
    "struct", "bool32", "size_t",
}

UNTYPED_EXPR_SHAPE_RE = re.compile(rf"^\s*{UNTYPED_HEAD_TOKEN}(?:\s*[+\-]\s*.+)?\s*$", re.DOTALL)
# The other shape this rule needs to recognize: a value that IS already
# correctly typed by its own cast (`*(s32 *)ADDR`), plus/minus more
# arithmetic, used as a CALL target with no further cast at all - e.g.
# `(*(s32 *)0x03001038 + 0x10C)(args)`, a real, repeated idiom (an IWRAM
# function-pointer-table lookup). This is a different defect from the
# "untyped identifier" shape above: the value itself is fine (a plain
# s32), it just needs a FUNCTION POINTER cast to be callable - no
# _local_types() lookup needed, the leading cast already settles it.
TYPED_DEREF_HEAD_RE = re.compile(
    rf"^\s*\*\(\s*(?:{'|'.join(sorted(CTYPE_KEYWORDS - {'struct'}, key=len, reverse=True))})\s*\*\s*\)")
UNTYPED_CAST_HEAD_RE = re.compile(r"\*\)\s*$")
UNTYPED_HEX_RE = re.compile(r"^\s*0[xX]")
UNTYPED_IDENT_RE = re.compile(rf"^({UNTYPED_HEAD_TOKEN})")


def _balanced_span(s: str, open_idx: int) -> int | None:
    """Index just past the ')' matching the '(' at open_idx, or None if
    the string ends before it balances (should not happen on real C, but
    never assume - see CLAUDE.md's own "must refuse when it cannot")."""
    depth, i = 0, open_idx
    while i < len(s):
        if s[i] == "(":
            depth += 1
        elif s[i] == ")":
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    return None


def _classify_untyped_head(head: str, local_types: dict) -> str | None:
    """None if `head`'s own leading identifier is already a real pointer
    type (dereferencing/calling it needs no cast - this rule only adds
    one where m2c genuinely omitted it) OR is itself a bare C type
    keyword. The latter is load-bearing, not an edge case: `(u8)(x)` is an
    ORDINARY CAST, syntactically indistinguishable by regex alone from
    `(some_func_ptr)(x)`, a call this rule is meant to fix - found live
    when a first draft of this rule wrapped existing casts like `(u8)(y)`
    a second time, producing `((s32 (*)())(u8))(y)`, a real syntax error
    caught by an actual agbcc compile, not by review. Returns the
    width/cast to apply otherwise."""
    if TYPED_DEREF_HEAD_RE.match(head.strip()):
        # Already a definite, correctly-typed scalar (its own cast settles
        # it) - no local-variable lookup needed, it just needs the OUTER
        # cast (a data-pointer width for a deref, a function-pointer type
        # for a call) to be usable. Measured: 18/300 (6%) of a broad sample
        # of still-undraftable seeds hit exactly this shape, most commonly
        # `(*(s32 *)0x03001038 + OFFSET)(args)` - an IWRAM function-pointer-
        # table lookup idiom repeated across many handler dispatchers.
        return "s32"
    m = UNTYPED_IDENT_RE.match(head.strip())
    if not m:
        return None
    ident = m.group(1)
    if ident in CTYPE_KEYWORDS:
        return None
    t = local_types.get(ident)
    # void* is syntactically a pointer but semantically untyped - it still
    # cannot be dereferenced or called without a width cast, unlike a real
    # typed pointer (struct Sprite *, s32 *, ...). Found live: a local
    # m2c declares `void *temp_r0_36;` from `*(void **)ADDR`, then
    # dereferences `temp_r0_36 + offset` with no further cast - the same
    # `void value not ignored`/`invalid use of void expression` class this
    # rule exists to fix, missed by an earlier version of this check that
    # treated ANY trailing `*` as "already a real pointer, done".
    if t and t.endswith("*") and t != "void*":
        return None  # already a real, non-void pointer, nothing to fix
    return "s32"


_PTR_ASSIGN_RE = re.compile(
    r"^(\s*)(\w+)(\s*=\s*)(.+?);\s*$", re.MULTILINE)


def fix_pointer_assign_without_cast(c: str) -> str:
    """Cast the RHS when a POINTER local is assigned untyped integer
    arithmetic: `void *p; p = (i * 4) + (*(s32 *)(...));`

    THE SAME ROOT DEFECT AS fix_untyped_address_access BELOW, AT A
    DIFFERENT SITE. That rule handles an untyped address that is
    dereferenced or called; this one handles it being STORED into a
    declared pointer. agbcc warns `assignment makes pointer from integer
    without a cast`, and the real Makefile flags carry -Werror, so the
    warning is fatal and the seed is thrown away as "produced output but
    it doesn't compile".

    MEASURED, which is why this exists rather than being assumed: 852 rows
    reach the queue with NO candidate at all, and 468 of them are that
    exact "produced output but doesn't compile" note. Sampling those and
    clustering agbcc's own diagnostics (per CLAUDE.md's "cluster on the
    fatal error" rule) gives, across 8 sampled functions:

        15x  assignment makes pointer from integer without a cast   <- this
         6x  comparison is always true due to limited range
         4x  assignment from incompatible pointer type
         1x  assignment makes integer from pointer without a cast

    The dominant cluster, and every one of them is a -Werror-promoted
    WARNING rather than a hard syntax error -- the C is structurally fine,
    it is missing casts.

    CONSERVATIVE BY CONSTRUCTION, deliberately narrower than the warning:

      * the LHS must be a plain local m2c itself declared as a pointer
        (_local_types()), never a field, an array element or a deref -- so
        the declared type is known exactly and is not being guessed;
      * the RHS must NOT already start with a cast or `&`, so a correct
        assignment is never touched;
      * the RHS must contain no comparison or logical operator, which
        would make `(void *)` change the parse rather than just the type.

    Anything else is left alone. The cast is a no-op at the machine level
    (agbcc emits identical code for `p = x` and `p = (void *)x` once the
    warning is silenced), so this changes whether a seed COMPILES, never
    what it means -- and the seed still faces the identical from-scratch
    validator gate as everything else.
    """
    types = _local_types(c)
    if not types:
        return c

    def repl(m: re.Match) -> str:
        indent, lhs, eq, rhs = m.group(1), m.group(2), m.group(3), m.group(4)
        ctype = types.get(lhs)
        if not ctype or "*" not in ctype:
            return m.group(0)
        r = rhs.strip()
        # already cast, or an address-of -- both are correct as written
        if r.startswith("&") or re.match(r"^\(\s*\w[\w\s]*\*+\s*\)", r):
            return m.group(0)
        # a bare identifier or a call is not the untyped-arithmetic shape
        # this targets, and casting it could mask a real type error
        if re.fullmatch(r"[\w\.\->\[\]]+", r) or re.fullmatch(r"\w+\(.*\)", r):
            return m.group(0)
        # must look like address arithmetic, and must not contain an
        # operator whose parse a cast would change
        if not re.search(r"[+\-]", r):
            return m.group(0)
        if re.search(r"(\?|\|\||&&|[=!<>]=|(?<![<>=!])[<>](?!=))", r):
            return m.group(0)
        # NOT `KNOWN_TYPED_NONBYTE_POINTER +/- offset`. An outer cast here
        # would silence the warning without fixing anything: `s32 *p; p + 8`
        # already scales by sizeof(s32)=4 BEFORE any outer cast is applied,
        # so `(void *) (p + 8)` compiles cleanly while still meaning "32
        # bytes past p", not "8". Confirmed live, not hypothetical: sampling
        # 60 m2c-seeded rows AFTER this rule shipped found 5 already holding
        # exactly this shape (e.g. `sp2C = (s32 *) (temp_r1_31 + 8)` with
        # temp_r1_31 declared `s32 *`). fix_scaled_pointer_arithmetic below
        # is the correct fix for this shape; this rule must stay out of its
        # way rather than paper over it.
        base_m = re.match(r"^(\w+)\s*(?:\+|-(?!>))", r)
        if base_m:
            base_t = types.get(base_m.group(1))
            if base_t and base_t.endswith("*") and base_t not in BYTE_PTR_TYPES:
                return m.group(0)
        return f"{indent}{lhs}{eq}({ctype.replace('*', ' *')}) ({r});"

    return _PTR_ASSIGN_RE.sub(repl, c)



# `[+\-]` alone also matches the `-` inside `->`, so `x = base->field;`
# (already-correct code) would be misread as `base` MINUS `>field` and
# rewritten around that fiction -- (?!>) excludes exactly that one case
# without excluding a real `-` followed by anything else. Found live: see
# fix_scaled_pointer_arithmetic's docstring below for the concrete case
# that caught it (`sp8 = arg0->field_20;` mangled into a cast-then-arrow on
# a non-struct type, which cannot compile).
_ARITH_OP = r"(?:\+|-(?!>))"
_INT_ASSIGN_FROM_PTR_RE = re.compile(
    rf"^(\s*)(\w+)(\s*=\s*)(\w+)(\s*{_ARITH_OP}\s*.+?);\s*$", re.MULTILINE)

# Pointer types where `ptr +/- N` is guaranteed to be pure byte arithmetic --
# the pointee is one byte wide, so there is no sizeof-scaling to get wrong.
# u16*/u32*/s16*/s32*/... are deliberately EXCLUDED even though
# _local_types() can return them: `s32 *p; p + 1` advances 4 bytes, not 1,
# so casting away the warning there would compile fine and be WRONG. Struct
# pointers can't appear here at all -- LOCAL_DECL_RE only recognizes the
# fixed-width keyword types, never `struct X *`.
BYTE_PTR_TYPES = {"void*", "u8*", "s8*"}


def fix_integer_assign_from_pointer(c: str) -> str:
    """Cast the RHS when a NON-pointer local is assigned byte-pointer
    arithmetic: `s32 sp4; sp4 = temp_r7_16 - (...);` where temp_r7_16 is
    `void *`.

    The mirror image of fix_pointer_assign_without_cast above -- same root
    defect (m2c reconstructs an address as untyped arithmetic), opposite
    direction (a pointer value flowing into an integer-typed local instead
    of an untyped value flowing into a pointer-typed one). agbcc warns
    "assignment makes integer from pointer without a cast", -Werror makes
    it fatal, same as the other direction.

    SAFE FOR THE SAME REASON AS THE OTHER RULE: a pointer-to-integer CAST
    never changes bits (both are 4 bytes here), so restricting this to
    byte-pointee types (see BYTE_PTR_TYPES above) means the arithmetic's
    VALUE is provably unchanged -- this only silences the warning, it
    cannot make already-correct arithmetic wrong.
    """
    types = _local_types(c)
    if not types:
        return c

    def repl(m: re.Match) -> str:
        indent, lhs, eq, base, rest = m.group(1), m.group(2), m.group(3), m.group(4), m.group(5)
        lhs_type = types.get(lhs)
        base_type = types.get(base)
        if not lhs_type or "*" in lhs_type:
            return m.group(0)  # only targets a non-pointer LHS
        if base_type not in BYTE_PTR_TYPES:
            return m.group(0)
        return f"{indent}{lhs}{eq}({lhs_type}) ({base}{rest});"

    return _INT_ASSIGN_FROM_PTR_RE.sub(repl, c)


BARE_SP_RE = re.compile(r"\bsp\b")
SP_SLOT_DECL_RE = re.compile(
    r"^\s*(?:s8|u8|s16|u16|s32|u32|s64|u64|void\s*\*)\s+sp([0-9A-Fa-f]+)\s*;", re.MULTILINE)


def fix_bare_stack_pointer(c: str) -> str:
    """Give m2c's bare `sp` symbol (translate.py: `GlobalSymbol("sp",
    type=Type.ptr())`, its name for the raw stack-pointer REGISTER value
    used directly, as opposed to `spN` -- one specific named stack SLOT at
    frame offset N) a real, declared address to point at.

    m2c emits bare `sp` when it recovers a genuine `add rX, sp` /
    `mov rX, sp` -- the frame base computed into a register and then used
    for INDEXED access (`ldr rX, [rX, #0]` after adding a variable
    offset) -- rather than a single fixed-offset `[sp, #imm]` load, which
    is what produces a named `spN` local instead. `sp` alone is simply
    never declared as anything, a hard compile error (`sp' undeclared`).

    Confirmed against the real .s fragment, not guessed from the C alone
    (found live on sub_8121B5C): `*(((3 & spC) * 4) + sp)` traces to
    `movs r1, #3; ldr r2, [sp, #0xC]; ands r1, r2; lsls r1, r1, #2;
    add r1, sp; ldr r1, [r1, #0]` -- `add r1, sp` is a genuine two-
    operand register add (r1 += sp), not `[sp, #imm]`, confirming `sp`
    here really is the live stack-pointer VALUE at that point in the
    function, not a typo or a different named slot.

    A fixed frame with no further `add`/`sub sp` between prologue and
    epilogue (true for every ordinary Thumb function in this project --
    agbcc/GBA does not do alloca) means the stack pointer's value is
    constant for the whole function body and equal to the address of
    frame offset 0. Point `sp` at that address via whichever `spN` local
    the function already declares with the LOWEST offset -- reusing an
    existing declaration rather than inventing a new one, and matching
    the SAME "&spN as a byte-pointer base" idiom this project's own m2c
    output already uses throughout for adjacent-stack-slot access (the
    memcpy-shaped `(*(s32 *)((s8 *)(&sp0) + (4)))` lines are the same
    pattern, one call site over). Correct for any offset, not just 0:
    `&spN - N` is frame offset 0's address by ordinary pointer
    arithmetic, whether or not N is itself 0.

    Only fires when the function declares at least one spN local to
    anchor on -- if none exists, this cannot manufacture a safe address
    and correctly declines rather than guessing one.
    """
    if not BARE_SP_RE.search(c):
        return c
    offsets = [int(h, 16) for h in SP_SLOT_DECL_RE.findall(c)]
    if not offsets:
        return c
    n = min(offsets)
    hexn = format(n, "X")
    anchor = f"(&sp{hexn})" if n == 0 else f"((&sp{hexn}) - {n})"
    replacement = f"((s8 *)({anchor}))"
    return BARE_SP_RE.sub(lambda m: replacement, c)


SP_TOKEN_RE = re.compile(r"\bsp([0-9A-Fa-f]+)\b")
SP_ANCHOR_MAX_GAP = 0x200


def fix_undeclared_stack_slots(c: str) -> str:
    """CLAUDE.md's N.6: m2c fails to recognize a contiguous run of stack
    `ldr`s feeding a struct-shaped sequence of `str`s as ONE struct
    assignment, so it names the FIRST slot in the run (`sp44`) but keeps
    naming the REST (`sp48`, `sp4C`, ... `sp7C`) without ever declaring
    them -- a hard `X' undeclared` error. Worked example: `sub_8135084`.

    NOT the .s-fragment-scanning detector CLAUDE.md's own census sketched
    (finding a monotonic ldr/str run directly in the disassembly). This
    works at the C level instead, and is simpler for a real reason, not
    just convenience: the census's sketch was reaching for the .s
    fragment because it assumed the C had already lost the information
    needed to reconstruct the copy. It hasn't -- m2c's undeclared `spN`
    tokens ARE that information, spelled out one per missing slot, and
    the function's own surviving lines already show the exact idiom to
    generalize (`sub_8135084`'s own last line reads offset 0x3C from
    `&sp44` via `*(s32 *)((s8 *)(&sp44) + (0x3C))` -- m2c fell back to
    this shape for the ONE slot past wherever its `spN`-per-offset naming
    gives out, so the "right" C for the undeclared ones was sitting right
    there in the same body).

    THIS MUST NOT DECLARE A FRESH, UNINITIALIZED LOCAL for a missing
    `spN` -- that would be wrong, not just uncompilable: these slots are
    never assigned by an ordinary C statement anywhere in the function.
    They get their real values as a SIDE EFFECT of an earlier call that
    received a pointer to the low end of the same stack region (`sub_
    8134CAC(&sp44, arg0, &sp0)` in the worked example) and filled it via
    that output pointer. Declaring `s32 sp48;` fresh would compile to a
    DIFFERENT, unrelated stack slot and read garbage -- a wrong match
    that would only be caught later, if at all. Rewriting the reference
    as `*(TYPE *)((s8 *)(&spANCHOR) + offset)` instead reads from the
    SAME memory the call actually wrote, which is the only thing that
    can be correct here.

    Anchor: the DECLARED `spN` closest to the missing one (either
    direction -- a higher anchor works via a negative offset), reusing
    ITS type so the cast width matches the established convention for
    that stack region rather than guessing s32 unconditionally. Declines
    (leaves the token untouched, still uncompilable) rather than guessing
    when the nearest declared anchor is implausibly far away
    (SP_ANCHOR_MAX_GAP) -- a real gap that far apart is more likely a
    genuinely different part of the frame than the same contiguous run.
    """
    types = _local_types(c)
    sp_offsets: dict[int, str] = {}
    for local_name, typ in types.items():
        m = re.match(r"^sp([0-9A-Fa-f]+)$", local_name)
        if m:
            sp_offsets[int(m.group(1), 16)] = typ
    if not sp_offsets:
        return c

    def repl(m: re.Match) -> str:
        n = int(m.group(1), 16)
        if n in sp_offsets:
            return m.group(0)  # already declared -- leave it alone
        anchor = min(sp_offsets, key=lambda k: abs(k - n))
        if abs(anchor - n) > SP_ANCHOR_MAX_GAP:
            return m.group(0)  # too far to trust -- refuse, don't guess
        typ = sp_offsets[anchor]
        base_type = typ.replace("*", "").strip()
        cast = f"{base_type} {'*' * (typ.count('*') + 1)}"
        diff = n - anchor
        offset_expr = f"+ ({diff})" if diff >= 0 else f"- ({-diff})"
        return f"(*({cast})((s8 *)(&sp{format(anchor, 'X')}) {offset_expr}))"

    return SP_TOKEN_RE.sub(repl, c)


_PARAM_LIST_RE = r"^[\w \*]+?\b{}\s*\(([^;{{)]*)\)\s*\{{"
_PARAM_ITEM_RE = re.compile(
    r"^(struct\s+\w+\s*\*|(?:void|u8|s8|u16|s16|u32|s32|u64|s64)\s*\*?)\s*(\w+)$")


def _param_types(c: str, name: str) -> dict:
    """name -> declared C type for each of `name`'s OWN parameters,
    including struct-typed ones (`struct Sprite *`) that _local_types()
    cannot see at all -- LOCAL_DECL_RE's keyword set has no `struct`
    alternative, and this scans a completely different part of the source
    (the signature, not the body) regardless.

    Needed because the scaled-pointer-arithmetic bug below is not confined
    to locals: `void sub_801E150(struct Sprite *arg0, ...)` then
    `var = arg0 + 0x23` is exactly the same defect, and arg0 only appears
    in the signature, never in a body declaration.
    """
    m = re.search(_PARAM_LIST_RE.format(re.escape(name)), c, re.MULTILINE)
    if not m:
        return {}
    types = {}
    for param in m.group(1).split(","):
        pm = _PARAM_ITEM_RE.match(param.strip())
        if pm:
            types[pm.group(2)] = re.sub(r"\s+", " ", pm.group(1)).strip().replace(" ", "")
    return types


def fix_scaled_pointer_arithmetic(c: str, name: str) -> str:
    """Route `TYPED_PTR +/- OFFSET` through an explicit byte cast when
    TYPED_PTR's pointee is wider than one byte: `struct Sprite *arg0; var =
    arg0 + 0x23;` becomes `var = (var's type) ((s8 *)(arg0) + 0x23);`

    THE BUG THIS FIXES, FOUND WHILE EXTENDING fix_pointer_assign_without_cast
    ABOVE TO ALSO HANDLE THIS SHAPE -- it must not, and this is why. `struct
    Sprite *arg0; arg0 + 0x23` scales by sizeof(struct Sprite) as a plain
    property of C's pointer arithmetic, BEFORE any outer cast is applied --
    an outer `(void *)` changes the RESULT's type, not what the addition
    computed, so it would silence the "incompatible pointer type" warning
    while leaving the value wrong. Confirmed live: sampling 60 m2c-seeded
    rows found 5 already holding exactly that shape from the unguarded
    version of the other rule (e.g. `sp2C = (s32 *) (temp_r1_31 + 8)`,
    temp_r1_31 declared `s32 *` -- silently 32 bytes past temp_r1_31, not 8).

    NO SIZEOF KNOWLEDGE NEEDED to fix this correctly, despite first looking
    like it would need one: m2c reconstructs every address from raw machine
    code, which is always byte-addressed, so it NEVER means scaled
    arithmetic -- forcing byte semantics via `(s8 *)` is unconditionally
    correct regardless of the pointee's actual size, the same idiom already
    used everywhere else in this project's m2c output
    (`*(TYPE *)((s8 *)(base) + (offset))`).

    Deliberately narrow: only fires on `IDENT +/- OFFSET` where IDENT's type
    is known (from _local_types() or _param_types()) and is a pointer whose
    pointee is NOT one byte wide (see fix_integer_assign_from_pointer's
    BYTE_PTR_TYPES -- those are exactly the types with no scaling to fix).
    Leaves the LHS's own type as the outer cast, so the assignment's
    apparent type is unchanged; only the inner arithmetic's semantics move
    from scaled to byte-wise, which is the actual bug being fixed.
    """
    types = {**_local_types(c), **_param_types(c, name)}
    if not types:
        return c

    def repl(m: re.Match) -> str:
        indent, lhs, eq, base, rest = m.group(1), m.group(2), m.group(3), m.group(4), m.group(5)
        lhs_type = types.get(lhs)
        base_type = types.get(base)
        if not lhs_type or "*" not in lhs_type:
            return m.group(0)  # only useful when the result is itself a pointer
        if not base_type or not base_type.endswith("*") or base_type in BYTE_PTR_TYPES:
            return m.group(0)
        return f"{indent}{lhs}{eq}({lhs_type.replace('*', ' *')}) ((s8 *)({base}){rest});"

    return _PTR_ASSIGN_RE_SCALED.sub(repl, c)


_PTR_ASSIGN_RE_SCALED = re.compile(
    rf"^(\s*)(\w+)(\s*=\s*)(\w+)(\s*{_ARITH_OP}\s*.+?);\s*$", re.MULTILINE)


def fix_untyped_address_access(c: str, name: str) -> str:
    """Generalizes fix_uncast_address_dereference/fix_void_dereference/
    fix_indirect_call_precedence above: those three each patch one NARROW
    shape (a bare 0x-literal dereference, a void*-cast dereference, a
    dereferenced function-pointer call's operator precedence). The larger
    pattern behind all three is one defect, not many: m2c reconstructs an
    address as untyped arithmetic - a bare identifier (a local, or a ROM
    symbol like dword_XXX/sub_XXX) plus/minus an offset - and then
    dereferences or CALLS it with no cast at all. Four agbcc error classes
    (`invalid type argument of unary *`, `called object is not a
    function`, `void value not ignored`, `invalid use of void expression`)
    are this one root cause wearing different diagnostics depending on how
    the untyped result gets used.

    Only touches a head that is genuinely untyped (not already a real
    pointer-typed local, checked via _local_types()/_classify_untyped_head())
    - dereferencing/calling an already-correctly-typed pointer needs no
    cast, and adding one there would be a no-op at best.

    Purely a cast insertion, same as the three narrower rules above: the
    operand and its arithmetic are never altered, only wrapped in a cast,
    so this can only turn uncompilable C into compilable C (or leave
    already-fine C untouched) - never change what a successfully-produced
    seed means. A wrong width guess costs a worse asm-differ score, exactly
    like the existing rules already accept; it can never become a wrong
    committed MATCH, because finish_match()'s from-scratch build + ROM
    sha1 check is what actually gates that, independent of seed quality.
    """
    local_types = _local_types(c)

    def try_fix_at(s: str, open_idx: int, is_call: bool):
        """s[open_idx] is '(' immediately after either a bare '*' (a
        dereference) or nothing/an operator (a potential call target).
        Returns (replacement_text, end_idx) or None if this span isn't a
        genuinely untyped address access."""
        close_idx = _balanced_span(s, open_idx)
        if close_idx is None:
            return None
        inner = s[open_idx + 1 : close_idx - 1]
        if not (UNTYPED_EXPR_SHAPE_RE.match(inner) or TYPED_DEREF_HEAD_RE.match(inner)):
            return None
        if UNTYPED_HEX_RE.match(inner):
            return None  # fix_uncast_address_dereference's job
        if is_call:
            # Must actually be called: a real '(' right after (skipping
            # whitespace), not just any parenthesized expression.
            j = close_idx
            while j < len(s) and s[j] in " \t\n":
                j += 1
            if j >= len(s) or s[j] != "(":
                return None
            before = s[:open_idx].rstrip()
            if UNTYPED_CAST_HEAD_RE.search(before):
                return None  # already cast (fix_indirect_call_precedence's shape)
        width = _classify_untyped_head(inner, local_types)
        if width is None:
            return None
        inner_stripped = inner.strip()
        if is_call:
            # Old-style (unspecified-args) function pointer cast - the same
            # K&R idiom this project's own src/*.c already uses throughout
            # for a call whose real parameter types aren't independently
            # known; valid C, and syntactically safe regardless of arity.
            return f"((s32 (*)())({inner_stripped}))", close_idx
        return f"*({width} *)({inner_stripped})", close_idx

    out = []
    i, n = 0, len(c)
    while i < n:
        if c[i] == "*" and i + 1 < n and c[i + 1] == "(" and (
            i == 0 or (c[i - 1] not in "_" and not c[i - 1].isalnum() and c[i - 1] != ")")
        ):
            r = try_fix_at(c, i + 1, is_call=False)
            if r:
                repl, end = r
                out.append(repl)
                i = end
                continue
        elif c[i] == "(" and (i == 0 or (c[i - 1] not in "_" and not c[i - 1].isalnum() and c[i - 1] != ")")):
            r = try_fix_at(c, i, is_call=True)
            if r:
                repl, end = r
                out.append(repl)
                i = end
                continue
        out.append(c[i])
        i += 1
    return "".join(out)

    c = UNTYPED_FNPTR_CAST_RE.sub(call_repl, c)
    return c


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
