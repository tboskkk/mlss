#!/usr/bin/env python3
"""What is actually wrong with the candidates that will not compile ALONE?

`isolation_exact.py` compiles each stored candidate on its own and measures its
byte distance from retail. Roughly 320 of ~2,600 produce no measurement at all,
because they do not compile. That pile is the largest untouched block in the
project and nobody knows what is in it any more: CLAUDE.md sections G and H
clustered it, but that was before `declare_missing`, `werror_casts`, the `-g`
debug-line fallback (T.9) and the splice-path declaration repairs (T.2, T.4)
all landed. Every one of those changes what compiles.

METHOD, which section G got wrong the first time and recorded the correction
for. The first pass there keyed on the FIRST diagnostic line and produced a
confident "69% are pointer/int conversion warnings"; compiling those without
`-Werror` showed only 1 of 5 then built. The warning was a symptom sitting
above the real error.

So this compiles each candidate TWICE:

    strict   the project's real flags, -Werror included
    lax      the same flags with warnings allowed

and splits on the difference:

  * fails strict, compiles lax   -> the ONLY blocker is -Werror. Mechanically
                                    fixable, and `werror_casts.py` exists for
                                    exactly this.
  * fails both                   -> a genuine error. Cluster THAT, not the
                                    warnings printed above it.

Isolation also removes a confound the shared-translation-unit builds could
never separate: a candidate here fails on its own merits, not because a
sibling's draft is broken (sections D, I, M).

    python3 tools/factory/isolation_errors.py --limit 400
    python3 tools/factory/isolation_errors.py --limit 400 --keep

Read-only: repo mounted read-only in the container, everything else in a
scratch dir. No repo lock, safe against a live factory.
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
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

LAX = "-Wno-implicit -Wno-parentheses"

# Placeholders are @@-delimited on purpose. They were bare STRICT/LAXF, and
# "STRICT" also occurs in `echo "$n STRICT_OK"` -- so substituting the flags
# rewrote the success marker into the flag string, every clean compile came out
# as an unparseable line, and 151 of 399 candidates were silently counted as
# failures. The tool reported "100% a genuine error" while a third of the pile
# compiled fine.

SCRIPT = r"""
set -u
cd /w
B=/workspace/tools/agbcc/bin/agbcc
for n in $(cat names.txt); do
  arm-none-eabi-cpp -I /workspace/tools/agbcc/include -nostdinc -undef \
      -iquote /workspace/include -Wno-trigraphs $n.body.c -o $n.pp.c 2>/dev/null \
      || { echo "$n PP_FAIL"; continue; }
  $B $n.pp.c @@STRICT@@ -o $n.s 2>$n.strict.err && echo "$n STRICT_OK" && continue
  $B $n.pp.c @@LAX@@   -o $n.s 2>$n.lax.err    && echo "$n LAX_OK"    || echo "$n BOTH_FAIL"
done
"""

# agbcc diagnostics do NOT contain the word "error" -- they read
# `src/x.c:12: `foo' undeclared`. Keying on "error" misses all of them, which
# cost a diagnostic cycle earlier in this project (T.7).
DIAG = re.compile(r"^[^:]+:\d+:\s*(.+)$", re.M)


def classify(msg: str) -> str:
    m = msg.strip()
    m = re.sub(r"`[^']*'", "X", m)
    m = re.sub(r"\bat top level\b.*", "at top level", m)
    m = re.sub(r"\s+", " ", m)
    return m[:70]


# agbcc's "undeclared" diagnostic is THREE lines:
#     x.c:12: `foo' undeclared (first use in this function)
#     x.c:12: (Each undeclared identifier is reported only once
#     x.c:12: for each function it appears in.)
# Taking the last diagnostic therefore clusters on the tail of a multi-line
# message. The first run of this tool did exactly that and reported
# "for each function it appears in.)" as the single largest error class, 102 of
# 335 -- a confident, meaningless answer, and the same shape of mistake section
# G records for its own first clustering pass.
# Compared AFTER stripping a leading "(", so these must not carry one --
# getting that wrong left the second continuation line in and reproduced the
# same meaningless top cluster a second time.
CONTINUATION = ("each undeclared identifier", "for each function it appears in")


def fatal_of(path: Path) -> str | None:
    if not path.exists():
        return None
    lines = [d for d in DIAG.findall(path.read_text(errors="ignore"))
             if not d.lower().startswith("warning")
             and not d.lower().lstrip("(").startswith(CONTINUATION)]
    return classify(lines[-1]) if lines else None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=400)
    ap.add_argument("--keep", action="store_true")
    args = ap.parse_args()

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=True)
    rows = conn.execute(
        "SELECT name, candidate_body, lines FROM functions "
        "WHERE state IN ('tier2_ready','needs_attempt','stalled','needs_human') "
        "AND candidate_body IS NOT NULL AND iso_score IS NULL "
        "ORDER BY COALESCE(lines, 9999) ASC LIMIT ?", (args.limit,)).fetchall()
    if not rows:
        print("no candidates without an iso_score -- nothing to explain")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"isoerr.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    try:
        staged = cv.stage(rows, work, ctx)
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        script = (SCRIPT.replace("@@STRICT@@", " ".join(cv.BASE_FLAGS))
                        .replace("@@LAX@@", " ".join(
                            f for f in cv.BASE_FLAGS if f != "-Werror") + " " + LAX))
        print(f"compiling {len(staged)} candidate(s) alone, strict and lax")
        proc = subprocess.run(
            ["podman", "run", "--rm",
             "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
             cv.IMAGE, "bash", "-c", script],
            capture_output=True, text=True, timeout=7200)

        verdict = {}
        for line in proc.stdout.splitlines():
            parts = line.split()
            if len(parts) == 2:
                verdict[parts[0]] = parts[1]
        if not verdict:
            print("\nNOTHING WAS MEASURED -- no verdict. Re-run with --keep.")
            return 2

        tally = Counter(verdict.values())
        n = len(verdict)
        print(f"\nclassified {n} candidate(s):")
        for k, v in tally.most_common():
            label = {"STRICT_OK": "compiles clean (should have an iso_score!)",
                     "LAX_OK": "ONLY -Werror is in the way",
                     "BOTH_FAIL": "a genuine error",
                     "PP_FAIL": "preprocessor failure"}.get(k, k)
            print(f"  {v:>5}  ({100*v/n:4.1f}%)  {label}")

        genuine = [x for x, v in verdict.items() if v == "BOTH_FAIL"]
        if genuine:
            clusters = Counter()
            example = {}
            for x in genuine:
                f = fatal_of(work / f"{x}.lax.err")
                if f:
                    clusters[f] += 1
                    example.setdefault(f, x)
            print(f"\ngenuine errors, clustered on the FATAL line "
                  f"({sum(clusters.values())} of {len(genuine)} readable):")
            for k, v in clusters.most_common(12):
                print(f"  {v:>5}  {k}")
                print(f"           e.g. {example[k]}")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
