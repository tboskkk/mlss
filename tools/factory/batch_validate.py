#!/usr/bin/env python3
"""Verify many candidate matches with ONE from-scratch build instead of one each.

The project's non-negotiable rule is that a match is only real if a
from-scratch `rm -rf build/ && make` reproduces the ROM byte-for-byte. That
costs ~4 minutes. Done per function it is the ceiling on the whole
pipeline: score_sweep alone can queue hundreds of byte-exact candidates,
and 300 x 4 minutes is 20 hours of serialized building.

Why one build can verify N candidates
-------------------------------------
The ROM's sha1 is the ground truth, not a proxy for it. If every one of N
candidates is spliced in as real C, the fragments they replace are deleted,
and the resulting 16MB ROM still hashes to rom.sha1, then every one of
those N produced exactly the retail bytes. There is nothing weaker about
this than checking them one at a time.

Errors cannot cancel out. A candidate that assembles to different BYTES
changes the ROM at that function's own address, so the hash changes -- two
wrong functions would have to produce collectively identical content at two
different addresses to hide each other, which is not a thing that happens
by accident. A candidate that assembles to a different LENGTH shifts every
symbol after it, which `tools/check_layout.py` catches independently of the
hash. Both checks run here.

What a failure costs
--------------------
A failed batch does not lose the good candidates in it -- it bisects.
Halving costs about 2*log2(N) builds to isolate one bad candidate, versus N
builds to check them all individually. With the length gate in
gitops.object_size_matches() screening the common failure mode up front, a
failing batch should be rare.

Usage:
    python3 tools/factory/batch_validate.py                # drain `validating`
    python3 tools/factory/batch_validate.py --batch 16
    python3 tools/factory/batch_validate.py --limit 40 --dry-run

Run with the factory STOPPED. It rewrites src/, deletes fragments, and
rebuilds from scratch repeatedly; sharing that with a live validator is
exactly the interleaving that broke the tree once already.
"""
from __future__ import annotations

import argparse
import shutil
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import declare_missing
import gitops  # noqa: E402

DEFAULT_BATCH = 24


def revert_working_tree():
    """Undo every uncommitted change under the factory's paths.

    Deliberately NOT gitops.revert_to_clean(): that one also runs a full
    rebuild, and every caller here is about to build anyway. Halving the
    builds is the entire point of this tool, so paying for a throwaway one
    on each bisect step would give a lot of it straight back.
    """
    gitops.run(["git", "checkout", "--", *gitops.FACTORY_PATHS])
    gitops.run(["git", "clean", "-fd", *gitops.FACTORY_PATHS])


_ROM_SYMS = None


def _rom_symbols() -> set:
    global _ROM_SYMS
    if _ROM_SYMS is None:
        _ROM_SYMS = frozenset(declare_missing.rom_symbols())
    return set(_ROM_SYMS)


def apply_candidates(rows) -> list:
    """Splice each candidate in as real C and delete the fragment it
    replaces. -> the names actually applied."""
    applied = []
    touched: set[str] = set()
    for row in rows:
        name, body = row["name"], row["candidate_body"]
        if gitops.splice_candidate(name, body) is None:
            continue
        frag = gitops.REPO / "asm" / "nonmatching" / f"{name}.s"
        if frag.exists():
            frag.unlink()
        applied.append(name)
        touched.add(gitops._owning_source_stem(name) or name)

    # Declare what the spliced candidates now reference, exactly as the serial
    # validator does. It reaches this through rescore_seeds.plain_score(), which
    # calls declare_missing.repair_in_place() before scoring; this tool splices
    # and builds directly, so without it batch validation was strictly WEAKER
    # than the one-at-a-time path it exists to replace.
    #
    # The failure it caused looks like the candidate's fault and is not: a
    # spliced candidate routinely calls a sibling that nothing in the file
    # declares, giving `implicit declaration of function X`, fatal under
    # -Werror. Measured on the first batch of 16 after the isolation_exact
    # sweep: 3 rejected, all of them this, all with byte-exact candidates.
    #
    # nonmatching=False because this is a PLAIN build -- every other guard in
    # the file is its retail `.include`, which is the state the ROM check runs
    # in. Declarations emit no code, so they cannot change the bytes; the
    # from-scratch sha1 below re-checks that regardless.
    for stem in sorted(touched):
        try:
            declare_missing.repair_in_place(stem, _rom_symbols(), nonmatching=False)
        except Exception:
            pass
    return applied


def rom_reproduces() -> tuple:
    """(ok, detail) for a genuine from-scratch build. The only check that
    counts -- see CLAUDE.md on why an incremental `make` can report OK
    against a tree that is actually broken."""
    shutil.rmtree(gitops.REPO / "build", ignore_errors=True)
    r = gitops.run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        return False, (r.stdout[-800:] + r.stderr[-400:])
    layout, detail = gitops.layout_ok()
    if not layout:
        return False, f"ROM hashed OK but the layout shifted:\n{detail}"
    return True, "mlss.gba: OK, layout clean"


