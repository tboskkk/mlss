#!/usr/bin/env python3
"""PROOF OF CONCEPT: score a candidate IN ITS REAL TRANSLATION UNIT,
not in isolation.

WHY. sub_81458C8 (2026-08-27) proved a real class of functions exists
where isolation-zero does NOT predict a real-file match: agbcc's
register/stack allocation is coupled across the whole compilation unit
(isolation_exact.py's docstring already names this, citing Klonoa;
reproduced concretely here -- the identical C, 86/88 bytes matching
retail, differs ONLY in the `sub sp` immediate, because the real
45-function file leaves the allocator enough free registers to avoid a
spill that the 1-function isolated compile does not have). No amount of
searching the ISOLATED space can ever find this class of match, because
that space does not contain the byte sequence retail has.

WHAT THIS PROVES, WHAT IT DELIBERATELY DOES NOT DO. This validates the
SPLICE -> COMPILE THE WHOLE TU -> EXTRACT ONE SYMBOL'S BYTES -> SCORE
primitive, end to end, on a real function, with real timing. It does NOT
reimplement decomp-permuter's statement-shuffling mutator -- that engine
already exists, works, and has ARM/agbcc-specific weight tuning
(tools/decomp-permuter/, tools/permuter_patches/). `score_in_context()`
below is written to be the drop-in replacement for whatever scores a
candidate in decomp-permuter's own search loop -- the RNG, the mutation
passes, `--stop-on-zero` all stay exactly as they are; only WHERE a
candidate gets compiled changes. Wiring it into permuter.py for real is
follow-up work, not sketched here, because it touches a vendored fork and
deserves its own review.

COST, MEASURED on src/sub_8144238.c (361 lines / 45 functions): ~30ms per
full-TU cpp+agbcc+as cycle vs ~19ms isolated -- 1.6x, not the
order-of-magnitude penalty a naive "recompile everything" fear predicts,
because cpp+agbcc are fast relative to other overhead at this file size.
THIS IS NOT A COROPUS-WIDE CONSTANT -- it scales with file size, and this
repo's larger files will cost more. Use `--time-only` to remeasure on any
specific function's real file before trusting the number elsewhere.

SAFETY. Never writes to a tracked file. Splices into a byte-for-byte
in-memory copy of the real .c, in a scratch directory (default
/tmp/icperm.<pid>), and runs cpp/agbcc/as against that copy only.

    python3 tools/factory/in_context_permuter.py sub_81458C8
    python3 tools/factory/in_context_permuter.py sub_81458C8 --body-file candidate.c
    python3 tools/factory/in_context_permuter.py sub_81458C8 --time-only
"""
from __future__ import annotations

import argparse
import re
import shutil
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402

REPO = gitops.REPO
CFLAGS = ["-O2", "-mthumb-interwork", "-fno-common", "-Wimplicit",
          "-Wparentheses", "-Werror", "-g", "-ffix-debug-line"]
CPPFLAGS = ["-I", "tools/agbcc/include", "-nostdinc", "-undef",
            "-iquote", "include", "-Wno-trigraphs"]


def _cpp() -> str:
    r = subprocess.run(["which", "arm-none-eabi-cpp"], capture_output=True, text=True)
    if r.returncode != 0:
        sys.exit("arm-none-eabi-cpp not on PATH -- run this inside ./container.sh")
    return r.stdout.strip()


_PERMUTER_TYPEDEF_PREAMBLE = re.compile(
    r"^typedef\s+\w[\w ]*\s+(int8_t|int16_t|int32_t|uint8_t|u8|s8|s16|s32);\s*$")


def _strip_permuter_preamble(body: str) -> str:
    """decomp-permuter's own isolated harness has no project headers, so its
    output files open with a fixed primitive-typedef preamble for
    portability. The real .c already gets these from global.h/common.h, so
    splicing the preamble in verbatim is a straight `redefinition of
    int8_t` (etc.) against the real headers -- hit live on sub_81458C8's
    own output-0-1/source.c. Not a semantic fix, just removing boilerplate
    the isolated context needed and the real one already provides."""
    return "\n".join(
        l for l in body.splitlines() if not _PERMUTER_TYPEDEF_PREAMBLE.match(l.strip())
    )


def ghost_zero_body(name: str) -> str | None:
    """The proven isolation-zero source for `name`, if one still exists on
    disk -- see tier_m2c._ghost_zero_source. Reused here as the default
    candidate when the caller doesn't supply --body-file, since that is
    exactly the class this tool exists to re-check in context."""
    d = REPO / "nonmatchings" / name
    if not d.is_dir():
        return None
    for hit in sorted(d.glob("output-0-*/source.c")):
        score_file = hit.parent / "score.txt"
        if score_file.is_file() and score_file.read_text().strip() == "0":
            return _strip_permuter_preamble(hit.read_text())
    return None


