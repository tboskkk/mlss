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
