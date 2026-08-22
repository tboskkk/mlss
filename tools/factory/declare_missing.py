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


def compile_file(stem: str) -> str:
    """Compile one object under NONMATCHING=1. Returns '' on success.

    The object is removed first, without exception. Make decides what to
    rebuild from mtimes and cannot see that `-DNONMATCHING` is not a file, so
    an object left over from a plain build is reported as up to date and the
    compile silently does not happen -- which reads as "this file is fine".
    """
    obj = gitops.REPO / "build" / "src" / f"{stem}.o"
    obj.unlink(missing_ok=True)
    r = subprocess.run(["./container.sh", "make", "NONMATCHING=1",
                        f"build/src/{stem}.o"],
                       cwd=gitops.REPO, capture_output=True, text=True)
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
    """The declaration this file needs for `sym`, chosen by how it is used."""
    proto = definition_prototype(text, sym)
    if proto:
        return proto
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


def fix_file(stem: str, known: set[str], dry_run: bool) -> str:
    path = SRC / f"{stem}.c"
    if not path.is_file():
        return "no such file"
    original = path.read_text()
    err = compile_file(stem)
    if not err:
        return "already compiles"

    added: list[str] = []
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
            if decl and decl not in text:
                new.append(decl)
        if not new:
            break
        at = insert_point(text)
        block = "\n\n" + "\n".join(new) + "\n"
        path.write_text(text[:at] + block + text[at:])
        added += new
        err = compile_file(stem)
        if not err:
            break

    if err:
        path.write_text(original)
        residue = set(IMPLICIT_RE.findall(err)) | set(UNDECL_RE.findall(err))
        unknown = sorted(residue - known)
        if unknown:
            return f"still broken, non-ROM symbols: {', '.join(unknown[:3])}"
        return "still broken (not a declaration problem)"

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
