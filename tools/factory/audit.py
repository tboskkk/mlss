#!/usr/bin/env python3
"""Assert that the factory's MEASUREMENTS are true. Not that it is running.

WHY THIS IS A SEPARATE TOOL FROM health.py.

`health.py` and `dashboard.py` check liveness: queue depth, worker
heartbeats, container count. Both were **fully green through the entire
section-F collapse**, because the searches really were succeeding and the
plumbing really was discarding the results. Every large failure this project
has had looks like that:

    section F   permuter wins discarded by a splice that dropped prototypes
    section I   "does not compile" measured in a poisoned translation unit
    section M   promotions rejected by the same poisoning, after the search
    section N   four more, including best_score measuring OBJECT LAYOUT

Every one presented as "the candidate is wrong". None was. So the governing
rule for this repo is: **when throughput disagrees with effort, suspect the
instrument before the code** -- and the cheapest way to suspect an instrument
is to feed it something whose answer is already known.

That is all this tool does. Every check below runs a measurement against an
input whose correct verdict is not in doubt (usually: an already-matched
function, whose committed C provably reproduces the ROM byte-for-byte), and
fails if the instrument disagrees.

Exit status is 0 only if every check passes, so it is usable as a gate.

    python3 tools/factory/audit.py            # read-only checks only
    python3 tools/factory/audit.py --full     # also the ones that build

`--full` takes the repo lock and builds; do not run it against a live
factory without expecting contention.
"""
from __future__ import annotations

import argparse
import random
import re
import sqlite3
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import gitops  # noqa: E402

DB = gitops.REPO / ".claude" / "factory" / "state.db"
FAILURES: list[str] = []
PASSES: list[str] = []


def check(name: str, ok: bool, detail: str = "") -> None:
    (PASSES if ok else FAILURES).append(f"{name}: {detail}" if detail else name)
    print(f"  {'PASS' if ok else 'FAIL'}  {name}" + (f"  -- {detail}" if detail else ""))


def matched_names(conn, n: int) -> list[str]:
    rows = [r[0] for r in conn.execute(
        "SELECT name FROM functions WHERE state='matched'")]
    random.shuffle(rows)
    return rows[:n]


# ---------------------------------------------------------------- read-only

def check_ruleset_sees_m2c(_conn) -> None:
    """A local m2c patch MUST move the ruleset hash.

    It did not, for the entire life of the ldsb/ldsh patch: ruleset_version()
    hashed `git rev-parse HEAD:tools/m2c`, the RECORDED submodule commit,
    while this project's patches live in the submodule's WORKING TREE and are
    deliberately never committed. So the biggest deterministic win the project
    ever had re-opened zero parked rows -- 766 of them were still storing
    `M2C_ERROR(unknown instruction: ldsh)` bodies that regenerate clean.
    """
    import m2c_bridge
    probe = gitops.REPO / "tools" / "m2c" / "m2c" / "arch_arm.py"
    if not probe.is_file():
        check("ruleset tracks local m2c patches", False, "m2c submodule missing")
        return
    before = m2c_bridge.ruleset_version()
    orig = probe.read_bytes()
    try:
        probe.write_bytes(orig + b"\n# audit probe\n")
        m2c_bridge.ruleset_version.cache_clear()
        during = m2c_bridge.ruleset_version()
    finally:
        probe.write_bytes(orig)
        m2c_bridge.ruleset_version.cache_clear()
    after = m2c_bridge.ruleset_version()
    check("ruleset tracks local m2c patches", before != during and before == after,
          f"{before} -> {during} -> {after}")


def check_score_not_layout(conn) -> None:
    """best_score must not be predicted by POSITION IN OBJECT.

    asm-differ `-o` diffs whole objects, and a NONMATCHING=1 build omits every
    sibling whose `#else` is the empty placeholder -- so the score counts
    functions the candidate side was never going to contain. Measured once at
    a median of 1,200 for functions last in their object versus 91,130 for
    those with >10 functions after them: a 76x spread from position alone,
    driving SEED_SCORE_CEILING and the whole claim order.
    """
    import statistics
    cache: dict[str, list[str]] = {}
    last, deep = [], []
    for name, score in conn.execute(
            "SELECT name,best_score FROM functions "
            "WHERE best_score IS NOT NULL AND state='tier2_ready'"):
        stem = gitops._owning_source_stem(name)
        if not stem:
            continue
        if stem not in cache:
            p = gitops.REPO / "src" / f"{stem}.c"
            cache[stem] = (re.findall(r"asm/nonmatching/(\w+)\.s",
                                      p.read_text(errors="ignore"))
                           if p.is_file() else [])
        order = cache[stem]
        if name not in order:
            continue
        after = len(order) - 1 - order.index(name)
        (last if after == 0 else deep if after > 10 else []).append(score)
    if len(last) < 20 or len(deep) < 20:
        check("best_score is not a proxy for object position", True,
              "not enough scored rows to judge")
        return
    ml, md = statistics.median(last), statistics.median(deep)
    ratio = md / max(ml, 1)
    check("best_score is not a proxy for object position", ratio < 4,
          f"median last-in-object {ml:.0f} vs deep-in-object {md:.0f} (x{ratio:.1f})")


