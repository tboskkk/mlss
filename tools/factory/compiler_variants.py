#!/usr/bin/env python3
"""Does MLSS contain more than one agbcc configuration? (CLAUDE.md finding F15)

THE QUESTION. `tools/agbcc/bin/` ships THREE compilers -- `agbcc`,
`old_agbcc`, `agbcc_arm` -- and the Makefile invokes exactly one:
`CC1 := tools/agbcc/bin/agbcc`. Every score, every permuter search, and every
"this function is far from retail" verdict this project has ever produced
assumed that single configuration.

Reproduced in a scratch container on identical source and flags, `old_agbcc`
differs from `agbcc` in register allocation, operand order
(`add r7, r7, r0` vs `add r7, r0, r7`) and -- decisively -- **literal-pool
ordering**. `-fprologue-bugfix` changes leaf-function output too.

Literal-pool ordering is a WHOLE-FUNCTION property. No amount of C-level
permutation can fix it. So if any part of this ROM was built with a different
variant, those functions are structurally unmatchable today no matter how
correct the C is -- and they would present exactly as CLAUDE.md section R's
residue: a high score, identical under both build modes, permuter never
converging.

Precedent: Klonoa compiles its m4a module with `old_agbcc -ftst` and carries
per-function `-fprologue-bugfix` translation units; pokeemerald does the same
kind of thing. MLSS has m4a code and assumes one configuration everywhere.

THE EXPERIMENT, and why it needs no control arm. For each function we compile
the SAME stored candidate under every variant and compare each result against
that function's retail bytes. The comparison is between variants for one
function, so anything that makes a candidate bad in general -- wrong types,
wrong control flow -- hurts every variant equally and cancels out. What cannot
cancel is a variant being systematically closer.

Read it as follows:

  * `agbcc` wins or ties everywhere  ->  hypothesis DEAD, one configuration.
    That is a real result and retires a whole class of speculation.
  * a cluster of functions is dramatically closer under another variant
    ->  hypothesis LIVE; find the module boundary and add a per-object
    compiler selection to the Makefile the way Klonoa does.

METHOD. Everything happens in a scratch directory mounted into the toolchain
container. The repo is mounted READ-ONLY, so this cannot race the live
factory, needs no `gitops.repo_lock()`, and writes nothing to `build/`.

  retail    = assemble asm/nonmatching/<name>.s          -> .text bytes
  candidate = preprocessed context + candidate_body
              -> agbcc(variant) -> as                    -> .text bytes

Both sides are one function in one object, so the section comparison is exact
-- this deliberately avoids asm-differ, whose object-level diffing is what
CLAUDE.md N.4a found was measuring position-in-file rather than code quality.

Relocations are compared alongside the bytes: `bl target` assembles to a
placeholder zero on both sides, so bytes alone would call two different
callees identical (the reasoning in twin_backfill._text_image).

    python3 tools/factory/compiler_variants.py --limit 40
    python3 tools/factory/compiler_variants.py --names sub_806C8C0 sub_805DE90
    python3 tools/factory/compiler_variants.py --limit 60 --min-score 20000
"""
from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

REPO = gitops.REPO
IMAGE = "localhost/mlss-toolchain:latest"

# The configurations worth asking about. `agbcc` first so it is the baseline
# every other column is read against.
VARIANTS = {
    "agbcc":            ("agbcc",     []),
    "agbcc+prologue":   ("agbcc",     ["-fprologue-bugfix"]),
    "old_agbcc":        ("old_agbcc", []),
    "old+prologue":     ("old_agbcc", ["-fprologue-bugfix"]),
}

# Matches the Makefile's CFLAGS, minus -Werror (a warning is not the question
# here) and minus -ffix-debug-line (debug-line emission is what section S
# found breaks the build from position-dependent sites; it is byte-neutral for
# the .text we compare).
BASE_FLAGS = ["-O2", "-mthumb-interwork", "-fno-common",
              "-Wimplicit", "-Wparentheses", "-g"]