def resolve(rows, depth=0) -> tuple:
    """-> (good_rows, bad_rows), bisecting on failure.

    Each call starts from a clean tree so a subset is judged on its own
    merits and never inherits a previous attempt's leftovers.
    """
    pad = "  " * depth
    revert_working_tree()
    applied = apply_candidates(rows)
    if not applied:
        return [], list(rows)

    print(f"{pad}building {len(applied)} candidate(s)...", flush=True)
    ok, detail = rom_reproduces()
    if ok:
        print(f"{pad}  -> all {len(applied)} verified")
        return list(rows), []

    if len(rows) == 1:
        print(f"{pad}  -> {rows[0]['name']} REJECTED: {detail.strip()[-160:]}")
        return [], list(rows)

    mid = len(rows) // 2
    print(f"{pad}  -> failed, bisecting {len(rows)} into {mid} + {len(rows) - mid}")
    g1, b1 = resolve(rows[:mid], depth + 1)
    g2, b2 = resolve(rows[mid:], depth + 1)
    return g1 + g2, b1 + b2


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--batch", type=int, default=DEFAULT_BATCH)
    ap.add_argument("--limit", type=int, default=None,
                    help="only take this many candidates in total")
    ap.add_argument("--dry-run", action="store_true",
                    help="run the length gate and report, but build nothing "
                         "and change nothing")
    args = ap.parse_args()

    conn = db.connect()
    rows = conn.execute(
        "SELECT name, candidate_body, candidate_source FROM functions "
        "WHERE state = 'validating' AND candidate_body IS NOT NULL "
        "AND worker_id IS NULL ORDER BY updated_at ASC"
    ).fetchall()
    if args.limit:
        rows = rows[: args.limit]
    if not rows:
        print("nothing in `validating` to check")
        return

    print(f"{len(rows)} candidate(s) queued for validation\n")

    with gitops.repo_lock(what="batch_validate"):
        # Start honest: if the tree is already broken, every batch would
        # "fail" and bisect all the way down to individually rejecting
        # perfectly good candidates.
        revert_working_tree()
        ok, detail = rom_reproduces()
        if not ok:
            raise SystemExit(f"REFUSING to start: the tree does not build clean.\n{detail[-400:]}")
        print("baseline tree builds -- starting\n")

        # Cheap screen first. Anything the length gate can reject costs
        # 0.4s here instead of dragging a whole batch into a bisect.
        screened, rejected = [], []
        for row in rows:
            name = row["name"]
            trailing = gitops.fragment_trailing_bytes(name)
            if trailing is not None:
                rejected.append((name, "fragment carries real trailing data -- "
                                       "would be lost; needs splitting first"))
                continue
            if gitops.splice_candidate(name, row["candidate_body"]) is None:
                rejected.append((name, "couldn't splice candidate"))
                continue
            size_ok, size_detail = gitops.object_size_matches(name)
            revert_working_tree()
            if not size_ok:
                rejected.append((name, size_detail))
                continue
            screened.append(row)

        print(f"length gate: {len(screened)} passed, {len(rejected)} rejected")
        for name, why in rejected[:10]:
            print(f"  reject {name}: {why[:110]}")
        print()

        if args.dry_run:
            print("(dry run -- nothing built, nothing changed)")
            revert_working_tree()
            return

        all_good, all_bad = [], list(rejected)
        builds_before = time.time()
        for start in range(0, len(screened), args.batch):
            chunk = screened[start:start + args.batch]
            print(f"=== batch {start // args.batch + 1}: {len(chunk)} candidate(s) ===")
            good, bad = resolve(chunk)

            if good:
                # Re-apply just the good ones and confirm as a set before
                # committing. Each subset built clean on its own; this is
                # the cheap proof that the union does too.
                revert_working_tree()
                applied = apply_candidates(good)
                ok, detail = rom_reproduces()
                if not ok:
                    print(f"  !! union of {len(applied)} verified candidates FAILED -- "
                          f"not committing this batch\n{detail[-300:]}")
                    revert_working_tree()
                    continue
                gitops.refresh_expected()
                names = sorted(r["name"] for r in good)
                gitops.commit(
                    names[0],
                    f"Match {len(names)} function(s) (batch-validated)\n\n"
                    + "\n".join(f"  {n}" for n in names)
                    + "\n\nFactory pipeline (tools/factory). Verified together with one "
                      "from-scratch build: every candidate spliced in as real C, every "
                      "fragment deleted, and the resulting ROM still hashes to rom.sha1 "
                      "with a clean layout. The ROM is the ground truth, so that "
                      "establishes each of them byte-for-byte.")
                with db.tx(conn):
                    for n in names:
                        db.set_state(conn, n, "matched", worker_id=None,
                                     candidate_body=None,
                                     notes="matched, verified in a batch build")
                conn.commit()
                print(f"  committed {len(names)} match(es)")
                all_good += names

            for row in bad:
                with db.tx(conn):
                    db.set_state(conn, row["name"], "needs_human", worker_id=None,
                                 notes="batch_validate: isolated by bisection -- the ROM "
                                       "does not reproduce with this candidate applied")
                conn.commit()
                all_bad.append((row["name"], "rejected by bisection"))

        revert_working_tree()
        el = time.time() - builds_before

    print(f"\n=== {len(all_good)} matched, {len(all_bad)} rejected, {el/60:.1f} min ===")
    for name, why in all_bad[:20]:
        print(f"  {name}: {why[:110]}")
    conn.close()


if __name__ == "__main__":
    main()
