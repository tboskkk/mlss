#!/usr/bin/env python3
"""Repair translation units broken by MISSING declarations, not by bad C.

The problem this solves, and why it is worth a tool.

agbcc runs `-Wimplicit -Werror`, so a single reference to an undeclared
`sub_XXXXXXX` is fatal to the WHOLE translation unit -- every other function
in that file becomes uncompilable, undiffable and unmatchable, however
correct its own C is. That is section D/I/M of CLAUDE.md, and it defeats the
step AFTER a search succeeds as well as the step before it: tier2 re-scores a
permuter win in the real file, the file will not build, and a finished match
is thrown away and re-searched from nothing.

Measured when this was written, over the 99 source files that own a
`twin_backfill` candidate: 16 failed to compile untouched, and the errors
were 19 `X undeclared` plus 13 `implicit declaration of function X` -- i.e.
almost entirely missing declarations for real ROM symbols. Those references
are correct; nobody ever declared their targets. The usual origin is section
F's splice bug, which cut m2c's callee prototypes off the top of a candidate
when reattaching it to its real source file.

**The classification is deterministic, and getting it right is the whole
trick.** A `sub_XXXXXXX` symbol can legitimately need either shape, and the
wrong one is itself a fatal error:

    used as `X(...)`   -> `int X();`         ; declaring it data gives
                                               "called object is not a function"
                                               (24.4% of section G's errors)
    used as `&X`       -> `extern s32 X;`    ; declaring it a function makes
                                               `&X` a function pointer and the
                                               assignment a type error

So the shape is chosen from how the FILE ACTUALLY USES the symbol, which is
unambiguous, rather than from a guessed signature. This is deliberately NOT
signature inference -- `tools/factory/infer_signatures.py` measured that at
83.6% arity accuracy and made things strictly worse (139 errors -> 164),
because a wrong signature costs more than a missing one gains. A K&R `int
X();` declares no parameters at all, so it can never conflict with a call's
argument list; it only asserts the one thing we know for certain from the
disassembly, which is that the symbol is a function.

`extern s32 X;` for the address-taken case is the convention m2c already
emits and that already-matched functions already use byte-exactly (e.g.
`sub_8060438`: `*((s32 **)((s8 *)arg0 + 0x4C)) = &sub_8060544;`), so this
adds nothing new to the codebase's idiom vocabulary.

Two guards against making things worse:

  * A symbol DEFINED in this same file gets its real prototype hoisted from
    its own definition, never a K&R guess -- that is section M's cause #2
    (a caller-side guess contradicting the definition below it) and the
    definition is always the better-informed signature.
  * Only symbols that genuinely exist in the ROM are declared. A draft
    referencing `undefined4` (a Ghidra-ism seen in the wild here) is a
    broken draft for `quarantine_broken_drafts.py`, not something to paper
    over with a declaration.

Declarations emit no code, so a successful run must leave the built ROM
byte-identical. `--verify` asserts exactly that.
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402

SRC = gitops.REPO / "src"
MAX_ROUNDS = 4

IMPLICIT_RE = re.compile(r"implicit declaration of function `(\w+)'")
UNDECL_RE = re.compile(r"`(\w+)' undeclared")


def rom_symbols() -> set[str]:
    """Every symbol that really exists: ROM functions plus the symbol tables."""
    syms: set[str] = set()
    for p in (gitops.REPO / "asm").rglob("*.s"):
        try:
            syms |= set(re.findall(r"(?:thumb|arm)_func_start\s+(\S+)",
                                   p.read_text(errors="ignore")))
        except OSError:
            pass
    for p in (gitops.REPO / "tools" / "symbols").glob("*.txt"):
        try:
            for line in p.read_text(errors="ignore").splitlines():
                m = re.match(r"\s*(\w+)\s*=", line)
                if m:
                    syms.add(m.group(1))
        except OSError:
            pass
    for p in SRC.rglob("*.c"):
        try:
            syms |= set(re.findall(r"^[A-Za-z_][\w \t\*]*?(\w+)\s*\([^;]*\)\s*\{",
                                   p.read_text(errors="ignore"), re.M))
        except OSError:
            pass
    return syms


def compile_file(stem: str, nonmatching: bool = True) -> str:
    """Compile one object. Returns '' on success.

    `nonmatching` must match the mode the CALLER will ultimately judge in,
    because the two modes do not see the same declarations. Under
    NONMATCHING=1 every sibling's `#else` draft is compiled, so a declaration
    written inside one of those drafts is in scope for the whole unit; in a
    plain build those branches are replaced by their retail `.include` and
    the declaration disappears with them. Measuring in one mode and building
    in the other reports a file as repaired and then fails on a symbol the
    repair never saw: `sub_8064E08` compiled clean under NONMATCHING=1 and
    died on an implicit `sub_8082E1C` in the plain build that gated it.

    The object is removed first, without exception. Make decides what to
    rebuild from mtimes and cannot see that `-DNONMATCHING` is not a file, so
    an object left over from a build in the other mode is reported as up to
    date and the compile silently does not happen -- which reads as "this
    file is fine".
    """
    obj = gitops.REPO / "build" / "src" / f"{stem}.o"
    obj.unlink(missing_ok=True)
    cmd = ["./container.sh", "make"]
    if nonmatching:
        cmd.append("NONMATCHING=1")
    cmd.append(f"build/src/{stem}.o")
    r = subprocess.run(cmd, cwd=gitops.REPO, capture_output=True, text=True)
    # A NONMATCHING object must never survive: the next plain `make` would
    # link it into the ROM, where every #else branch was compiled instead of
    # the retail .include (CLAUDE.md, "Any tool that runs a NONMATCHING build").
    obj.unlink(missing_ok=True)
    return "" if r.returncode == 0 else (r.stdout + r.stderr)


def definition_prototype(text: str, sym: str) -> str | None:
    """The real prototype of `sym`, if this file defines it."""
    m = re.search(rf"^([A-Za-z_][\w \t\*]*?\b{re.escape(sym)}\s*\([^;{{]*\))\s*\{{",
                  text, re.M)
    return f"{m.group(1)};" if m else None


def declaration_for(text: str, sym: str) -> str | None:
    """The declaration this file needs for `sym`.

    Ordered best-informed first, because a K&R `int X();` is a LAST resort,
    not a neutral one: it declares no parameters (so it cannot conflict with
    any call's argument list, which is why it is safe on that axis) but it
    does assert an `int` RETURN. Emitting it for a function that really
    returns a pointer produces "assignment makes pointer from integer without
    a cast", fatal under -Werror -- which is how it broke `sub_810CCC8`:
    the header carried this placeholder while m2c's own, correct
    `void *sub_807D2D0(s32 *, s32, s32);` sat inertly inside a `#else`.

      1. a definition in this file            -- authoritative
      2. the RETURN TYPE of a prototype already written anywhere in this
         file, including inside a guard's `#else` where a plain build cannot
         see it -- that is m2c's own declaration and it knows the return type
      3. address-taken -> `extern s32 X;`
      4. called -> `int X();`, the placeholder

    Case 2 takes the return type and DISCARDS the parameter list, emitting
    `void *X();` rather than `void *X(s32 *, s32, s32);`. m2c infers the
    parameters per call site and different call sites in one file disagree:
    hoisting the full prototype broke the build with "passing arg 1 of
    sub_807C298 makes integer from pointer without a cast". That is section
    H's signature-inference hazard, which measured strictly harmful. The
    return type is the part that is actually needed here and the part that is
    consistent; K&R empty parameters stay compatible with every call.
    """
    proto = definition_prototype(text, sym)
    if proto:
        return proto
    # A real prototype somewhere in the file (typically m2c's, inside a
    # `#else`). Keep only its return type.
    for m in re.finditer(
            rf"^\s*(?:extern\s+)?([A-Za-z_][\w \t\*]*?)\b{re.escape(sym)}\s*\([^;{{]*\)\s*;",
            text, re.M):
        ret = " ".join(m.group(1).split())
        if ret and ret != "int":
            return f"{ret} {sym}();" if ret.endswith("*") else f"{ret} {sym}();"
    if re.search(rf"&\s*{re.escape(sym)}\b", text):
        return f"extern s32 {sym};"
    if re.search(rf"\b{re.escape(sym)}\s*\(", text):
        return f"int {sym}();"
    return None


def insert_point(text: str) -> int:
    """End of the file's HEADER region -- after the includes, before any code.

    Deliberately not "the last asm_unified line in the file": every
    `#ifndef NONMATCHING` block contains one, and these files run to tens of
    thousands of characters, so that lands the declarations in the middle of
    the file, AFTER the use sites they are supposed to declare. The header
    region ends at the first guard block or function definition.
    """
    body = re.search(r"^\s*(?:#ifndef\s+NONMATCHING|[A-Za-z_][\w \t\*]*\w\s*\([^;]*\)\s*\{)",
                     text, re.M)
    limit = body.start() if body else len(text)
    pos = 0
    for m in re.finditer(r"^\s*(#include\b.*|asm_unified\(.*\);)\s*$", text, re.M):
        if m.end() > limit:
            break
        pos = m.end()
    return pos


def repair_in_place(stem: str, known: set[str],
                    nonmatching: bool = True) -> tuple[str, list[str]]:
    """Add whatever declarations `stem` is missing, editing it in place.

    Returns (remaining compiler error or "", declarations added). Does NOT
    revert on failure -- callers that need that own the snapshot.

    Split out of fix_file() so twin_backfill.py can call it on an
    ALREADY-SPLICED file. A propagated twin routinely brings callees that
    were declared in the template's source file and are not declared in the
    target's, so the candidate is rejected as "does not compile" for a reason
    that has nothing to do with whether the C is right. Splice, then declare,
    then score.
    """
    path = SRC / f"{stem}.c"
    err = compile_file(stem, nonmatching)
    added: list[str] = []
    if not err:
        return "", added
    for _ in range(MAX_ROUNDS):
        missing = set(IMPLICIT_RE.findall(err)) | set(UNDECL_RE.findall(err))
        text = path.read_text()
        already = set(re.findall(r"^\s*(?:extern\s+)?[\w \t\*]*?(\w+)\s*[;(]",
                                 text, re.M))
        new = []
        for sym in sorted(missing):
            if sym in already and f"{sym};" in text:
                continue
            if sym not in known:
                continue  # not a real ROM symbol -- a broken draft, not our job
            decl = declaration_for(text, sym)
            # Skip if this symbol is ALREADY declared at file scope in any
            # shape. An exact-string check is not enough: two candidates in
            # one file can need the same symbol differently -- one calls it
            # (`int X();`), the other takes its address (`extern s32 X;`) --
            # and emitting both is a hard `X redeclared as different kind of
            # symbol`, which failed a whole 16-candidate validation batch.
            # First declaration wins; if that shape is wrong for the other
            # use, this reports "still broken" honestly instead of emitting
            # a conflict.
            # Look only at the HEADER REGION -- the text before the insertion
            # point -- and at file scope within it. Two traps, both hit:
            #
            #  * Searching the whole text matches the CALL SITE
            #    (`    sub_8021308(arg0);` satisfies the same pattern), so
            #    every callee looks already-declared and nothing is ever
            #    added. That silently reduced this tool to a no-op.
            #  * Even at file scope, a declaration LATER in the file does not
            #    help a use ABOVE it -- agbcc still reports an implicit
            #    declaration. Only a declaration already in the header region
            #    makes adding another one redundant.
            #
            # Conflicting shapes between two spliced bodies are handled where
            # they arise, in gitops._dedupe_decls at splice time.
            header = gitops._file_scope(text[:insert_point(text)])
            if decl and not re.search(
                    rf"^\s*(?:extern\s+)?[\w \t\*]*\b{re.escape(sym)}\s*[;(]",
                    header, re.M):
                new.append(decl)
        if not new:
            break
        at = insert_point(text)
        block = "\n\n" + "\n".join(new) + "\n"
        path.write_text(text[:at] + block + text[at:])
        added += new
        err = compile_file(stem, nonmatching)
        if not err:
            break

    return err, added


def fix_file(stem: str, known: set[str], dry_run: bool) -> str:
    path = SRC / f"{stem}.c"
    if not path.is_file():
        return "no such file"
    original = path.read_text()
    err, added = repair_in_place(stem, known)

    if err:
        path.write_text(original)
        residue = set(IMPLICIT_RE.findall(err)) | set(UNDECL_RE.findall(err))
        unknown = sorted(residue - known)
        if unknown:
            return f"still broken, non-ROM symbols: {', '.join(unknown[:3])}"
        return "still broken (not a declaration problem)"

    if not added:
        return "already compiles"
    if dry_run:
        path.write_text(original)
        return f"WOULD FIX (+{len(added)} decls)"
    return f"FIXED (+{len(added)} decls)"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--files", nargs="*", help="source stems; default: all of src/")
    ap.add_argument("--verify", action="store_true",
                    help="after fixing, assert the ROM still builds byte-identical")
    args = ap.parse_args()

    known = rom_symbols()
    print(f"{len(known)} real ROM symbols known\n")
    stems = args.files or sorted(p.stem for p in SRC.glob("*.c"))

    tally: dict[str, int] = {}
    for i, stem in enumerate(stems, 1):
        try:
            verdict = fix_file(stem, known, args.dry_run)
        except Exception as e:
            verdict = f"error: {e}"
        if verdict == "already compiles":
            continue
        key = verdict.split(" (")[0].split(",")[0]
        tally[key] = tally.get(key, 0) + 1
        flag = "  ->" if verdict.startswith(("FIXED", "WOULD")) else "    "
        print(f"{flag} [{i}/{len(stems)}] {stem:26} {verdict}")

    print("\n=== summary ===")
    for k, v in sorted(tally.items(), key=lambda kv: -kv[1]):
        print(f"  {v:4}  {k}")

    if args.verify and not args.dry_run:
        print("\nverifying the ROM still reproduces from scratch...")
        subprocess.run(["rm", "-rf", "build"], cwd=gitops.REPO)
        r = subprocess.run(["./container.sh", "make"], cwd=gitops.REPO,
                           capture_output=True, text=True)
        ok = "mlss.gba: OK" in (r.stdout + r.stderr)
        print("  " + ("mlss.gba: OK -- declarations emitted no code, as expected"
                      if ok else "*** ROM DID NOT REPRODUCE -- investigate ***"))
        sys.exit(0 if ok else 1)


if __name__ == "__main__":
    main()
