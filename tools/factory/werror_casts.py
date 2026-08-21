#!/usr/bin/env python3
"""Silence agbcc's pointer/integer warnings with codegen-neutral casts.

WHY THIS IS SAFE, AND WHY IT IS WORTH DOING.

agbcc is invoked with `-Wimplicit -Wparentheses -Werror`, so a warning is a
hard compile failure. Measured over a random sample of 45 seeds from the
"does not compile" pile, clustering on the FATAL error (compiling with
warnings allowed so only real errors remain): **22% compile as soon as the
warnings are permitted**. Those seeds are not wrong -- m2c produced C that
says exactly the right thing about types agbcc wants spelled out.

A cast between a 32-bit integer and a pointer on ARMv4T does not change a
single instruction: it changes what the front end will accept, not what the
back end emits. So adding one to silence such a warning cannot alter the
match. That is an argument, not a proof, which is why apply() PROVES it per
function: it compiles the body with warnings allowed, compiles the
cast-inserted body with `-Werror`, and requires the two `.o` files to be
byte-identical. Anything else is rejected and the original body is kept.

Handles the shapes that actually dominate the sample:

    assignment makes integer from pointer without a cast
    assignment makes pointer from integer without a cast
    comparison between pointer and integer
    passing arg N of `f' makes integer from pointer without a cast

Usage (measurement, not a pipeline step):
    python3 tools/factory/werror_casts.py --sample 40
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402

# Warnings agbcc emits, with the side that needs the cast.
WARN_RE = re.compile(
    r"^(?P<file>[^:]+):(?P<line>\d+):\s*warning:\s*(?P<msg>.+)$")

LAX_CFLAGS = ("CFLAGS=-O2 -mthumb-interwork -fno-common -Wparentheses "
              "-g -ffix-debug-line")
MAX_ROUNDS = 6


def _compile(stem: str, lax: bool) -> subprocess.CompletedProcess:
    obj = f"build/src/{stem}.o"
    subprocess.run(["rm", "-f", obj, f"build/src/{stem}.s"], cwd=gitops.REPO)
    cmd = ["./container.sh", "make", "NONMATCHING=1"]
    if lax:
        cmd.append(LAX_CFLAGS)
    cmd.append(obj)
    return gitops.run(cmd)


def _obj_bytes(stem: str) -> bytes | None:
    p = gitops.REPO / "build" / "src" / f"{stem}.o"
    try:
        return p.read_bytes()
    except OSError:
        return None


def _cast_assignment(line: str, to_pointer: bool) -> str | None:
    """`lhs = rhs;` -> `lhs = (cast)(rhs);` on the right-hand side only."""
    m = re.match(r"^(\s*)(.+?)(\s*=\s*)(.+?)(;\s*)$", line)
    if not m or "==" in line:
        return None
    indent, lhs, eq, rhs, tail = m.groups()
    cast = "(void *)" if to_pointer else "(s32)"
    if rhs.startswith(cast):
        return None
    return f"{indent}{lhs}{eq}{cast}({rhs}){tail}"


def _cast_comparison(line: str, distinct_pointers: bool = False) -> str | None:
    """Cast one side of a mismatched comparison.

    Two shapes, both measured in the sample: pointer-vs-integer (cast the
    pointer side to s32) and two DISTINCT pointer types (cast the right
    side to void *, which compares equal without changing the compare
    instruction)."""
    if distinct_pointers:
        m = re.search(r"(==|!=)", line)
        if not m:
            return None
        op = m.group(1)
        head, _, tail = line.partition(op)
        rhs = tail.rstrip().rstrip(";")
        if rhs.strip().startswith("(void *)"):
            return None
        return f"{head}{op} (void *)({rhs.strip()});"
    m = re.search(r"(==|!=|<=|>=|<|>)", line)
    if not m:
        return None
    op = m.group(1)
    head, _, tail = line.partition(op)
    # Cast whichever side dereferences or casts to a pointer.
    if "*" in head and "(s32)" not in head:
        return f"(s32)({head.strip()}) {op} {tail}"
    if "*" in tail and "(s32)" not in tail:
        return f"{head}{op} (s32)({tail.rstrip().rstrip(';')});"
    return None


def _cast_arg(line: str, argno: int) -> str | None:
    """Cast the Nth argument of the call on this line to s32."""
    m = re.search(r"(\w+)\s*\((.*)\)", line)
    if not m:
        return None
    args, start, end = m.group(2), m.start(2), m.end(2)
    parts, depth, cur = [], 0, ""
    for ch in args:
        if ch == "," and depth == 0:
            parts.append(cur); cur = ""; continue
        if ch in "([": depth += 1
        elif ch in ")]": depth -= 1
        cur += ch
    parts.append(cur)
    if not (1 <= argno <= len(parts)):
        return None
    if parts[argno - 1].strip().startswith("(s32)"):
        return None
    parts[argno - 1] = f" (s32)({parts[argno - 1].strip()})"
    return line[:start] + ",".join(parts) + line[end:]


def _fix_line(line: str, msg: str) -> str | None:
    if "makes integer from pointer" in msg and "passing arg" not in msg:
        return _cast_assignment(line, to_pointer=False)
    if "makes pointer from integer" in msg and "passing arg" not in msg:
        return _cast_assignment(line, to_pointer=True)
    if "comparison between pointer and integer" in msg:
        return _cast_comparison(line)
    if "comparison of distinct pointer types" in msg:
        return _cast_comparison(line, distinct_pointers=True)
    m = re.search(r"passing arg (\d+)", msg)
    if m:
        return _cast_arg(line, int(m.group(1)))
    return None


def apply(name: str, body: str) -> tuple[str | None, str]:
    """-> (fixed_body or None, reason).

    Caller must hold the repo lock. Reverts the source it touches.
    """
    c_path = gitops.splice_into_else(name, body)
    if c_path is None:
        return None, "no guard block"
    stem = c_path.stem
    try:
        lax = _compile(stem, lax=True)
        if lax.returncode != 0:
            return None, "fails even with warnings allowed (a real error, not -Werror)"
        reference = _obj_bytes(stem)

        cur = body
        for _ in range(MAX_ROUNDS):
            gitops.splice_into_else(name, cur)
            strict = _compile(stem, lax=False)
            if strict.returncode == 0:
                after = _obj_bytes(stem)
                if reference is not None and after == reference:
                    return cur, "clean under -Werror, object byte-identical"
                return None, "casts CHANGED codegen -- rejected"
            text = (strict.stdout or "") + (strict.stderr or "")
            file_lines = c_path.read_text().splitlines()
            body_lines = cur.splitlines()
            # Where does the candidate body start in the spliced file?
            try:
                offset = file_lines.index(body_lines[0])
            except (ValueError, IndexError):
                return None, "could not locate the body in the spliced file"
            changed = False
            for wl in text.splitlines():
                m = WARN_RE.match(wl.strip())
                if not m:
                    continue
                idx = int(m.group("line")) - 1 - offset
                if not (0 <= idx < len(body_lines)):
                    continue
                fixed = _fix_line(body_lines[idx], m.group("msg"))
                if fixed and fixed != body_lines[idx]:
                    body_lines[idx] = fixed
                    changed = True
            if not changed:
                return None, "no cast rule matched the remaining warnings"
            cur = "\n".join(body_lines)
        return None, f"still warning after {MAX_ROUNDS} rounds"
    finally:
        gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])
        subprocess.run(["rm", "-f", f"build/src/{stem}.o", f"build/src/{stem}.s"],
                       cwd=gitops.REPO)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--sample", type=int, default=30)
    ap.add_argument("--seed", type=int, default=4242)
    args = ap.parse_args()

    import random, collections, time
    conn = db.connect(readonly=True)
    rows = [r["name"] for r in conn.execute(
        "SELECT name FROM functions WHERE state IN ('needs_attempt','stalled') "
        "AND notes LIKE '%does not compile%' AND candidate_body IS NOT NULL")]
    random.seed(args.seed)
    sample = random.sample(rows, min(args.sample, len(rows)))
    print(f"pile {len(rows)}, trying {len(sample)}\n")

    tally = collections.Counter(); wins = []
    for i, name in enumerate(sample, 1):
        body = conn.execute("SELECT candidate_body FROM functions WHERE name=?",
                            (name,)).fetchone()[0]
        with gitops.repo_lock(what=f"werror_casts {name}"):
            fixed, why = apply(name, body)
        tally[why] += 1
        if fixed:
            wins.append(name)
            print(f"  [{i}/{len(sample)}] {name:22} FIXED -- {why}")
        time.sleep(0.3)

    print(f"\n=== {len(sample)} sampled ===")
    for k, v in tally.most_common():
        print(f"  {v:3} ({100*v/len(sample):4.1f}%)  {k}")
    if wins:
        print(f"\nfixed: {wins}")


if __name__ == "__main__":
    main()