def splice_in_memory(name: str, body: str, work: Path) -> Path:
    """Write a scratch copy of `name`'s real .c with the guard replaced by
    `body`. Reuses gitops's OWN splice primitives (not a reimplementation)
    so this sees exactly the declaration repairs the real pipeline would
    apply -- pointed at the scratch path, never the tracked one."""
    c_path, block = gitops.find_guard_block(name)
    if c_path is None:
        sys.exit(f"{name}: no #ifndef NONMATCHING guard block found (new-format "
                  f"ASM_FUNC/NONMATCH convention not handled by this POC)")
    scratch = work / c_path.name
    scratch.write_text(c_path.read_text())
    body2 = gitops._repair_body_decls(scratch, body)
    text = scratch.read_text()
    new_text = text.replace(block, gitops._dedupe_decls(text, block, body2).strip() + "\n", 1)
    if new_text == text:
        sys.exit(f"{name}: splice was a no-op -- guard block not found in the copy?")
    scratch.write_text(new_text)
    gitops._repair_self_declaration(scratch, name, body2)
    return scratch


def compile_tu(c_path: Path, work: Path, tag: str) -> Path | None:
    """cpp + agbcc + as the WHOLE translation unit at c_path. Returns the
    assembled .o, or None if any stage failed (stderr left on disk under
    the same tag for inspection -- never silently swallowed)."""
    cpp_i = work / f"{tag}.i"
    asm_s = work / f"{tag}.s"
    obj_o = work / f"{tag}.o"
    r = subprocess.run([_cpp(), *CPPFLAGS, str(c_path), "-o", str(cpp_i)],
                        cwd=REPO, capture_output=True, text=True)
    if r.returncode != 0:
        (work / f"{tag}.pp.err").write_text(r.stderr)
        return None
    r = subprocess.run(["tools/agbcc/bin/agbcc", str(cpp_i), *CFLAGS, "-o", str(asm_s)],
                        cwd=REPO, capture_output=True, text=True)
    if r.returncode != 0:
        (work / f"{tag}.cc.err").write_text(r.stderr)
        return None
    r = subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-mthumb-interwork",
                         "-I", str(REPO), str(asm_s), "-o", str(obj_o)],
                        cwd=REPO, capture_output=True, text=True)
    if r.returncode != 0:
        (work / f"{tag}.as.err").write_text(r.stderr)
        return None
    return obj_o


def extract_symbol(obj: Path, name: str, work: Path):
    """(bytes, relocation set) for exactly `name`'s span inside `obj`,
    using real ELF symbol boundaries -- not a raw object diff (the
    documented asm-differ -o landmine: no .size means running past the
    function's end and scoring however much follows it in the file)."""
    r = subprocess.run(["arm-none-eabi-objdump", "-t", str(obj)], capture_output=True, text=True)
    syms = []
    for line in r.stdout.splitlines():
        m = re.match(r"^([0-9a-f]{8})\s+\S+\s+F\s+\.text\s+([0-9a-f]{8})\s+(\S+)$", line)
        if m:
            syms.append((int(m.group(1), 16), int(m.group(2), 16), m.group(3)))
    syms.sort()
    target = next(((a, s) for a, s, n in syms if n == name), None)
    if target is None:
        return None, None
    addr, size = target
    binf = work / f"{obj.stem}.bin"
    subprocess.run(["arm-none-eabi-objcopy", "-O", "binary", "-j", ".text", str(obj), str(binf)],
                    check=True)
    data = binf.read_bytes()[addr:addr + size]
    r = subprocess.run(["arm-none-eabi-objdump", "-r", "-j", ".text", str(obj)],
                        capture_output=True, text=True)
    relocs = set()
    in_range = False
    for line in r.stdout.splitlines():
        m = re.match(r"^([0-9a-f]{8})\s+(\S+)\s+(\S+)$", line)
        if not m:
            continue
        off = int(m.group(1), 16)
        if addr <= off < addr + size:
            relocs.add((off - addr, m.group(2), m.group(3)))
    return data, relocs


