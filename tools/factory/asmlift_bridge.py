#!/usr/bin/env python3
"""Seed with asmlift where m2c cannot, chosen by measurement.

WHAT ASMLIFT IS. A second programmatic decompiler -- `@asmlift/cli`, MIT, by
the author of the Klonoa: Empire of Dreams decomp -- built specifically for
matching decompilation on retro compilers, and it supports ARMv4T/Thumb with
`--target agbcc`. It reads the same pret-style split assembly this project
already emits, so `asm/nonmatching/<name>.s` needs no conversion.

WHY BOTHER, GIVEN m2c WORKS. Because the two fail on different things, and the
overlap is where the remaining work is. Measured on 150 fragments whose m2c
seed does NOT compile (no `iso_score`, i.e. the residue after every repair in
CLAUDE.md sections T.2-T.15):

    asmlift produced C for            40 of 150   (27%)
    ...of those, byte-EXACT            8
    ...within 1-9 bytes                5
    ...within 10-49 bytes             12
    ...50+ bytes                      13
    ...did not compile                 2

**Eight immediate matches out of functions m2c cannot handle at all**, plus
five near-misses well inside the band that converges. That is a better return
than anything else currently available on this pile.

They also share limits: both decline `swi` (BIOS calls) for the same reason,
so this is a complement rather than a replacement. m2c stays the primary
seeder -- it covers far more of the corpus -- and asmlift is tried where m2c
came up empty.

NOTHING IS TAKEN ON FAITH. Every asmlift body is compiled alone and byte-
compared against the retail fragment, exactly like an m2c seed
(`isolation_exact`), and a body is only stored if it measurably beats what is
already there. Byte-exact candidates are ROUTED to the validator, never
promoted -- `finish_match()`'s from-scratch build plus ROM sha1 remains the
only verdict.

DEPENDENCY, and it is a real one: asmlift is a Node package and this machine
has no system Node. Point ASMLIFT at an installed binary, or install it with

    npm install @asmlift/cli        # provides node_modules/.bin/asmlift

    ASMLIFT=/path/to/asmlift python3 tools/factory/asmlift_bridge.py --limit 200
    ASMLIFT=/path/to/asmlift python3 tools/factory/asmlift_bridge.py --limit 200 --apply
"""
from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import compiler_variants as cv  # noqa: E402
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

SUFFIX = "__AL"


def find_asmlift() -> str | None:
    env = os.environ.get("ASMLIFT")
    if env and Path(env).exists():
        return env
    which = shutil.which("asmlift")
    if which:
        return which
    for p in Path(gitops.REPO).rglob("node_modules/.bin/asmlift"):
        return str(p)
    return None