def pick(conn, args) -> list:
    if args.names:
        q = ",".join("?" * len(args.names))
        return conn.execute(
            f"SELECT name, candidate_body, best_score, lines, state "
            f"FROM functions WHERE name IN ({q}) AND candidate_body IS NOT NULL",
            args.names).fetchall()
    return conn.execute(
        "SELECT name, candidate_body, best_score, lines, state FROM functions "
        "WHERE state IN ('tier2_ready','stalled','needs_human') "
        "AND candidate_body IS NOT NULL AND candidate_body NOT LIKE '%M2C_ERROR%' "
        "AND best_score >= ? "
        "ORDER BY best_score DESC LIMIT ?",
        (args.min_score, args.limit)).fetchall()


class StagingError(RuntimeError):
    """A row could not be staged. Raised rather than skipped -- see stage()."""


def stage(rows, work: Path, ctx: Path, frag_owner: dict | None = None,
          strict: bool = True) -> list[str]:
    """Write one .frag.s and one .body.c per row into the scratch dir.

    `frag_owner` maps a row name to the FUNCTION whose retail fragment it
    should be measured against. That is what makes variant rows possible: a
    tool comparing several rewrites of `sub_X` stages them as `sub_X__u8`,
    `sub_X__u16` and so on, none of which has a fragment of its own, and each
    declares `sub_X` as its owner. Every staged row then gets its own
    `<row>.frag.s`, so callers compare `<row>.agbcc.bin` against
    `<row>.retail.bin` uniformly and never have to reason about which name the
    retail side is under.

    `strict` decides what happens when a row cannot be staged. It defaults to
    RAISING, because silently skipping is what this function used to do and it
    caused the same failure four separate times -- in extern_lever (29 of 30
    "does not compile"), in fix_bare_deref (twice), and again when comparing
    against a retail image that was never produced. Every one presented as
    "these candidates are bad" rather than "this harness dropped them", which
    is the directional failure mode CLAUDE.md T.15 is about. A tool that cannot
    stage its input should stop, not report a verdict on data it never had.
    """
    frag_owner = frag_owner or {}
    # Strip cpp line markers. m2c's context is preprocessed by a MODERN cpp,
    # which emits `# 0 "<command-line>"`; agbcc is GCC 2.95 and rejects it
    # ("syntax error before `/'"), silently producing a partial .s and a
    # nonzero exit. The markers are diagnostic only, so dropping them makes
    # the same context plain preprocessed C that agbcc accepts.
    text = ctx.read_text()
    text = "\n".join(l for l in text.splitlines() if not l.startswith("# "))
    (work / "ctx.i").write_text(text + "\n")
    staged, missing = [], []
    for r in rows:
        owner = frag_owner.get(r["name"], r["name"])
        frag = REPO / "asm" / "nonmatching" / f"{owner}.s"
        if not frag.exists():
            missing.append(f"{r['name']} (fragment {owner}.s)")
            continue
        body = frag.read_text()
        if not body.lstrip().startswith(".syntax"):
            # ASM_FUNC/NONMATCH-format fragment (CLAUDE.md's "NONMATCHING
            # convention" section): its header (.syntax unified/.text/
            # thumb_func_start/label) was stripped at conversion time, since
            # the real build's NAKED C wrapper supplies that context. Staging
            # it standalone here has no such wrapper, so synthesize the same
            # header an old-format fragment already carries - verified a true
            # no-op across every real fragment (an old-format one already
            # starts with .syntax and this never fires for it).
            body = f'\t.syntax unified\n\t.text\n\n\tthumb_func_start {owner}\n{owner}:\n' + body
        if ".include" not in body:
            body = '\t.include "asm/macros.inc"\n' + body
        (work / f"{r['name']}.frag.s").write_text(body)
        # Prepend declarations for the ROM symbols the body references that
        # nothing else declares. Without them the isolation compile is not
        # measuring "is this body compilable", it is measuring "does this body
        # happen to reference only header-declared symbols" -- CLAUDE.md N.4b,
        # where the committed byte-exact C of three already-MATCHED functions
        # failed the same check.
        #
        # Measured cost of leaving it out: clustering the candidates that
        # produce no iso_score at all, `X undeclared` was the single largest
        # class at 104 of 335 (31%), with `called object is not a function` a
        # further 74. Those are declarations the real source file supplies and
        # this harness did not, so those rows were being denied a ranking
        # score for a reason that has nothing to do with their C.
        #
        # Not stacking the deck: declarations emit no code, declare_missing.py
        # supplies the same ones in the real build, and the byte comparison is
        # unaffected by them.
        body = r["candidate_body"]
        try:
            decls = gitops.rom_symbol_declarations(body)
        except Exception:
            decls = ""
        # Include the project headers as SOURCE and let cpp run over the whole
        # thing, exactly as the real build does -- rather than concatenating a
        # pre-preprocessed context.
        #
        # A pre-preprocessed context has already had its macros expanded and
        # DISCARDED, so a body that says NULL, TRUE or FALSE hits an undefined
        # identifier that the real build resolves without difficulty. Measured:
        # clustering the candidates that produce no iso_score at all,
        # `X undeclared` was the largest class -- 104 of 335, 31% -- and the
        # undeclared identifier was `NULL`. Those rows were denied a ranking
        # score, and any byte-exact ones among them were never found, for a
        # defect in this harness rather than anything about their C.
        (work / f"{r['name']}.body.c").write_text(
            '#include "global.h"\n#include "common.h"\n' + (decls or "") + body)
        staged.append(r["name"])
    if missing:
        if strict:
            raise StagingError(
                f"{len(missing)} of {len(rows)} row(s) have no retail fragment and "
                f"were not staged, e.g. {', '.join(missing[:3])}. Pass frag_owner "
                f"for variant rows, or strict=False to accept the loss.")
        # strict=False is for broad sweeps where some loss is legitimate -- a
        # row whose function matched since the query ran has no fragment any
        # more. Still SAY SO. Accepting a loss silently is how the four
        # earlier staging failures stayed invisible.
        print(f"  note: {len(missing)} of {len(rows)} row(s) had no retail "
              f"fragment and were skipped (e.g. {missing[0]})")
    return staged


