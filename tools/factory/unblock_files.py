#!/usr/bin/env python3
"""Draft EVERY `#error` placeholder in a file at once, breaking the
mutual-blocking deadlock that strands whole translation units.

The deadlock, confirmed live: agbcc compiles a whole translation unit, so
one undrafted `#error` sibling fails every function in that file no matter
how correct their own C is. Both tier_m2c and m2c_sweep therefore SKIP any
function that has a blocking sibling -- correct in isolation, but it means
a file holding TWO `#error` placeholders can never make progress: A is
blocked by B, B is blocked by A, and neither is ever drafted. 25 files
(18 with two placeholders, 7 with three = 57 functions) were in exactly
this state, permanently stuck, with no path out under the existing rules.

Found via stall_patterns.py -- not the rule it was built to look for, but
a real structural defect it surfaced anyway.

The fix is per-FILE rather than per-function: generate an m2c seed for
every placeholder in the file simultaneously and splice them all in, so
the unit compiles as a unit. Seeds do not need to be correct here, only
compilable -- once the file builds, every function in it becomes visible
to asm-differ and the permuter again, and the normal pipeline takes over.
A file that still fails to build after this is reverted whole, leaving it
exactly as found.

Usage:
    python3 tools/factory/unblock_files.py [--limit N] [--dry-run]
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import m2c_bridge  # noqa: E402

ERROR_RE = re.compile(r'#error "TODO: write (\w+) to match')

# How many stub-and-rebuild rounds before giving up on a file.
MAX_STUB_ROUNDS = 6


def files_with_placeholders(min_count: int = 1) -> list[tuple[Path, list[str]]]:
    out = []
    for c_path in sorted((gitops.REPO / "src").glob("*.c")):
        names = ERROR_RE.findall(c_path.read_text())
        if len(names) >= min_count:
            out.append((c_path, names))
    return out


# What goes in the #else branch when a placeholder can't be drafted into
# something that compiles. NOT a fake function body -- an explicitly empty
# branch, so the function simply doesn't exist under NONMATCHING=1.
#
# That is safe in a way a stub signature would not be: NONMATCHING=1 never
# produces the shipped ROM (the default build still splices the verbatim
# retail bytes through the #ifndef branch), unblock_files only compiles a
# single object rather than linking, and asm-differ -o diffs per symbol --
# so an absent sibling costs nothing, while a stub with a guessed signature
# could collide with a real prototype and reintroduce the very failure this
# is working around. The guard itself stays, so progress.py still correctly
# counts the function as unmatched and nothing here can be mistaken for a
# match.
OMITTED_BODY = (
    "/* Undraftable by m2c: its seed did not compile. Deliberately left "
    "empty so\n   the REST of this translation unit still builds and can "
    "be diffed under\n   NONMATCHING=1. The #ifndef branch above is "
    "unaffected -- the real ROM\n   still gets the verbatim retail bytes. */"
)

# agbcc reports diagnostics as `src/foo.c:LINE: message`.
DIAG_LINE_RE = re.compile(r"^(?:\S*/)?(\w+)\.c:(\d+):", re.MULTILINE)


def _guard_spans(text: str) -> list[tuple[str, int, int]]:
    """[(function_name, first_line, last_line)] for every guard block, 1-based
    and inclusive, so a compiler line number can be attributed to the
    function whose #else branch contains it."""
    spans = []
    for m in re.finditer(
        r'#ifndef NONMATCHING\nasm_unified\("\.include \\"asm/nonmatching/(\w+)\.s\\""\);\n'
        r"#else\n.*?\n#endif",
        text,
        re.DOTALL,
    ):
        spans.append((m.group(1),
                      text.count("\n", 0, m.start()) + 1,
                      text.count("\n", 0, m.end()) + 1))
    return spans


def _offenders(build_output: str, text: str, candidates: set[str], stem: str) -> set[str]:
    """Which drafted functions do this build's diagnostics point into?

    Filtered to diagnostics reported against THIS .c file -- a line number
    from a header would otherwise be attributed to whatever guard block
    happens to span the same line here."""
    spans = _guard_spans(text)
    hit = set()
    for diag_stem, lineno in DIAG_LINE_RE.findall(build_output):
        if diag_stem != stem:
            continue
        ln = int(lineno)
        for fn, lo, hi in spans:
            if lo <= ln <= hi and fn in candidates:
                hit.add(fn)
                break
    return hit