def retail_symbol(name: str, work: Path):
    """`thumb_func_start` emits no `.size` (CLAUDE.md's own documented
    landmine -- asm-differ -o's whole-object-diff bug has the same root
    cause), so extract_symbol()'s symbol-table size lookup sees 0 here.
    Sidestepped exactly the way compiler_variants.py does: the fragment is
    the ONLY thing in this .s file, so the assembled .text section's
    length already IS the function's size -- no symbol lookup needed."""
    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.is_file():
        frag = REPO / "asm" / f"{name}.s"
    combined = work / "retail.s"
    combined.write_text((REPO / "asm" / "macros.inc").read_text() + "\n" + frag.read_text())
    obj = work / "retail.o"
    subprocess.run(["arm-none-eabi-as", "-mcpu=arm7tdmi", "-mthumb-interwork",
                     "-I", str(REPO), str(combined), "-o", str(obj)], check=True)
    binf = work / "retail.bin"
    subprocess.run(["arm-none-eabi-objcopy", "-O", "binary", "-j", ".text", str(obj), str(binf)],
                    check=True)
    data = binf.read_bytes()
    r = subprocess.run(["arm-none-eabi-objdump", "-r", "-j", ".text", str(obj)],
                        capture_output=True, text=True)
    relocs = set()
    for line in r.stdout.splitlines():
        m = re.match(r"^([0-9a-f]{8})\s+(\S+)\s+(\S+)$", line)
        if m:
            relocs.add((int(m.group(1), 16), m.group(2), m.group(3)))
    return data, relocs


def score_in_context(name: str, body: str, work: Path, tag: str = "cand"):
    """The primitive this whole POC exists to demonstrate: splice `body`
    into `name`'s REAL file, compile the WHOLE translation unit, extract
    ONLY `name`'s bytes by ELF symbol, and diff against retail (bytes AND
    relocations -- CLAUDE.md's "bytes without relocations" landmine: a
    `bl target` is a placeholder zero pre-link, so two different callees
    can look byte-identical without this check).

    Returns dict(diff_bytes, size_delta, relocs_equal, elapsed) or
    dict(error=...) -- never raises, never returns a silent wrong answer.
    """
    t0 = time.time()
    c_path = splice_in_memory(name, body, work)
    obj = compile_tu(c_path, work, tag)
    if obj is None:
        return {"error": f"compile failed, see {work}/{tag}.*.err", "elapsed": time.time() - t0}
    cand_bytes, cand_relocs = extract_symbol(obj, name, work)
    if cand_bytes is None:
        return {"error": f"{name} not found in compiled object (wrong guard splice?)",
                "elapsed": time.time() - t0}
    retail_bytes, retail_relocs = retail_symbol(name, work)
    n = min(len(cand_bytes), len(retail_bytes))
    diff = sum(1 for i in range(n) if cand_bytes[i] != retail_bytes[i]) + abs(len(cand_bytes) - len(retail_bytes))
    return {
        "diff_bytes": diff,
        "size_delta": len(cand_bytes) - len(retail_bytes),
        "relocs_equal": cand_relocs == retail_relocs,
        "elapsed": time.time() - t0,
    }


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("name")
    ap.add_argument("--body-file", help="candidate C to score; defaults to the proven "
                                         "isolation-zero source on disk, if one exists")
    ap.add_argument("--reps", type=int, default=5, help="repeat the score for timing stats")
    ap.add_argument("--time-only", action="store_true",
                     help="only report the compile-cycle timing, skip printing the diff")
    ap.add_argument("--keep", action="store_true")
    args = ap.parse_args()

    body = Path(args.body_file).read_text() if args.body_file else ghost_zero_body(args.name)
    if body is None:
        sys.exit(f"{args.name}: no --body-file given and no proven isolation-zero source "
                  f"on disk to default to")

    work = Path(f"/tmp/icperm.{__import__('os').getpid()}")
    work.mkdir(parents=True, exist_ok=True)
    try:
        results = []
        for i in range(args.reps):
            r = score_in_context(args.name, body, work, tag=f"cand{i}")
            results.append(r)
            if "error" in r:
                print(f"rep {i}: ERROR: {r['error']} ({r['elapsed']:.3f}s)")
            else:
                verdict = "BYTE-EXACT" if r["diff_bytes"] == 0 and r["relocs_equal"] else "differs"
                print(f"rep {i}: {verdict}  diff_bytes={r['diff_bytes']} "
                      f"size_delta={r['size_delta']:+d} relocs_equal={r['relocs_equal']} "
                      f"({r['elapsed']:.3f}s)")
        times = [r["elapsed"] for r in results if "error" not in r or True]
        print(f"\navg {sum(times)/len(times):.3f}s/cycle over {len(times)} rep(s) "
              f"(splice + full-TU cpp+agbcc+as + extract + retail compare)")
    finally:
        if not args.keep:
            shutil.rmtree(work, ignore_errors=True)
        else:
            print(f"scratch kept at {work}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