SCRIPT = r"""
set -u
cd /w
for n in $(cat names.txt); do
  # retail side: the fragment IS the retail assembly
  arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -I /workspace \
      -o $n.retail.o $n.frag.s 2>$n.retail.err || { echo "$n RETAIL_AS_FAIL"; continue; }
  arm-none-eabi-objcopy -O binary -j .text $n.retail.o $n.retail.bin 2>/dev/null
  arm-none-eabi-objdump -r -j .text $n.retail.o > $n.retail.rel 2>/dev/null

  # agbcc IS cc1: it consumes ALREADY-PREPROCESSED input and does not strip
  # comments -- the Makefile runs cpp separately for exactly this reason. m2c
  # annotates its output with `/* extern */`, which reaches cc1 raw and is a
  # syntax error. These CPPFLAGS mirror the Makefile's exactly, so macros the
  # headers define (NULL, TRUE, FALSE) are live for the body.
  arm-none-eabi-cpp -I /workspace/tools/agbcc/include -nostdinc -undef \
      -iquote /workspace/include -Wno-trigraphs $n.body.c -o $n.pp.c 2>$n.pp.err \
      || { echo "$n PP_FAIL"; continue; }
  while read -r vname cc flags; do
    /workspace/tools/agbcc/bin/$cc $n.pp.c @@FLAGS@@ $flags -o $n.$vname.s 2>$n.$vname.cc.err || { echo "$n $vname CC_FAIL"; continue; }
    printf '\t.text\n\t.align 2, 0\n' >> $n.$vname.s
    arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -I /workspace \
        -o $n.$vname.o $n.$vname.s 2>$n.$vname.as.err || { echo "$n $vname AS_FAIL"; continue; }
    arm-none-eabi-objcopy -O binary -j .text $n.$vname.o $n.$vname.bin 2>/dev/null
    arm-none-eabi-objdump -r -j .text $n.$vname.o > $n.$vname.rel 2>/dev/null
    echo "$n $vname OK"
  done < variants.txt
done
"""


def relset(p: Path) -> tuple:
    if not p.exists():
        return ()
    return tuple(sorted(re.findall(r"^[0-9a-f]+\s+(\S+)\s+(\S+)", p.read_text(), re.M)))


