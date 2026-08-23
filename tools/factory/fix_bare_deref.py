#!/usr/bin/env python3
"""Give m2c's uncast dereferences a width, chosen by measurement rather than guess.

THE DEFECT. m2c sometimes emits a dereference with no cast at all:

    return *(arg0 + 0xC + (arg1 * 0x14));          arg0 is s32
    sub_8115048(..., *(arg0 + 0x580 + arg1), ...); arg0 is void *

Neither compiles. Depending on the operand's type agbcc says either
`invalid type argument of 'unary *'` or `invalid use of void expression` --
two messages, ONE defect. Together they are the largest remaining class in the
isolation clustering (T.15): 102 + 69 of 274 genuine failures, 62%.

WHY THIS IS NOT SECTION H.4 AGAIN. H tried a cast-insertion rule for this and
recorded two reasons it failed, both of which have since changed:

  * "removed only ~7% of errors and produced 0 additional compiles, because
    seeds carry several errors each" -- that was before the T.9 -g fallback,
    the T.2/T.4 declaration repairs, the T.15 harness fixes and the
    indirect-call precedence rule. Those cleared the other errors, so for many
    seeds this is now the LAST one.
  * "the obvious implementation is UNSAFE: a regex on `= *(` also rewrites
    `*(u8 *)(p + 4)` into `*(s32 *)(u8 *)(p + 4)`, silently turning a 1-byte
    load into a 4-byte one." That warning is respected here: only a BARE
    dereference is touched, cast dereferences are masked out before matching,
    and nothing is written back unless it measurably improves.

WHY ENUMERATION IS LEGITIMATE HERE. The width is genuinely unknowable from the
C -- m2c emitted no cast precisely because it could not infer one. But it is
knowable by MEASUREMENT: `isolation_exact` compiles one symbol alone and
compares its bytes against the retail fragment at ~2,000/min. So try all six
widths and keep whichever lands closest to retail.

That is not guessing dressed up. A wrong width produces a worse byte distance,
never a silent corruption, and the from-scratch ROM sha1 gate is untouched. It
is the same shape as decomp-permuter -- search a small space, verify every
candidate -- except the space here is six options rather than unbounded, and
the verification is exact rather than a score.

SCOPE. Only candidates with exactly ONE bare dereference, which is 180 of the
318 that have any. Multiple dereferences need a greedy pass and are left alone.

    python3 tools/factory/fix_bare_deref.py --limit 200
    python3 tools/factory/fix_bare_deref.py --limit 200 --apply

Read-only until --apply, which writes only to the DB.
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

WIDTHS = ["u8", "s8", "u16", "s16", "u32", "s32"]

# A dereference whose operand is NOT already a cast. The lookahead is the whole
# safety property -- see H.4 in the module docstring.
BARE = re.compile(r"\*\((?!\s*\()(?![^()]*\*\s*\))([^()]*(?:\([^()]*\)[^()]*)*)\)")
# Properly cast dereferences, masked out before matching so they are untouched.
CAST = re.compile(r"\*\(\s*(?:const\s+)?[us]?\d*\w*\s*\*+\s*\)")


def bare_spans(body: str) -> list[tuple[int, int, str]]:
    """(start, end, inner) for each bare dereference, positions in `body`."""
    masked = CAST.sub(lambda m: "\x00" * len(m.group(0)), body)
    return [(m.start(), m.end(), m.group(1)) for m in BARE.finditer(masked)]


def variant(body: str, span: tuple[int, int, str], width: str) -> str:
    s, e, inner = span
    return f"{body[:s]}*({width} *)({inner}){body[e:]}"


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=200)
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--keep", action="store_true")
    args = ap.parse_args()

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=not args.apply)
    rows = conn.execute(
        "SELECT name, candidate_body FROM functions "
        "WHERE state IN ('tier2_ready','needs_attempt','stalled','needs_human') "
        "AND candidate_body IS NOT NULL AND iso_score IS NULL "
        "ORDER BY LENGTH(candidate_body) ASC").fetchall()

    targets = []
    for r in rows:
        spans = bare_spans(r["candidate_body"])
        if len(spans) == 1:
            targets.append((r["name"], r["candidate_body"], spans[0]))
        if len(targets) >= args.limit:
            break
    if not targets:
        print("no candidates with exactly one bare dereference")
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"baredf.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    try:
        class Row(dict):
            pass

        staged_rows, owner = [], {}
        for name, body, span in targets:
            for w in WIDTHS:
                tag = f"{name}__{w}"
                staged_rows.append(Row(name=tag, candidate_body=variant(body, span, w)))
                owner[tag] = (name, w)

        # Stage the ORIGINALS through cv.stage -- it needs a real fragment on
        # disk -- then write each variant by hand. cv.stage skips any row with
        # no asm/nonmatching/<name>.s, and a `sub_X__u8` tag has none, so
        # letting it stage the variants silently produced no body.c for any of
        # them and the whole run measured nothing.
        real = [Row(name=n, candidate_body=b) for n, b, _ in targets]
        cv.stage(real, work, ctx)
        names = []
        for tag, (name, _w) in owner.items():
            src = work / f"{name}.frag.s"
            if not src.exists():
                continue
            shutil.copy(src, work / f"{tag}.frag.s")
            body = next(r["candidate_body"] for r in staged_rows if r["name"] == tag)
            try:
                decls = gitops.rom_symbol_declarations(body) or ""
            except Exception:
                decls = ""
            (work / f"{tag}.body.c").write_text(
                '#include "global.h"\n#include "common.h"\n' + decls + body)
            names.append(tag)
        (work / "names.txt").write_text("\n".join(names) + "\n")
        (work / "variants.txt").write_text("agbcc agbcc \n")
        print(f"{len(targets)} candidate(s) x {len(WIDTHS)} widths = {len(names)} compiles")

        script = cv.SCRIPT.replace("@@FLAGS@@", " ".join(cv.BASE_FLAGS))
        subprocess.run(["podman", "run", "--rm",
                        "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
                        cv.IMAGE, "bash", "-c", script],
                       capture_output=True, text=True, timeout=7200)

        best: dict[str, tuple[int, str]] = {}
        for tag, (name, w) in owner.items():
            # Compare against the TAG's retail image, not the original's. Only
            # tags appear in names.txt, so <name>.retail.bin is never produced
            # -- looking for it measured nothing at all while 360 compiles ran
            # perfectly well. Each tag's fragment is a copy of its original's,
            # so the retail side is identical either way.
            d = cv.distance(work / f"{tag}.agbcc.bin", work / f"{tag}.retail.bin",
                            work / f"{tag}.agbcc.rel", work / f"{tag}.retail.rel")
            if d is None:
                continue
            diff = d[0]
            if name not in best or diff < best[name][0]:
                best[name] = (diff, w)

        if not best:
            print("\nNOTHING WAS MEASURED -- no verdict. Re-run with --keep.")
            return 2

        exact = [n for n, (d, _) in best.items() if d == 0]
        chosen = Counter(w for _d, w in best.values())
        print(f"\nresolved a width for {len(best)} of {len(targets)} candidate(s)")
        print(f"  byte-EXACT: {len(exact)}")
        print("  width chosen:", ", ".join(f"{w}={n}" for w, n in chosen.most_common()))
        for n in exact[:15]:
            print(f"     exact: {n:<18} width {best[n][1]}")
        buckets = Counter()
        for d, _w in best.values():
            buckets["0" if d == 0 else "1-9" if d < 10 else "10-49" if d < 50
                    else "50-199" if d < 200 else "200+"] += 1
        print("  resulting distance from retail:",
              ", ".join(f"{k}={buckets[k]}" for k in ["0", "1-9", "10-49", "50-199", "200+"]
                        if buckets[k]))

        if args.apply:
            bodies = {n: b for n, b, _ in targets}
            spans = {n: s for n, _b, s in targets}
            for name, (diff, w) in best.items():
                fixed = variant(bodies[name], spans[name], w)
                with db.tx(conn):
                    conn.execute(
                        "UPDATE functions SET candidate_body=?, iso_score=? WHERE name=?",
                        (fixed, diff, name))
                    db.log_event(conn, name, "bare_deref_width",
                                 f"chose {w}, iso_score {diff}")
            print(f"\nwrote {len(best)} candidate(s) with a measured width.")
            print("Run isolation_exact.py --apply to route the exact ones.")
        else:
            print("\npass --apply to write these back.")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
