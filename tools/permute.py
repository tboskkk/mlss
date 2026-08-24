#!/usr/bin/env python3
"""Set up a decomp-permuter-agbcc working directory for one function.

    ./container.sh tools/permute.py <function-name>
    tools/decomp-permuter/permuter.py -j <printed directory>

Finds the function's `#else` branch (the C attempt guarded by
`#ifndef NONMATCHING`, written by split_func.py or by hand - see
CLAUDE.md) in its owning src/*.c file, isolates it into a standalone .c
with the same includes as the parent file, assembles
asm/nonmatching/<name>.s to get the "expected" .o, and hands both to
decomp-permuter's import.py.

Requires: the function has already been through split_func.py (so
asm/nonmatching/<name>.s exists) AND has a real #else C attempt already
written (not still the #error placeholder) - the permuter improves an
existing attempt, it doesn't write one from scratch.
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import splitlib
sys.path.insert(0, str(Path(__file__).resolve().parent / "factory"))
import gitops

PERMUTER_DIR = splitlib.ROOT / "tools" / "decomp-permuter"
WORKDIRS = splitlib.ROOT / "tools" / "permute-work"

INCLUDE_RE = re.compile(r'^\s*#include\b')


def resolve_local_includes(c_path: Path, include_lines: list) -> list:
    """Rewrite #include "X.h" lines that resolve next to c_path (e.g.
    title_screen.c's own title_screen.h) to absolute paths.

    cpp's quote-include rule is "search the including file's own directory
    first" - that's how these resolve for the real src/*.c file, but
    import.py copies the isolated function into tools/permute-work/, a
    different directory, where that same-directory lookup no longer finds
    them (import.py's cpp invocation only adds -iquote include, not -iquote
    src). Includes that resolve via that existing search path (global.h,
    common.h, ...) are left untouched."""
    resolved = []
    for line in include_lines:
        m = re.match(r'^(\s*#include\s*")([^"]+)(".*)$', line)
        if m:
            candidate = c_path.parent / m.group(2)
            if candidate.exists():
                line = f"{m.group(1)}{candidate.resolve()}{m.group(3)}\n"
        resolved.append(line)
    return resolved


def find_stub_block(name: str):
    """Search src/*.c for the split_func.py-style stub for `name`, return
    (c_path, includes_text, else_body_text).

    Tries the old #ifndef NONMATCHING/#else/#endif form first (unchanged
    behavior). Falls back to the sa2/tmc-style NONMATCH(...){...}END_NONMATCH
    convention (CLAUDE.md's "NONMATCHING convention" section) via
    gitops.find_new_format_guard() - ASM_FUNC has no draft to permute at all
    (matches this function's own "already has a real #else C attempt
    already written" requirement above), so only the "nonmatch" kind is
    ever usable here; an ASM_FUNC-only function raises the same "nothing to
    permute yet" style error as an old-format function with no #else."""
    needle = f'asm/nonmatching/{name}.s'
    for c_path in sorted((splitlib.ROOT / "src").glob("*.c")):
        text = c_path.read_text()
        # The needle also appears inside an ASM_FUNC(...)/NONMATCH(...) call's
        # own string argument (same path, new format) - only treat this as an
        # old-format candidate when it's the OLD macro's exact shape
        # (asm_unified(".include ...")), not just any line mentioning the
        # path, or a new-format file with no #else/#endif anywhere raises the
        # wrong ("nothing to permute yet") error and never reaches the
        # new-format fallback below.
        if needle not in text or not re.search(
            re.escape('asm_unified(".include \\"') + re.escape(needle), text
        ):
            continue
        lines = text.splitlines(keepends=True)
        include_lines = resolve_local_includes(c_path, [l for l in lines if INCLUDE_RE.match(l)])

        idx = next(i for i, l in enumerate(lines) if needle in l)
        try:
            else_idx = idx + next(i for i, l in enumerate(lines[idx:]) if l.strip() == "#else")
            endif_idx = else_idx + next(i for i, l in enumerate(lines[else_idx:]) if l.strip() == "#endif")
        except StopIteration:
            raise SystemExit(
                f"found the include for {name!r} in {c_path.relative_to(splitlib.ROOT)} but no "
                f"#else/#endif around it - nothing to permute yet."
            )
        body = "".join(lines[else_idx + 1 : endif_idx])
        if "#error" in body:
            raise SystemExit(
                f"{name} in {c_path.relative_to(splitlib.ROOT)} is still the split_func.py "
                f"#error placeholder - write a real C attempt before permuting."
            )
        return c_path, "".join(include_lines), body

    c_path, block, kind = gitops.find_new_format_guard(name)
    if c_path is not None:
        if kind != "nonmatch":
            raise SystemExit(
                f"{name} in {c_path.relative_to(splitlib.ROOT)} is still ASM_FUNC (no draft) - "
                f"write a real C attempt (NONMATCH) before permuting."
            )
        text = c_path.read_text()
        lines = text.splitlines(keepends=True)
        include_lines = resolve_local_includes(c_path, [l for l in lines if INCLUDE_RE.match(l)])
        m = re.search(r"\{.*\}(?=\s*END_NONMATCH\s*$)", block, re.DOTALL)
        if not m:
            raise SystemExit(f"{name}: could not find the draft body inside its NONMATCH block.")
        body = m.group(0)
        return c_path, "".join(include_lines), body

    raise SystemExit(f"no src/*.c references asm/nonmatching/{name}.s - run split_func.py {name} first.")


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name", help="function name (must match asm/nonmatching/<name>.s)")
    args = ap.parse_args()
    name = args.name

    frag_path = splitlib.NONMATCHING_DIR / f"{name}.s"
    if not frag_path.exists():
        raise SystemExit(f"{frag_path} doesn't exist - run split_func.py {name} first.")

    if not PERMUTER_DIR.exists() or not any(PERMUTER_DIR.iterdir()):
        raise SystemExit(
            f"{PERMUTER_DIR} is empty - it's a git submodule.\n"
            f"Run: git submodule update --init tools/decomp-permuter"
        )

    c_path, includes, body = find_stub_block(name)

    # import.py's own cpp pass hardcodes -I tools/agbcc/include -iquote include
    # (see its import_c_file()) - i.e. it assumes it's run with the project
    # root as cwd, and that root's standard layout. So: real paths under the
    # project tree, not an off-tree tempdir, and cwd=ROOT below.
    WORKDIRS.mkdir(parents=True, exist_ok=True)

    # frag_path deliberately has no .include "asm/macros.inc" of its own -
    # split_func.py centralizes that in the owning .c file instead (see
    # CLAUDE.md "Landmines already hit"). Standalone assembly needs it back.
    #
    # An ASM_FUNC/NONMATCH-format fragment also has its OWN header
    # (.syntax unified/.text/thumb_func_start/label) stripped, since the
    # real build's NAKED C wrapper supplies that context - standalone
    # assembly here has no such wrapper and fails with "instruction not
    # supported in Thumb16 mode" without it (found via a real assembler
    # error). Detect and synthesize the same way compiler_variants.py does.
    expected_asm = WORKDIRS / f"{name}.expected.s"
    header = ""
    if not frag_path.read_text().lstrip().startswith(".syntax"):
        header = f'.syntax unified\n.text\n\nthumb_func_start {name}\n{name}:\n'
    expected_asm.write_text(
        f'.include "asm/macros.inc"\n{header}.include "{frag_path.relative_to(splitlib.ROOT)}"\n'
    )

    expected_obj = WORKDIRS / f"{name}.expected.o"
    subprocess.run(
        ["arm-none-eabi-as", "-mcpu=arm7tdmi", "-I", "include", "-o", str(expected_obj), str(expected_asm)],
        cwd=splitlib.ROOT,
        check=True,
    )

    isolated_c = WORKDIRS / f"{name}.c"
    isolated_c.write_text(includes + "\n" + body)

    out_dir = splitlib.ROOT / "nonmatchings" / name
    if out_dir.exists():
        raise SystemExit(f"{out_dir} already exists - remove it first if you want to redo import.")

    import_py = PERMUTER_DIR / "import.py"
    result = subprocess.run(
        [sys.executable, str(import_py), str(isolated_c), str(expected_obj), name],
        cwd=splitlib.ROOT,
    )
    if result.returncode != 0:
        print(f"import.py exited {result.returncode}.", file=sys.stderr)
        sys.exit(result.returncode)

    print(f"\n{out_dir.relative_to(splitlib.ROOT)} ready. Next:")
    print(f"  ./container.sh tools/decomp-permuter/permuter.py -j {out_dir.relative_to(splitlib.ROOT)}")


if __name__ == "__main__":
    main()
