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

# ARM-mode compile, for the small set of functions retail built as ARM
# rather than Thumb -- found live 2026-08-27 on sub_806A730/sub_806A180,
# whose RETAIL relocations are R_ARM_CALL/R_ARM_V4BX, architecturally
# impossible to produce from Thumb code. `agbcc_arm` is a real, separate
# binary in tools/agbcc/bin/ (gcc 2.9-arm-000512 for ARM/elf, vs. the
# default agbcc's Thumb/elf) -- already known to exist and cover the crt0
# ARM code (docs/plan-2026-08-22-toolchain-overhaul.md), never wired up
# for ordinary functions before. NOT the same question compiler_variants.py
# already answered ("one configuration", CLAUDE.md F15/T.5) -- that
# experiment's VARIANTS dict never included agbcc_arm at all, only
# old_agbcc and -fprologue-bugfix. `-ffix-debug-line` is agbcc's own local
# patch flag and agbcc_arm rejects it outright (`Invalid option`), so ARM
# builds drop both -g and -ffix-debug-line -- byte-neutral for .text the
# same way CFLAGS_NODEBUG already is elsewhere in this project.
CFLAGS_ARM = ["-O2", "-mthumb-interwork", "-fno-common", "-Wimplicit",
              "-Wparentheses", "-Werror"]


def _cpp() -> str:
    r = subprocess.run(["which", "arm-none-eabi-cpp"], capture_output=True, text=True)
    if r.returncode != 0:
        sys.exit("arm-none-eabi-cpp not on PATH -- run this inside ./container.sh")
    return r.stdout.strip()


_PERMUTER_TYPEDEF_PREAMBLE = re.compile(
    r"^typedef\s+\w[\w ]*\s+(int8_t|int16_t|int32_t|uint8_t|uint16_t|uint32_t|"
    r"u8|u16|u32|s8|s16|s32);\s*$")