def unblock(c_path: Path, names: list[str], dry_run: bool) -> tuple[int, str]:
    """-> (ok, drafted_names, stubbed_names, detail). Reverts on failure."""
    seeds = {}
    for n in names:
        body = m2c_bridge.generate(n)
        if body:
            seeds[n] = body

    # Placeholders m2c declines outright still have to be dealt with. If
    # their `#error` is left standing, the unit cannot compile no matter
    # how good every other seed is -- and because an undrafted placeholder
    # is not one of OUR candidates, _offenders() can't attribute the
    # resulting diagnostic to anything and the whole file gets reverted.
    # That silently defeated the tool on any file containing even one
    # function outside m2c's coverage (caught live at [12/756]:
    # panm_update.c failed with the tail of a `#error` message that was
    # never ours to fix). Empty them up front, same as a seed that turns
    # out not to compile.
    undraftable = [n for n in names if n not in seeds]
    if dry_run:
        return True, sorted(seeds), sorted(undraftable), (
            f"would draft {sorted(seeds)}"
            + (f", empty {sorted(undraftable)}" if undraftable else ""))

    with gitops.repo_lock(what=f"unblock {c_path.name}"):
        for n, body in seeds.items():
            if gitops.splice_into_else(n, body) is None:
                gitops.revert_to_clean()
                return False, [], [], f"couldn't splice {n}"
        for n in undraftable:
            if gitops.splice_into_else(n, OMITTED_BODY) is None:
                gitops.revert_to_clean()
                return False, [], [], f"couldn't splice empty branch for {n}"

        # Build ONLY this translation unit's object -- NOT a full `make`.
        # A full `make NONMATCHING=1` always fails at the `compare` step by
        # design (a NONMATCHING build deliberately produces a ROM that
        # doesn't match retail), so checking its exit code rejects files
        # that compiled perfectly well. The question here is only "does
        # this unit compile", and that's exactly one object.
        obj = f"build/src/{c_path.stem}.o"

        def _drop_obj():
            """Delete the object built with NONMATCHING=1.

            Leaving it behind silently poisons the next PLAIN `make`: Make
            decides what to rebuild from mtimes alone and has no idea
            -DNONMATCHING is not a file (CLAUDE.md's flag-staleness
            landmine), so it links a NONMATCHING object -- one where every
            `#else` branch was compiled instead of the retail `.include` --
            straight into the ROM. Observed: a plain `make` right after a
            15-file unblock run linked an object 900 bytes short and
            reported a layout shift that a from-scratch build proved was
            not real. Costs one object's recompile; buys never handing the
            next caller a fake failure.
            """
            gitops.run(["rm", "-f", str(gitops.REPO / obj)])

        # All-or-nothing was the original design and it does not survive
        # contact with real files: one bad seed reverted every good seed
        # beside it, so a file holding hundreds of placeholders could never
        # unblock (measured: 0 of 4 files, every one killed by a single
        # offender). Instead, attribute each diagnostic back to the guard
        # block whose #else branch contains it, empty out just those, and
        # rebuild -- keeping every seed that was fine. Bounded rounds, and
        # each round must actually stub something new or we stop, so this
        # can't spin.
        live = dict(seeds)
        stubbed: set[str] = set(undraftable)
        detail = ""
        for _round in range(MAX_STUB_ROUNDS):
            gitops.run(["rm", "-f", str(gitops.REPO / obj)])
            r = gitops.run(["./container.sh", "make", "NONMATCHING=1", obj])
            if r.returncode == 0:
                _drop_obj()
                break
            output = r.stdout + r.stderr
            detail = output.strip()[-200:]
            bad = _offenders(output, c_path.read_text(), set(live), c_path.stem) - stubbed
            if not bad:
                # Nothing attributable to a drafted function -- the problem
                # is elsewhere in the file (a pre-existing sibling, a
                # header). Not ours to fix; leave the file exactly as found.
                _drop_obj()
                gitops.revert_to_clean()
                return False, [], [], f"still doesn't compile (not attributable to a seed): {detail}"
            for n in bad:
                gitops.splice_into_else(n, OMITTED_BODY)
                live.pop(n, None)
                stubbed.add(n)
        else:
            _drop_obj()
            gitops.revert_to_clean()
            return False, [], [], f"still doesn't compile after {MAX_STUB_ROUNDS} rounds: {detail}"

        # Every seed had to be stubbed. That is still worth keeping IF the
        # file holds other functions that already have real attempts --
        # they were blocked by these placeholders and are now compilable
        # and diffable, which is the entire point of this tool. Measured
        # across the tree: 657 poisoned files hold 947 such functions, so
        # discarding this case (the original behaviour) threw away most of
        # the available win. Only revert when the file is nothing BUT
        # placeholders, where stubbing genuinely buys nothing.
        others = {fn for fn, _lo, _hi in _guard_spans(c_path.read_text())} - set(names)
        _drop_obj()
        if not live and not others and len(names) < 2:
            # Nothing drafted, no in-progress sibling to unblock, and only
            # ONE placeholder -- there is no deadlock here to break, so
            # emptying it buys nothing. Leave the file untouched.
            gitops.revert_to_clean()
            return False, [], [], "the file's only placeholder produced no compiling seed"
        # Two or more placeholders with nothing drafted IS worth keeping,
        # even though the pipeline gains nothing today: those functions
        # mutually block each other permanently, so a correct hand-written
        # C for any ONE of them still would not compile while the others
        # are `#error`. Emptying them converts a permanently deadlocked
        # file into one where any single function can be drafted and
        # diffed. The guard stays on every one, so nothing here can be
        # mistaken for a match.

        note = (f" {len(stubbed)} left empty (seed didn't compile): "
                f"{', '.join(sorted(stubbed))}." if stubbed else "")
        drafted_note = (f"Unblocks the whole translation unit "
                        f"({', '.join(sorted(live))})." if live else
                        f"No seed here compiled, but emptying the placeholders unblocks "
                        f"{len(others)} already-drafted function(s) in the same unit "
                        f"({', '.join(sorted(others))}).")
        gitops.commit(c_path.stem,
                      f"Draft m2c seeds for {c_path.name}'s #error placeholders\n\n"
                      f"{drafted_note}{note} Seeds are compilable, not necessarily "
                      f"matching -- the normal permuter/validator pipeline takes it "
                      f"from here.")
    if live:
        return True, sorted(live), sorted(stubbed), ("drafted" if not stubbed else f"drafted, {len(stubbed)} left empty")
    return True, [], sorted(stubbed), f"no seed compiled, but unblocked {len(others)} drafted sibling(s)"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--limit", type=int, default=None)
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--min-count", type=int, default=1,
                    help="only files with at least this many placeholders "
                         "(2 = just the genuinely deadlocked ones)")
    args = ap.parse_args()

    targets = files_with_placeholders(args.min_count)
    if args.limit:
        targets = targets[: args.limit]
    total_ph = sum(len(n) for _, n in targets)
    print(f"{len(targets)} file(s), {total_ph} placeholder(s)"
          f"{' (dry run)' if args.dry_run else ''}\n")

    conn = db.connect()
    drafted_total, ok_files = 0, 0
    for i, (c_path, names) in enumerate(targets, 1):
        ok, drafted, stubbed, detail = unblock(c_path, names, args.dry_run)
        if ok:
            ok_files += 1
            drafted_total += len(drafted)
            print(f"  [{i}/{len(targets)}] {c_path.name}: {len(drafted)} drafted ({detail})")
            if not args.dry_run:
                # Only functions that actually got a COMPILING seed go to
                # tier2_ready -- a stubbed one has an empty #else branch,
                # and handing that to the permuter would burn a full search
                # on nothing. "stalled" is included in the claimable set
                # deliberately: rows tier_m2c already declined
                # (notes LIKE 'm2c:%') are excluded from its own re-claim
                # query forever, so with tier3/the LLM gone this is the
                # only thing that can put them back in play.
                movable = ("raw", "queued", "needs_attempt", "excluded", "stalled")
                for n in drafted:
                    row = conn.execute("SELECT state FROM functions WHERE name = ?", (n,)).fetchone()
                    if row and row["state"] in movable:
                        with db.tx(conn):
                            db.set_state(conn, n, "tier2_ready", worker_id=None,
                                         candidate_source="m2c",
                                         notes="seeded by unblock_files.py to break a "
                                               "translation-unit deadlock")
                for n in stubbed:
                    row = conn.execute("SELECT state FROM functions WHERE name = ?", (n,)).fetchone()
                    if row and row["state"] in movable:
                        with db.tx(conn):
                            db.set_state(conn, n, "needs_human", worker_id=None,
                                         notes="m2c seed would not compile; #else left empty "
                                               "by unblock_files.py so the rest of the file "
                                               "builds. Needs a real attempt.")
                conn.commit()
        else:
            print(f"  [{i}/{len(targets)}] {c_path.name}: SKIPPED -- {detail}")
    conn.close()

    print(f"\n{ok_files}/{len(targets)} files unblocked, {drafted_total} functions drafted")


if __name__ == "__main__":
    main()
