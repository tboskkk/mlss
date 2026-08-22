#!/usr/bin/env python3
"""Zero-reasoning auto-matcher for the most mechanical class of function in
this ROM: a body that is nothing but `bx lr` (plus alignment padding),
already named `nullsub_N` by the original disassembly pass -- meaning
whatever tool produced these labels already recognized "does nothing" and
said so in the name. There is no parameter order to derive, no struct field
to guess, no register allocation to search: `void name(void) { }` is the
only possible C for that instruction sequence, and agbcc -O2 always
compiles an empty void function to exactly `bx lr`.

This exists because that fact makes these functions a genuinely different
tier of work from everything else in the pipeline -- they don't need Qwen,
they don't need Claude, they don't need decomp-permuter. They need a
compiler and a byte comparison. Running that entirely mechanically, in
bulk, is strictly faster and strictly safer (no model can misjudge a
signature here) than spending a single LLM turn on any one of them.

Deliberately conservative: only touches functions matching BOTH conditions
--body is exactly one real instruction (`bx lr`) after stripping labels/
padding, AND name already starts with `nullsub_`. A bx-lr-only function
under any other name (a real libc stub like `alarm`, or a `sub_XXXXXXX`
nobody has classified as a no-op yet) is left alone -- see triage.py's
survey output for those; they need a one-time human/Claude judgment call on
signature (return type, real semantics) that this tool deliberately won't
guess at.

Usage: ./container.sh tools/auto_trivial.py [--dry-run] [--limit N]

Every candidate is independently verified with a from-scratch
(`rm -rf build/`) build before being committed -- same standard as every
other match in this project, not a shortcut because the source is a
script instead of a person.
"""
from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import triage
import splitlib

REPO = Path(__file__).resolve().parent.parent

CODE_RE = re.compile(r"^\s*[a-z]")
LABEL_RE = re.compile(r"^\S+:")
PADDING_RE = re.compile(r"^\s*\.(byte|hword|short|align|space)\b")


def real_code_lines(body):
    out = []
    for l in body:
        if LABEL_RE.match(l) or "func_start" in l or PADDING_RE.match(l):
            continue
        if CODE_RE.match(l):
            out.append(l.strip())
    return out


def find_candidates(funcs):
    cache = {}
    out = []
    for name, f in sorted(funcs.items()):
        if f.status == "matched" or f.not_c_reason:
            continue
        if not name.startswith("nullsub_"):
            continue
        if f.file not in cache:
            path = triage.ASM_DIR / f.file
            if not path.exists():
                path = triage.ASM_DIR / "nonmatching" / f.file
            cache[f.file] = splitlib.function_starts(path)
        lines, _starts = cache[f.file]
        body = lines[f.start:f.end]
        code = real_code_lines(body)
        if len(code) == 1 and code[0] == "bx lr":
            out.append(name)
    return out


def run(cmd, **kw):
    print(f"  $ {' '.join(cmd)}")
    return subprocess.run(cmd, cwd=REPO, capture_output=True, text=True, **kw)


def extract(name):
    r = run(["python3", "tools/split_func.py", name])
    if r.returncode != 0 and "--dest NAME" in (r.stdout + r.stderr):
        r = run(["python3", "tools/split_func.py", name, "--dest", name])
    if r.returncode != 0:
        print(r.stdout)
        print(r.stderr)
        return None
    dest = None
    for line in r.stdout.splitlines():
        line = line.strip()
        if line.startswith("-> src/") and line.endswith(".c  (NEW FILE)"):
            dest = line.split()[1]
        elif line.startswith("-> src/") and "(append)" in line:
            dest = line.split()[1]
    if dest is None:
        print(f"  !! couldn't parse destination file from split_func.py output for {name}")
        print(r.stdout)
        return None
    return REPO / dest


def write_trivial_body(dest_path: Path, name: str) -> bool:
    text = dest_path.read_text()
    guard_re = re.compile(
        r"#ifndef NONMATCHING\n"
        rf"asm_unified\(\"\.include \\\"asm/nonmatching/{re.escape(name)}\.s\\\"\"\);\n"
        r"#else\n"
        rf'#error "TODO: write {re.escape(name)} to match asm/nonmatching/{re.escape(name)}\.s, then delete this #error"\n'
        r"#endif\n?",
    )
    new_body = f"void {name}(void) {{\n}}\n"
    new_text, n = guard_re.subn(new_body, text)
    if n != 1:
        print(f"  !! guard block for {name} didn't match the expected #error shape -- leaving as-is")
        return False
    dest_path.write_text(new_text)
    return True


def verify_and_finish(name, dest_path):
    r = run(["./container.sh", "asm-differ", "-mwo", name])
    out = r.stdout + r.stderr
    if "TARGET" not in out or "bx" not in out:
        print("  !! couldn't run asm-differ cleanly")
        print(out[-2000:])
        return False
    lines = [l for l in out.splitlines() if l.strip()]
    target_lines = [l for l in lines if l.strip().startswith(tuple("0123456789"))]
    # A real match: every line's two columns (TARGET / CURRENT) are identical.
    matched = True
    for l in target_lines:
        halves = re.split(r"\s{2,}", l.strip())
        if len(halves) == 2 and halves[0] != halves[1]:
            matched = False
            break
    if not matched or not target_lines:
        print(f"  {name}: not byte-identical yet, leaving guard removed for manual follow-up")
        return False

    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        frag.unlink()
    shutil.rmtree(REPO / "build", ignore_errors=True)
    r = run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        print(f"  !! from-scratch build did NOT say OK for {name} -- reverting")
        print(r.stdout[-2000:])
        print(r.stderr[-2000:])
        run(["git", "checkout", "--", str(dest_path.relative_to(REPO))])
        if frag.exists() is False:
            run(["git", "checkout", "--", str(frag.relative_to(REPO))])
        return False
    return True


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--limit", type=int, default=None)
    args = ap.parse_args()

    funcs = triage.collect()
    candidates = find_candidates(funcs)
    print(f"{len(candidates)} candidate nullsub_N (bx-lr-only) functions: {candidates}")
    if args.limit:
        candidates = candidates[: args.limit]
    if args.dry_run:
        return

    matched = []
    for name in candidates:
        print(f"\n=== {name} ===")
        dest_path = extract(name)
        if dest_path is None:
            continue
        r = run(["./container.sh", "make"])
        if "mlss.gba: OK" not in r.stdout:
            print(f"  !! extraction broke the build for {name}, skipping")
            continue
        # Must refresh right after extraction, not just after a match: the
        # symbol just moved from the raw asm/*.s blob into a new src/*.c
        # object, so a stale expected/ has the wrong object for it and
        # asm-differ silently diffs against nothing (CLAUDE.md landmine).
        shutil.rmtree(REPO / "expected", ignore_errors=True)
        shutil.copytree(REPO / "build", REPO / "expected" / "build")
        if not write_trivial_body(dest_path, name):
            continue
        if verify_and_finish(name, dest_path):
            run(["git", "add", "-A"])
            r = run(["git", "commit", "-m", f"Match {name}\n\nAuto-matched by tools/auto_trivial.py: retail body is a bare\n`bx lr`, name already flagged as a no-op stub by the original\ndisassembly pass. No LLM/permuter involvement needed or used."])
            print(f"  [ok] {name} matched and committed")
            matched.append(name)
        else:
            print(f"  [!!] {name} not auto-matched")

    print(f"\n{len(matched)}/{len(candidates)} matched: {matched}")


if __name__ == "__main__":
    main()