# uint16_t/u16/u32/uint32_t added 2026-08-27: the whitelist only had the
# widths every ghost tested so far happened to use. sub_80E3D1C's own real
# base.c (nonmatchings/sub_80E3D1C/base.c) carries `typedef unsigned short
# uint16_t; typedef uint16_t u16;` -- neither matched, so stripping left
# them in the spliced body and they collided with common.h's real ones.
# decomp-permuter's OWN parser needs the OPPOSITE: u16 must stay present
# in whatever source Permuter() parses, or its pycparser-based AST step
# fails outright ("Syntax error in base.c... after PERM expansion") since
# it has no other source for what `u16` means. Confirmed live testing
# sub_80E3D1C: removing u16 from the preamble broke Permuter() construction
# entirely, restoring it (and widening this regex to strip it correctly at
# splice time) fixed both ends at once.


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
    apply -- pointed at the scratch path, never the tracked one.

    Prepends gitops.rom_symbol_declarations(body) first -- found live
    running the Round 2 batch: 25 of 27 retries still failed, now on
    `X undeclared`, because the real TU a ghost's OTHER neighbors don't
    happen to reference this ghost's own callees, so nothing in the file
    declares them either. compiler_variants.py's stage() already does
    this for isolation staging for exactly this reason (see its own
    docstring: "X undeclared" was the single largest no-score class,
    104/335). Declarations only, no codegen effect -- safe to always add.

    Falls back to the sa2/tmc-style ASM_FUNC/NONMATCH convention (CLAUDE.md's
    "NONMATCHING convention", migrated corpus-wide 2026-08-24) when the old
    #ifndef NONMATCHING search finds nothing -- found live running the
    in-context batch: 24 of 34 ghosts are already in the new format and
    this originally just gave up on all of them (`sys.exit`), which is why
    the first real run reported them as "Unable to compile" instead of
    actually trying. Mirrors gitops._splice_candidate_new_format() exactly,
    just writing to the scratch copy instead of the tracked file.
    """
    try:
        decls = gitops.rom_symbol_declarations(body)
    except Exception:
        decls = ""
    body = (decls or "") + body

    c_path, block = gitops.find_guard_block(name)
    if c_path is not None:
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

    c_path, block, _kind = gitops.find_new_format_guard(name)
    if c_path is None:
        sys.exit(f"{name}: no guard block found in either format")
    scratch = work / c_path.name
    scratch.write_text(c_path.read_text())
    body2 = gitops._repair_body_decls(scratch, body)
    text = scratch.read_text()
    new_text = text.replace(block, gitops._dedupe_decls(text, block, body2).strip() + "\n", 1)
    if new_text == text:
        sys.exit(f"{name}: new-format splice was a no-op")
    scratch.write_text(new_text)
    gitops._repair_self_declaration(scratch, name, body2)
    return scratch


def compile_tu(c_path: Path, work: Path, tag: str, arm_mode: bool = False) -> Path | None:
    """cpp + agbcc + as the WHOLE translation unit at c_path. Returns the
    assembled .o, or None if any stage failed (stderr left on disk under
    the same tag for inspection -- never silently swallowed).

    `arm_mode` swaps in agbcc_arm + CFLAGS_ARM -- see the module-level
    comment by CFLAGS_ARM. Everything else (cpp, the assembler) is
    identical: the .s file agbcc_arm emits carries no `.thumb`/`.code 16`
    directive, so `arm-none-eabi-as` disassembles/assembles it as ARM by
    simply following what's actually in the file, no extra flag needed."""
    cpp_i = work / f"{tag}.i"
    asm_s = work / f"{tag}.s"
    obj_o = work / f"{tag}.o"
    r = subprocess.run([_cpp(), *CPPFLAGS, str(c_path), "-o", str(cpp_i)],
                        cwd=REPO, capture_output=True, text=True)
    if r.returncode != 0:
        (work / f"{tag}.pp.err").write_text(r.stderr)
        return None
    cc1 = "tools/agbcc/bin/agbcc_arm" if arm_mode else "tools/agbcc/bin/agbcc"
    cflags = CFLAGS_ARM if arm_mode else CFLAGS
    r = subprocess.run([cc1, str(cpp_i), *cflags, "-o", str(asm_s)],
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
    length already IS the function's size -- no symbol lookup needed.

    CRITICAL FIX (2026-08-27): new-format (ASM_FUNC/NONMATCH) fragments
    carry NO `.syntax unified`/`.thumb`/`thumb_func_start` header -- that
    context normally comes from the NAKED C wrapper agbcc compiles around
    them in the real build (include/global.h's ASM_FUNC/NONMATCH expand to
    `NAKED decl { asm_unified(...) }`, and agbcc, compiling that in its
    only mode, Thumb, supplies the missing header for free). Concatenating
    macros.inc + the bare fragment with NEITHER thumb_func_start NOR
    arm_func_start ever invoked left the assembler's OWN default mode in
    effect, which is ARM -- so this was assembling headerless fragments as
    ARM code and calling the result "retail". That produced a fully fake
    "sub_806A180/sub_806A730 are ARM-mode functions" finding: relocation
    TYPES really did read as R_ARM_CALL/R_ARM_V4BX, matching what agbcc_arm
    also produced, which read as confirmation -- but reassembling with the
    header these fragments actually need (below) gives R_ARM_THM_CALL, the
    SAME relocations the ordinary Thumb candidate already had, and the
    candidate then comes out 1 byte off retail, not the 79 the broken
    comparison reported. A measurement bug excused an entire ARM-mode
    detour last turn; see CLAUDE.md's THE LAW. compiler_variants.py's
    stage() already carries the identical check for the isolation path;
    this function just never had it.
    """
    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.is_file():
        frag = REPO / "asm" / f"{name}.s"
    frag_text = frag.read_text()
    if not frag_text.lstrip().startswith(".syntax"):
        frag_text = f"\t.syntax unified\n\t.text\n\n\tthumb_func_start {name}\n{name}:\n" + frag_text
    combined = work / "retail.s"
    combined.write_text((REPO / "asm" / "macros.inc").read_text() + "\n" + frag_text)
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


_SIMPLE_SYMBOL_RE = re.compile(r"^(\w+)\s*=\s*(0x[0-9A-Fa-f]+);\s*$")


def _load_simple_symbol_values() -> dict[str, int]:
    """{name: value} for every symbols.txt entry that is a bare exact-value
    linker-script equality (`name = 0xNNNNNNNN;`) -- 61 of them currently,
    e.g. `loc_819832C = 0x0819832C;`. These are addresses this project has
    named but which don't need real linking to resolve: their value is
    already fully known, unlike a real function/data symbol whose final
    address depends on where the linker actually places it."""
    path = REPO / "symbols.txt"
    if not path.is_file():
        return {}
    values = {}
    for line in path.read_text().splitlines():
        m = _SIMPLE_SYMBOL_RE.match(line.strip())
        if m:
            values[m.group(1)] = int(m.group(2), 16)
    return values


def resolve_known_symbol_relocs(data: bytes, relocs: set, symbol_values: dict):
    """Patch each R_ARM_ABS32 relocation whose target is a KNOWN exact-value
    symbol (see _load_simple_symbol_values) into `data` at its offset, and
    drop that entry from the returned reloc set. Mirrors exactly what
    `--just-symbols=symbols.txt` does for the real linker -- applied here
    at MEASUREMENT time only.

    WHY NOT REWRITE THE RETAIL .s FRAGMENT INSTEAD (the tempting, wrong
    fix). Every isolation tool in this project -- this file's own
    retail_symbol(), compiler_variants.py's staging, isolation_exact.py --
    bare-assembles a fragment with no link step (confirmed: no --defsym,
    no --just-symbols anywhere in this file's `arm-none-eabi-as` calls).
    A `.4byte loc_819832C` in the TRACKED fragment would sit as an
    unresolved relocation and read back as zero bytes in every one of
    them -- corrupting the retail comparison far worse than today's
    benign "candidate has a relocation, retail's raw literal doesn't"
    mismatch. This is exactly CLAUDE.md's already-rejected finding
    ("the literal-pool rewrite half is reverted, not applied ... broke
    compiler_variants.py's isolation staging"), just about to be repeated
    on a different file. Resolving in the SCORER instead touches nothing
    tracked and can't affect any other tool.
    """
    symbol_values = symbol_values or _load_simple_symbol_values()
    data = bytearray(data)
    kept = set()
    for off, rtype, sym in relocs:
        if rtype == "R_ARM_ABS32" and sym in symbol_values:
            data[off:off + 4] = symbol_values[sym].to_bytes(4, "little")
        else:
            kept.add((off, rtype, sym))
    return bytes(data), kept


def score_in_context(name: str, body: str, work: Path, tag: str = "cand", arm_mode: bool = False):
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
    obj = compile_tu(c_path, work, tag, arm_mode=arm_mode)
    if obj is None:
        return {"error": f"compile failed, see {work}/{tag}.*.err", "elapsed": time.time() - t0}
    cand_bytes, cand_relocs = extract_symbol(obj, name, work)
    if cand_bytes is None:
        return {"error": f"{name} not found in compiled object (wrong guard splice?)",
                "elapsed": time.time() - t0}
    cand_bytes, cand_relocs = resolve_known_symbol_relocs(cand_bytes, cand_relocs, None)
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