def check_expected_fresh(_conn) -> None:
    """expected/ must not predate the newest committed source.

    A stale expected/ makes asm-differ diff against the wrong object and
    report a correct candidate as ~100% wrong. Documented landmine; still
    worth asserting, because knowing about it has not been enough.
    """
    exp = gitops.REPO / "expected" / "build"
    if not exp.is_dir():
        check("expected/ present and fresh", False, "expected/ missing entirely")
        return
    newest_obj = max((p.stat().st_mtime for p in exp.rglob("*.o")), default=0)
    newest_src = max((p.stat().st_mtime for p in (gitops.REPO / "src").rglob("*.c")),
                     default=0)
    check("expected/ present and fresh", newest_obj >= newest_src,
          "expected/ is older than src/ -- refresh it" if newest_obj < newest_src else "")


def check_no_nonmatching_objects(_conn) -> None:
    """build/ must not hold objects from a NONMATCHING build.

    Make cannot see that -DNONMATCHING is not a file, so a leftover object is
    LINKED into the ROM by the next plain make -- one where every `#else` was
    compiled instead of the retail .include. Detected structurally: a plain
    build's object cannot be dramatically smaller than expected/'s.
    """
    bad = []
    for got in (gitops.REPO / "build" / "src").glob("*.o"):
        want = gitops.REPO / "expected" / "build" / "src" / got.name
        if want.is_file() and got.stat().st_size * 2 < want.stat().st_size:
            bad.append(got.name)
    check("no NONMATCHING objects left in build/", not bad,
          f"suspiciously small: {', '.join(bad[:4])}" if bad else "")


# ------------------------------------------------------------------- --full

def check_isolation_accepts_good_c(conn) -> None:
    """compiles_in_isolation() must accept C that provably reproduces the ROM.

    It did not: the committed C of sub_8060464 / sub_8132DE4 / sub_809D24C all
    returned False, because their callees are declared in their source FILE
    rather than in a header and agbcc runs -Wimplicit -Werror. So the check
    was really asking "does this body reference only header-declared symbols".
    """
    import twin_backfill
    names, ok, tried = matched_names(conn, 25), 0, 0
    for n in names:
        c = twin_backfill.matched_c(n)
        if not c:
            continue
        tried += 1
        ok += gitops.compiles_in_isolation(n, c)
        if tried >= 6:
            break
    check("compiles_in_isolation accepts known-good C", tried and ok == tried,
          f"{ok}/{tried} matched functions' committed C accepted")


def check_plain_score_of_matched_is_zero(conn) -> None:
    """A matched function must score 0 when re-measured the plain-build way.

    This is the positive control for rescore_seeds.plain_score: if a function
    whose bytes are known to reproduce the ROM does not score 0, the scorer is
    broken and every ranking decision built on it is noise.
    """
    import rescore_seeds, twin_backfill
    ok = tried = 0
    for n in matched_names(conn, 40):
        c = twin_backfill.matched_c(n)
        if not c:
            continue
        with gitops.repo_lock(what=f"audit {n}"):
            # A matched function has no guard, so splice_candidate cannot run;
            # measure the tree as committed instead.
            stem = gitops._owning_source_stem(n)
            if stem is None:
                continue
            obj = gitops.REPO / "build" / "src" / f"{stem}.o"
            obj.unlink(missing_ok=True)
            if gitops.run(["./container.sh", "make",
                           f"build/src/{stem}.o"]).returncode != 0:
                continue
            r = subprocess.run(["./container.sh", "asm-differ", "-o", n],
                               cwd=gitops.REPO, capture_output=True, text=True)
        m = rescore_seeds.SCORE_RE.search(r.stdout + r.stderr)
        if m is None:
            continue
        tried += 1
        ok += (m.group(1) == "0")
        if tried >= 3:
            break
    check("plain-build scorer returns 0 for matched functions",
          tried and ok == tried, f"{ok}/{tried} scored 0")


def check_rom_reproduces(_conn) -> None:
    with gitops.repo_lock(what="audit rom"):
        import shutil
        shutil.rmtree(gitops.REPO / "build", ignore_errors=True)
        r = gitops.run(["./container.sh", "make"])
    check("ROM reproduces from scratch", "mlss.gba: OK" in (r.stdout + r.stderr))
    ok, detail = gitops.layout_ok()
    check("linked layout unshifted", ok, "" if ok else detail)


READ_ONLY = [check_ruleset_sees_m2c, check_score_not_layout,
             check_expected_fresh, check_no_nonmatching_objects]
FULL = [check_isolation_accepts_good_c, check_plain_score_of_matched_is_zero,
        check_rom_reproduces]


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--full", action="store_true",
                    help="also run checks that build (takes the repo lock)")
    ap.add_argument("--seed", type=int, default=0)
    args = ap.parse_args()
    random.seed(args.seed)

    conn = sqlite3.connect(DB)
    print("FACTORY MEASUREMENT AUDIT -- are the instruments telling the truth?\n")
    for fn in READ_ONLY + (FULL if args.full else []):
        try:
            fn(conn)
        except Exception as e:
            check(fn.__name__, False, f"check itself raised: {e}")
    if not args.full:
        print("\n  (skipped the checks that build; pass --full for those)")
    print(f"\n=== {len(PASSES)} passed, {len(FAILURES)} FAILED ===")
    for f in FAILURES:
        print(f"  !! {f}")
    return 1 if FAILURES else 0


if __name__ == "__main__":
    sys.exit(main())