def distance(cand: Path, retail: Path, crel: Path, rrel: Path):
    """(differing bytes, length delta, relocs_equal) or None if unbuilt."""
    if not cand.exists() or not retail.exists():
        return None
    a, b = cand.read_bytes(), retail.read_bytes()
    n = min(len(a), len(b))
    diff = sum(1 for i in range(n) if a[i] != b[i]) + abs(len(a) - len(b))
    return diff, len(a) - len(b), relset(crel) == relset(rrel)


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=40)
    ap.add_argument("--min-score", type=int, default=0)
    ap.add_argument("--names", nargs="*")
    ap.add_argument("--keep", action="store_true", help="keep the scratch dir")
    args = ap.parse_args()

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=True)
    rows = pick(conn, args)
    if not rows:
        print("nothing to test with those filters")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"cvar.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    try:
        staged = stage(rows, work, ctx)
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        (work / "variants.txt").write_text(
            "\n".join(f"{v} {cc} {' '.join(fl)}" for v, (cc, fl) in VARIANTS.items()) + "\n")
        print(f"testing {len(staged)} function(s) x {len(VARIANTS)} variant(s)")

        script = SCRIPT.replace("@@FLAGS@@", " ".join(BASE_FLAGS))
        proc = subprocess.run(
            ["podman", "run", "--rm",
             "-v", f"{REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
             IMAGE, "bash", "-c", script],
            capture_output=True, text=True, timeout=3600)

        wins = Counter()
        exact = Counter()
        exact_names = []
        row_score = {r["name"]: r["best_score"] for r in rows}
        interesting = []
        scored = 0
        for name in staged:
            d = {}
            for v in VARIANTS:
                r = distance(work / f"{name}.{v}.bin", work / f"{name}.retail.bin",
                             work / f"{name}.{v}.rel", work / f"{name}.retail.rel")
                if r:
                    d[v] = r
            if not d:
                continue
            scored += 1
            best = min(d, key=lambda v: d[v][0])
            wins[best] += 1
            for v, (diff, dl, rel) in d.items():
                if diff == 0 and rel:
                    exact[v] += 1
            if d.get("agbcc", (1, 0, False))[0] == 0 and d["agbcc"][2]:
                exact_names.append((name, row_score.get(name),
                                    (work / f"{name}.retail.bin").stat().st_size))
            base = d.get("agbcc", (10**9, 0, False))[0]
            if best != "agbcc" and d[best][0] < base:
                interesting.append((name, base, best, d[best][0]))

        print(f"\nscored {scored} function(s)\n")
        print(f"{'variant':<18}{'closest for N':>14}{'byte-exact':>13}")
        for v in VARIANTS:
            print(f"  {v:<16}{wins[v]:>14}{exact[v]:>13}")

        if exact_names:
            print(f"\nBYTE-EXACT under the DEFAULT compiler ({len(exact_names)}):")
            print(f"  {'function':<20}{'stored score':>13}{'.text bytes':>13}")
            for n, sc, sz in exact_names:
                print(f"  {n:<20}{sc:>13}{sz:>13}")

        if interesting:
            interesting.sort(key=lambda x: x[1] - x[3], reverse=True)
            print(f"\n{len(interesting)} function(s) closer under a NON-default variant:")
            print(f"  {'function':<20}{'agbcc':>9}{'best':>18}{'diff':>9}")
            for n, b, v, s in interesting[:25]:
                print(f"  {n:<20}{b:>9}{v:>18}{s:>9}")
        elif scored:
            print("\nNo function was closer under any non-default variant.")
            print(f"On these {scored}, the hypothesis does NOT hold: one configuration.")
        if not scored:
            # Never report a verdict from zero observations. That is the exact
            # failure this project has hit ten times: an instrument that says
            # "nothing here" when it simply did not measure.
            print("\nNOTHING WAS MEASURED -- no verdict.")
            fails = [l for l in proc.stdout.splitlines() if "FAIL" in l]
            for l in fails[:8]:
                print("   ", l)
            print("Re-run with --keep and read *.retail.err / *.cc.err.")
            return 2
        return 0
    finally:
        if not args.keep:
            shutil.rmtree(work, ignore_errors=True)
        else:
            print(f"\nscratch kept at {work}")


if __name__ == "__main__":
    raise SystemExit(main())
