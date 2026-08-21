#!/usr/bin/env python3
"""Categorize WHY m2c seeds fail to compile, so the biggest buckets can be
fixed deterministically in m2c_bridge.

m2c translates 93-96% of functions, but a large share of those seeds don't
compile -- and a seed that doesn't compile is worth exactly nothing to the
pipeline: no asm-differ score, no permuter search, no match. That makes
the compile-failure bucket the single biggest recoverable loss, and unlike
"this function is hard" it is made of a small number of mechanical,
repeating causes.

Same philosophy as stall_patterns.py, one stage earlier in the funnel:
group by cause, fix the cause once, recover the whole batch. The
arg-register rule (m2c_bridge.restore_omitted_leading_params) is the
worked example of what a fix looks like.

Usage:
    python3 tools/factory/compile_errors.py [--limit N]
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

# Normalize a raw agbcc diagnostic down to its CAUSE, dropping identifiers
# and line numbers so the same defect in different functions groups.
NORMALIZERS = [
    (re.compile(r"`sp' undeclared"), "stack variable (sp) not modelled"),
    (re.compile(r"`(\w+)' undeclared"), "undeclared identifier"),
    (re.compile(r"invalid operands to binary [-+&|^*/]"), "void* / bad-type arithmetic"),
    (re.compile(r"invalid type argument of `unary \*'"), "dereference of non-pointer"),
    (re.compile(r"dereferencing `void \*' pointer"), "void* dereference"),
    (re.compile(r"assignment makes pointer from integer without a cast"),
     "pointer-from-integer assignment"),
    (re.compile(r"assignment makes integer from pointer without a cast"),
     "integer-from-pointer assignment"),
    (re.compile(r"makes pointer from integer without a cast"), "pointer-from-integer (arg/return)"),
    (re.compile(r"parameter `?(\w+)'? (?:is initialized|has incomplete type)"), "bad parameter type"),
    (re.compile(r"conflicting types for"), "conflicting declaration"),
    (re.compile(r"redefinition of"), "redefinition"),
    (re.compile(r"too (?:many|few) arguments"), "call arity mismatch"),
    (re.compile(r"warning: (?:unused|implicit)"), "unused/implicit warning as error"),
    (re.compile(r"parse error|syntax error"), "parse error in generated C"),
]

DIAG_RE = re.compile(r"^src/\S+:\d+:\s*(?:warning:\s*)?(.+)$", re.MULTILINE)


def categorize(output: str) -> list[str]:
    cats = []
    for raw in DIAG_RE.findall(output):
        msg = raw.strip()
        for pat, label in NORMALIZERS:
            if pat.search(msg):
                cats.append(label)
                break
        else:
            cats.append("OTHER: " + re.sub(r"`[^']*'", "`X'", msg)[:70])
    return cats


def try_compile(name: str, body: str) -> tuple[bool, str]:
    """Splice, build ONLY this unit's object, always revert.

    Builds one object rather than running `make`: a full NONMATCHING build
    always fails at the `compare` step by design, which would make every
    result look like a failure. See unblock_files.py for the same trap.
    """
    with gitops.repo_lock(what=f"compile_errors {name}"):
        c_path = gitops.splice_into_else(name, body)
        if c_path is None:
            return False, "could not splice"
        try:
            obj = f"build/src/{c_path.stem}.o"
            gitops.run(["rm", "-f", str(gitops.REPO / obj)])
            r = gitops.run(["./container.sh", "make", "NONMATCHING=1", obj])
            return r.returncode == 0, r.stdout + r.stderr
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
            # Never leave the NONMATCHING object behind: Make can't see
            # flag changes, so the next plain `make` would link it into the
            # ROM and report a failure that isn't real. See unblock_files'
            # _drop_obj() for the observed case.
            gitops.run(["rm", "-f", str(gitops.REPO / obj)])


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=40)
    ap.add_argument("--states", nargs="*",
                    default=["needs_attempt", "stalled", "needs_human"])
    ap.add_argument("--names-file", type=Path, default=None,
                    help="measure exactly these functions (one name per line) "
                         "instead of sampling by state. REQUIRED for comparing "
                         "two versions of m2c_bridge: sampling by state against "
                         "a live factory draws a DIFFERENT set every run, so "
                         "before/after numbers are noise, not signal.")
    args = ap.parse_args()

    conn = db.connect()
    if args.names_file:
        rows = [{"name": n.strip()} for n in args.names_file.read_text().split()
                if n.strip()]
    else:
        q = ",".join("?" for _ in args.states)
        rows = conn.execute(
            f"SELECT name FROM functions WHERE state IN ({q}) ORDER BY lines ASC", args.states
        ).fetchall()

    counts: Counter[str] = Counter()
    examples: dict[str, list[str]] = defaultdict(list)
    tried = ok = 0
    for r in rows:
        if tried >= args.limit:
            break
        name = r["name"]
        if not (gitops.REPO / "asm" / "nonmatching" / f"{name}.s").exists():
            continue
        body = m2c_bridge.generate(name)
        if not body:
            continue
        compiled, output = try_compile(name, body)
        tried += 1
        if compiled:
            ok += 1
        else:
            for cat in set(categorize(output)):
                counts[cat] += 1
                if len(examples[cat]) < 4:
                    examples[cat].append(name)
        if tried % 10 == 0:
            print(f"  ...tried {tried}, {ok} compiled")
    conn.close()

    print(f"\n=== {tried} m2c seeds compiled: {ok} ok, {tried-ok} failed ===\n")
    for cat, n in counts.most_common():
        print(f"{n:4d}  {cat}")
        print(f"      e.g. {', '.join(examples[cat])}")
    print("\nFix the biggest mechanical bucket in m2c_bridge, then re-run "
          "m2c_sweep to recover the batch.")


if __name__ == "__main__":
    main()
