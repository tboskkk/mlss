#!/usr/bin/env python3
"""Silence agbcc's pointer/integer warnings with codegen-neutral casts.

WHY THIS IS SAFE, AND WHY IT IS WORTH DOING.

agbcc is invoked with `-Wimplicit -Wparentheses -Werror`, so a warning is a
hard compile failure. Measured over a random sample of 45 seeds from the
"does not compile" pile, clustering on the FATAL error (compiling with
warnings allowed so only real errors remain): **22% compile as soon as the
warnings are permitted**. Those seeds are not wrong -- m2c produced C that
says exactly the right thing about types agbcc wants spelled out.

A cast between a 32-bit integer and a pointer on ARMv4T does not change a
single instruction: it changes what the front end will accept, not what the
back end emits. So adding one to silence such a warning cannot alter the
match. That is an argument, not a proof, which is why apply() PROVES it per
function: it compiles the body with warnings allowed, compiles the
cast-inserted body with `-Werror`, and requires the two `.o` files to be
byte-identical. Anything else is rejected and the original body is kept.

Handles the shapes that actually dominate the sample:

    assignment makes integer from pointer without a cast
    assignment makes pointer from integer without a cast
    comparison between pointer and integer
    passing arg N of `f' makes integer from pointer without a cast

Usage (measurement, not a pipeline step):
    python3 tools/factory/werror_casts.py --sample 40
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import declare_missing  # noqa: E402
import gitops  # noqa: E402

# Warnings agbcc emits, with the side that needs the cast.
WARN_RE = re.compile(
    r"^(?P<file>[^:]+):(?P<line>\d+):\s*warning:\s*(?P<msg>.+)$")

LAX_CFLAGS = ("CFLAGS=-O2 -mthumb-interwork -fno-common -Wparentheses "
              "-g -ffix-debug-line")
MAX_ROUNDS = 6


_ROM_SYMS: frozenset[str] | None = None


def _rom_symbols() -> set[str]:
    """Cached ROM symbol set for declare_missing. Same source as
    rescore_seeds.known(), read directly to avoid an import cycle."""
    global _ROM_SYMS
    if _ROM_SYMS is None:
        _ROM_SYMS = frozenset(declare_missing.rom_symbols())
    return set(_ROM_SYMS)


def _compile(stem: str, lax: bool) -> subprocess.CompletedProcess:
    obj = f"build/src/{stem}.o"
    subprocess.run(["rm", "-f", obj, f"build/src/{stem}.s"], cwd=gitops.REPO)
    cmd = ["./container.sh", "make", "NONMATCHING=1"]
    if lax:
        cmd.append(LAX_CFLAGS)
    cmd.append(obj)
    return gitops.run(cmd)


def _obj_bytes(stem: str) -> bytes | None:
    p = gitops.REPO / "build" / "src" / f"{stem}.o"
    try:
        return p.read_bytes()
    except OSError:
        return None


ISO_DIR = gitops.REPO / ".werror_casts_iso"
STRICT_CFLAGS = ("-O2 -mthumb-interwork -fno-common -Wimplicit -Wparentheses "
                  "-Werror -g -ffix-debug-line")


def _compile_isolated(name: str, body: str, lax: bool):
    """Same idea as gitops.compiles_in_isolation(), but keeping the .o and
    returning the full CompletedProcess -- apply()'s round-loop needs the
    object bytes for the identity proof and the stderr text to find which
    line each warning is on, neither of which the bool-only original
    exposes.

    Exists as a FALLBACK for apply()'s real-file precondition check, not a
    replacement for it: splicing into the real file and compiling the real
    src/*.c (the original path, still tried first) lets declare_missing
    repair a genuine "sibling defined later in this file" forward
    reference, which isolation has no way to see. What isolation fixes
    instead is the opposite failure mode -- an unrelated, differently
    BROKEN sibling failing the whole translation unit for a reason that
    has nothing to do with this candidate at all. Found live on
    sub_810D3B8: its own file's neighbour sub_810D34C is not valid C at
    all (raw register-name pseudocode -- `r3_val`, `r0_final`, `r12` --
    undeclared identifiers, syntax errors), which fails apply()'s real-file
    lax compile outright and reports "fails even with warnings allowed",
    even though sub_810D3B8 itself has exactly one warning and nothing
    else wrong. Isolation removes the neighbour from the picture entirely.
    """
    ISO_DIR.mkdir(parents=True, exist_ok=True)
    src = ISO_DIR / f"{name}.c"
    pre = ISO_DIR / f"{name}.i"
    asm = ISO_DIR / f"{name}.s"
    obj = ISO_DIR / f"{name}.o"
    src.write_text('#include "global.h"\n#include "common.h"\n\n'
                   + gitops.rom_symbol_declarations(body) + body + "\n")
    rel_src = src.relative_to(gitops.REPO).as_posix()
    rel_pre = pre.relative_to(gitops.REPO).as_posix()
    rel_asm = asm.relative_to(gitops.REPO).as_posix()
    rel_obj = obj.relative_to(gitops.REPO).as_posix()
    cflags = LAX_CFLAGS.split("=", 1)[1] if lax else STRICT_CFLAGS
    # Mirrors the real Makefile's $(C_BUILDDIR)/%.o recipe exactly (cpp ->
    # agbcc -> the same trailing .align agbcc's own rule appends -> as),
    # just against a standalone staged file instead of a real src/*.c.
    script = (
        f"arm-none-eabi-cpp -I tools/agbcc/include -nostdinc -undef "
        f"-iquote include -Wno-trigraphs {rel_src} -o {rel_pre} && "
        f"tools/agbcc/bin/agbcc {rel_pre} {cflags} -o {rel_asm} && "
        f"printf '.text\\n\\t.align 2, 0\\n' >> {rel_asm} && "
        f"arm-none-eabi-as -mcpu=arm7tdmi -I include -o {rel_obj} {rel_asm}"
    )
    r = gitops.run(["./container.sh", "bash", "-c", script])
    obj_bytes = None
    if r.returncode == 0:
        try:
            obj_bytes = obj.read_bytes()
        except OSError:
            pass
    for f in (src, pre, asm, obj):
        try:
            f.unlink()
        except FileNotFoundError:
            pass
    return r, obj_bytes


def _poisoned_by_sibling(stderr: str, own_c_name: str) -> bool:
    """True when a real-file lax compile's failure is entirely attributable
    to a DIFFERENT function in the same file, not `own_c_name` itself --
    the TU-poisoning shape (CLAUDE.md section I/THE LAW). Parses agbcc's
    "In function `X':" headers to attribute each diagnostic; a plain
    `grep 'rror'` over the whole blob would miss this distinction entirely
    (THE LAW's own "filters that drop the evidence" entry) since it cannot
    tell which function a given line belongs to."""
    current = None
    saw_error_elsewhere = False
    for line in stderr.splitlines():
        m = re.match(r".*In function `([^']+)':", line)
        if m:
            current = m.group(1)
            continue
        if ": warning:" in line:
            continue
        if re.match(r"^[^:]+:\d+:", line):
            if current == own_c_name:
                return False  # a genuine diagnostic IS attributed to us
            if current is not None:
                saw_error_elsewhere = True
    return saw_error_elsewhere


def _cast_assignment(line: str, to_pointer: bool) -> str | None:
    """`lhs = rhs;` -> `lhs = (cast)(rhs);` on the right-hand side only."""
    m = re.match(r"^(\s*)(.+?)(\s*=\s*)(.+?)(;\s*)$", line)
    if not m or "==" in line:
        return None
    indent, lhs, eq, rhs, tail = m.groups()
    cast = "(void *)" if to_pointer else "(s32)"
    if rhs.startswith(cast):
        return None
    return f"{indent}{lhs}{eq}{cast}({rhs}){tail}"


def _cast_comparison(line: str, distinct_pointers: bool = False) -> str | None:
    """Cast one side of a mismatched comparison.

    Two shapes, both measured in the sample: pointer-vs-integer (cast the
    pointer side to s32) and two DISTINCT pointer types (cast the right
    side to void *, which compares equal without changing the compare
    instruction)."""
    if distinct_pointers:
        m = re.search(r"(==|!=)", line)
        if not m:
            return None
        op = m.group(1)
        head, _, tail = line.partition(op)
        rhs = tail.rstrip().rstrip(";")
        if rhs.strip().startswith("(void *)"):
            return None
        return f"{head}{op} (void *)({rhs.strip()});"
    m = re.search(r"(==|!=|<=|>=|<|>)", line)
    if not m:
        return None
    op = m.group(1)
    head, _, tail = line.partition(op)
    head_s = head.strip()
    tail_s = tail.rstrip().rstrip(";").strip()

    def is_pointer_expr(s: str) -> bool:
        """A side that is PROVABLY a pointer value, not merely a side that
        happens to contain a '*' character. Those are not the same thing:
        `*(s32 *)(...)` CONTAINS '*' twice but DEREFERENCES to a scalar
        (s32) -- the '*' is syntax, not a signal about the resulting
        value's type. `&name` is an actual pointer and contains no '*' at
        all. Found live on sub_807DFE8's `(*(s32 *)((s8 *)(arg0) +
        (0x4C))) == &sub_8086960` -- the old "*" in head` check cast the
        already-scalar left side (a redundant, no-op (s32) around an s32),
        left the true pointer side (`&sub_8086960`) untouched, and the
        comparison warning never actually cleared."""
        return bool(s.startswith("&")
                    or re.match(r"^\(\s*[\w\s]+\*\*+\s*\)", s)
                    or re.match(r"^\*\(\s*[\w\s]+\*\*+\s*\)", s))

    def cast_tail(pred) -> str | None:
        """Wrap the TAIL side in (s32), preserving whatever trailing
        syntax follows the expression verbatim -- a plain statement's
        trailing ';', or (found live on sub_807DFE8) an `if (a == b) {`
        condition's leftover ') {' from the enclosing paren.

        The old code did `tail.rstrip().rstrip(';')` and then always
        appended a literal ';', which silently assumed every comparison
        is a bare statement. On an `if (...) {` line that turned
        `&sub_8086960) {` into `(s32)(&sub_8086960) {);` -- a stray `);`
        grafted onto a syntactically complete if-condition, which the
        next round's compile then reported as a plain syntax error with
        no salvageable warning to act on. Matching the expression
        PRECISELY and keeping everything after it untouched avoids
        assuming line shape at all.
        """
        stripped = tail.lstrip()
        lead_ws = tail[: len(tail) - len(stripped)]
        m = re.match(r"&\w+|\*\([\w\s]+\*+\)\([^()]*\)|[A-Za-z_]\w*(?:\.\w+|\[[^\[\]]*\])*", stripped)
        if not m or "(s32)" in stripped[: m.end()]:
            return None
        expr, rest = m.group(0), stripped[m.end():]
        if not pred(expr):
            return None
        return f"{head}{op}{lead_ws}(s32)({expr}){rest}"

    # Prefer the precise pointer check; fall back to the older, weaker
    # "*" heuristic for shapes it still correctly covers (e.g. a bare
    # pointer-typed local on one side, which has no '&' or '**' marker of
    # its own but is still the side "*" would have matched before).
    if is_pointer_expr(head_s) and "(s32)" not in head_s:
        return f"(s32)({head_s}) {op} {tail}"
    r = cast_tail(is_pointer_expr)
    if r:
        return r
    if "*" in head and "(s32)" not in head:
        return f"(s32)({head_s}) {op} {tail}"
    if "*" in tail and "(s32)" not in tail:
        r = cast_tail(lambda _: True)
        if r:
            return r
    return None


def _cast_arg(line: str, argno: int) -> str | None:
    """Cast the Nth argument of the call on this line to s32."""
    m = re.search(r"(\w+)\s*\((.*)\)", line)
    if not m:
        return None
    args, start, end = m.group(2), m.start(2), m.end(2)
    parts, depth, cur = [], 0, ""
    for ch in args:
        if ch == "," and depth == 0:
            parts.append(cur); cur = ""; continue
        if ch in "([": depth += 1
        elif ch in ")]": depth -= 1
        cur += ch
    parts.append(cur)
    if not (1 <= argno <= len(parts)):
        return None
    if parts[argno - 1].strip().startswith("(s32)"):
        return None
    parts[argno - 1] = f" (s32)({parts[argno - 1].strip()})"
    return line[:start] + ",".join(parts) + line[end:]


def _fix_line(line: str, msg: str) -> str | None:
    if "makes integer from pointer" in msg and "passing arg" not in msg:
        return _cast_assignment(line, to_pointer=False)
    if "makes pointer from integer" in msg and "passing arg" not in msg:
        return _cast_assignment(line, to_pointer=True)
    if "comparison between pointer and integer" in msg:
        return _cast_comparison(line)
    if "comparison of distinct pointer types" in msg:
        return _cast_comparison(line, distinct_pointers=True)
    m = re.search(r"passing arg (\d+)", msg)
    if m:
        return _cast_arg(line, int(m.group(1)))
    return None


def apply(name: str, body: str) -> tuple[str | None, str]:
    """-> (fixed_body or None, reason).

    Caller must hold the repo lock. Reverts the source it touches.
    """
    c_path = gitops.splice_into_else(name, body)
    if c_path is None:
        return None, "no guard block"
    stem = c_path.stem
    try:
        # DECLARE FIRST, THEN CAST. Order matters, and the wrong order turns
        # this whole tool into a no-op on exactly the functions it exists for.
        #
        # The precondition below ("compiles with warnings allowed") is a test
        # of whether the only thing standing between this candidate and a
        # clean build is -Werror. But a spliced candidate routinely brings a
        # reference to a sibling declared nowhere -- defined LATER in the same
        # file, so agbcc reports `X undeclared` / `used prior to declaration`.
        # That is a hard error, it survives LAX_CFLAGS, and the precondition
        # then rejects the candidate with "fails even with warnings allowed (a
        # real error, not -Werror)" -- which is TRUE as measured and false
        # about the candidate.
        #
        # Measured on sub_805DE90 and sub_809A120, both of whose candidates
        # compile instruction-for-instruction identical to retail in
        # isolation: declare_missing supplies one line
        # (`void sub_805DEB4(void *arg0);`), the hard error disappears, and
        # what remains is a single `assignment from incompatible pointer type`
        # warning -- precisely this tool's target class (CLAUDE.md section G:
        # ~22% of the non-compiling pile is -Werror and nothing else).
        #
        # Same shape as section M's sequencing lesson ("unblock first, rescue
        # second"): a repair that runs before its prerequisite measures the
        # prerequisite's failure and blames the thing it was asked to fix.
        #
        # The declarations are reverted with the rest of the file by the
        # `finally` below, which is correct -- this is a predicate, and
        # rescore_seeds.plain_score() re-runs declare_missing itself on the
        # promotion path. They only need to exist while we decide.
        declare_missing.repair_in_place(stem, _rom_symbols(), nonmatching=True)

        lax = _compile(stem, lax=True)
        use_iso = False
        if lax.returncode != 0:
            # Real-file precondition failed. Before giving up, check
            # whether the failure is entirely attributable to a DIFFERENT
            # function sharing this file -- TU poisoning (CLAUDE.md THE
            # LAW), not a real problem with this candidate. Found live on
            # sub_810D3B8: its neighbour sub_810D34C is not valid C at all
            # (raw register-name pseudocode), which fails this precondition
            # for every function in the file regardless of their own
            # merit. Isolation sidesteps it by removing the neighbour.
            stderr = lax.stderr or ""
            if _poisoned_by_sibling(stderr, name):
                iso_lax, _ = _compile_isolated(name, body, lax=True)
                if iso_lax.returncode != 0:
                    return None, "fails even isolated with warnings allowed (a real error, not -Werror)"
                use_iso = True
            else:
                return None, "fails even with warnings allowed (a real error, not -Werror)"

        reference = (_compile_isolated(name, body, lax=True)[1] if use_iso
                     else _obj_bytes(stem))

        cur = body
        for _ in range(MAX_ROUNDS):
            if use_iso:
                strict, after = _compile_isolated(name, cur, lax=False)
                text = (strict.stdout or "") + (strict.stderr or "")
                # Isolation stages its own scratch file, not the spliced
                # real one -- line numbers are relative to the body's OWN
                # start (after the two #include + declarations lines this
                # module's staging always emits), not an offset found by
                # searching the real file's text.
                offset = 3 + gitops.rom_symbol_declarations(cur).count("\n")
                body_lines = cur.splitlines()
            else:
                gitops.splice_into_else(name, cur)
                strict = _compile(stem, lax=False)
                after = _obj_bytes(stem) if strict.returncode == 0 else None
                text = (strict.stdout or "") + (strict.stderr or "")
                file_lines = c_path.read_text().splitlines()
                body_lines = cur.splitlines()
                # Where does the candidate body start in the spliced file?
                try:
                    offset = file_lines.index(body_lines[0])
                except (ValueError, IndexError):
                    return None, "could not locate the body in the spliced file"
            if strict.returncode == 0:
                if reference is not None and after == reference:
                    return cur, ("clean under -Werror, object byte-identical"
                                 + (" (isolated, sibling was poisoning the real file)"
                                    if use_iso else ""))
                return None, "casts CHANGED codegen -- rejected"
            changed = False
            for wl in text.splitlines():
                m = WARN_RE.match(wl.strip())
                if not m:
                    continue
                idx = int(m.group("line")) - 1 - offset
                if not (0 <= idx < len(body_lines)):
                    continue
                fixed = _fix_line(body_lines[idx], m.group("msg"))
                if fixed and fixed != body_lines[idx]:
                    body_lines[idx] = fixed
                    changed = True
            if not changed:
                return None, "no cast rule matched the remaining warnings"
            cur = "\n".join(body_lines)
        return None, f"still warning after {MAX_ROUNDS} rounds"
    finally:
        gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
        subprocess.run(["rm", "-f", f"build/src/{stem}.o", f"build/src/{stem}.s"],
                       cwd=gitops.REPO)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sample", type=int, default=30)
    ap.add_argument("--seed", type=int, default=4242)
    args = ap.parse_args()

    import random, collections, time
    conn = db.connect(readonly=True)
    rows = [r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state IN ('needs_attempt','stalled') "
        "AND notes LIKE '%does not compile%' AND candidate_body IS NOT NULL")]
    random.seed(args.seed)
    sample = random.sample(rows, min(args.sample, len(rows)))
    print(f"pile {len(rows)}, trying {len(sample)}\n")

    tally = collections.Counter(); wins = []
    for i, name in enumerate(sample, 1):
        body = conn.execute("SELECT candidate_body FROM functions WHERE name=?",
                            (name,)).fetchone()[0]
        with gitops.repo_lock(what=f"werror_casts {name}"):
            fixed, why = apply(name, body)
        tally[why] += 1
        if fixed:
            wins.append(name)
            print(f"  [{i}/{len(sample)}] {name:22} FIXED -- {why}")
        time.sleep(0.3)

    print(f"\n=== {len(sample)} sampled ===")
    for k, v in tally.most_common():
        print(f"  {v:3} ({100*v/len(sample):4.1f}%)  {k}")
    if wins:
        print(f"\nfixed: {wins}")


if __name__ == "__main__":
    main()