def lift(binary: str, name: str) -> tuple[str, str | None]:
    """-> (name, body) or (name, None) if asmlift declined or left a gap."""
    frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.exists():
        return name, None
    try:
        p = subprocess.run([binary, str(frag.resolve()), "--target", "agbcc",
                            "--name", name],
                           capture_output=True, text=True, timeout=180)
    except Exception:
        return name, None
    out = p.stdout
    # ASMLIFT_ERROR is its own gap marker -- the equivalent of M2C_ERROR, and
    # just as uncompilable. Declining here is the same judgement m2c_bridge
    # makes about its own error marker.
    if not out.strip() or "ASMLIFT_ERROR" in out:
        return name, None
    # Drop its leading commentary block; keep the code.
    body = "\n".join(l for l in out.splitlines() if not l.strip().startswith("/*"))
    return name, body or None


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--limit", type=int, default=200)
    ap.add_argument("--apply", action="store_true")
    ap.add_argument("--jobs", type=int, default=6)
    ap.add_argument("--keep", action="store_true")
    args = ap.parse_args()

    binary = find_asmlift()
    if binary is None:
        print("asmlift not found. Set ASMLIFT=/path/to/asmlift, or "
              "`npm install @asmlift/cli`.", file=sys.stderr)
        return 1

    ctx = m2c_bridge.ensure_context()
    if ctx is None:
        print("could not build the preprocessed context", file=sys.stderr)
        return 1

    conn = db.connect(readonly=not args.apply)
    # Target the residue: rows m2c could not turn into anything measurable.
    rows = conn.execute(
        "SELECT name, iso_score FROM functions "
        "WHERE state IN ('tier2_ready','needs_attempt','stalled','needs_human') "
        "AND iso_score IS NULL ORDER BY COALESCE(lines, 9999) ASC LIMIT ?",
        (args.limit,)).fetchall()
    if not rows:
        print("no candidates without an iso_score -- nothing for asmlift to add")
        return 0

    names = [r["name"] for r in rows]
    print(f"running asmlift over {len(names)} fragment(s) m2c could not seed")

    class Row(dict):
        pass

    lifted: dict[str, str] = {}
    with ThreadPoolExecutor(max_workers=args.jobs) as ex:
        for n, body in ex.map(lambda n: lift(binary, n), names):
            if body:
                lifted[n] = body
    print(f"  asmlift produced C for {len(lifted)} ({100*len(lifted)/len(names):.0f}%)")
    if not lifted:
        return 0

    work = Path(os.environ.get("SCRATCH", "/tmp")) / f"asmlift.{os.getpid()}"
    work.mkdir(parents=True, exist_ok=True)
    try:
        staged_rows = [Row(name=n + SUFFIX, candidate_body=b) for n, b in lifted.items()]
        staged = cv.stage(staged_rows, work, ctx,
                          frag_owner={n + SUFFIX: n for n in lifted}, strict=False)
        (work / "names.txt").write_text("\n".join(staged) + "\n")
        (work / "variants.txt").write_text("agbcc agbcc \n")
        subprocess.run(["podman", "run", "--rm",
                        "-v", f"{gitops.REPO}:/workspace:ro", "-v", f"{work}:/w:Z",
                        cv.IMAGE, "bash", "-c",
                        cv.SCRIPT.replace("@@FLAGS@@", " ".join(cv.BASE_FLAGS))],
                       capture_output=True, text=True, timeout=7200)

        band, keep, exact = Counter(), {}, []
        for tag in staged:
            n = tag[: -len(SUFFIX)]
            d = cv.distance(work / f"{tag}.agbcc.bin", work / f"{tag}.retail.bin",
                            work / f"{tag}.agbcc.rel", work / f"{tag}.retail.rel")
            if d is None:
                band["no compile"] += 1
                continue
            v = d[0]
            band["0" if v == 0 else "1-9" if v < 10 else "10-49" if v < 50
                 else "50+"] += 1
            keep[n] = v
            if v == 0:
                exact.append(n)

        if not keep:
            print("\nNOTHING WAS MEASURED -- no asmlift body compiled. Re-run "
                  "with --keep and read *.agbcc.cc.err.")
            return 2

        print("  quality:", ", ".join(f"{k}={v}" for k, v in band.most_common()))
        print(f"  byte-EXACT: {len(exact)}"
              + (f" -- {', '.join(exact[:8])}" if exact else ""))

        if args.apply:
            for n, v in keep.items():
                with db.tx(conn):
                    conn.execute(
                        "UPDATE functions SET candidate_body=?, candidate_source='asmlift', "
                        "iso_score=?, seed_ruleset=NULL WHERE name=?",
                        (lifted[n], v, n))
                    db.log_event(conn, n, "asmlift_seed", f"iso_score {v}")
            print(f"\nstored {len(keep)} asmlift seed(s).")
            print("Run isolation_exact.py --apply to route the exact ones.")
        else:
            print("\npass --apply to store these.")
        return 0
    finally:
        if args.keep:
            print(f"\nscratch kept at {work}")
        else:
            shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    raise SystemExit(main())
