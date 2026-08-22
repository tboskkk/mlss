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
    (c_path, includes_text, else_body_text)."""
    needle = f'asm/nonmatching/{name}.s'
    for c_path in sorted((splitlib.ROOT / "src").glob("*.c")):
        text = c_path.read_text()
        if needle not in text:
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
    expected_asm = WORKDIRS / f"{name}.expected.s"
    expected_asm.write_text(f'.include "asm/macros.inc"\n.include "{frag_path.relative_to(splitlib.ROOT)}"\n')

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
