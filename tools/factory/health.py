#!/usr/bin/env python3
"""Assert the factory's invariants and report VIOLATIONS, not statistics.

dashboard.py is for watching; this is for catching. Every check here
corresponds to a failure mode that actually happened, so a regression
announces itself instead of hiding behind plausible-looking numbers:

  * tier2_ready starved to zero while needs_attempt piles up -- the shape
    of the tier_m2c-never-extracted regression, which silently idled 9 of
    12 permuter slots and read from the outside as "throughput mysteriously
    collapsed".
  * a worker dead while the supervisor still claims to be running.
  * claims stuck on a worker_id with no live process behind them.
  * orphaned permuter containers outliving the pool that spawned them.
  * the working tree dirty in ways the factory itself would not produce.
  * matches flatlining while the pipeline still looks busy.

Read-only: SQLite plus ps/podman/git status. No repo lock, no builds, no
writes -- safe to run against a live factory as often as you like.

Usage:
    python3 tools/factory/health.py          # human-readable
    python3 tools/factory/health.py --quiet  # only problems; exit 1 if any
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops
import m2c_bridge
import tier2

REPO = gitops.REPO  # noqa: E402

# Derived from supervisor.PROCESSES, not restated. A hardcoded copy silently
# stops covering any worker added later: `isolation_exact` ran as a supervised
# worker for its first minutes completely invisible to this check, so if it had
# died nothing would have reported it -- and it is the worker that keeps tier2's
# ranking data fresh. Same failure shape as everything in CLAUDE.md section T.
try:
    import supervisor as _sup
    WORKERS = [k for k in _sup.PROCESSES]
except Exception:
    WORKERS = ["scanner", "validator", "tier1", "tier_m2c", "tier2", "watchdog"]
OK, WARN, FAIL = "ok", "warn", "fail"


def _ps() -> str:
    try:
        return subprocess.run(["ps", "-eo", "args"], capture_output=True,
                              text=True, timeout=5).stdout
    except Exception:
        return ""


def _running(ps: str, script: str) -> bool:
    """Is tools/factory/<script>.py ACTUALLY running as a process?

    Not `f"tools/factory/{script}.py" in ps`. That was the original check and
    it reports a false positive for any shell whose command line merely
    MENTIONS the path -- a `nohup ... python3 tools/factory/supervisor.py ...`
    wrapper, a pgrep, a grep of the log. It lied for real: after a restart
    command failed to fire, health.py reported "supervisor up but DEAD:
    scanner, validator, tier1, tier_m2c, tier2" when there was no supervisor
    at all, and the factory then sat idle for four hours.

    A monitor that can report a dead thing as alive is worse than no
    monitor, so require the process to be a PYTHON INVOCATION of that
    script: the interpreter first, the script as an argument. A shell
    wrapper fails that test because its argv[0] is bash.
    """
    needle = f"tools/factory/{script}.py"
    for line in ps.splitlines():
        if needle not in line:
            continue
        head = line.split(needle)[0]
        # argv[0] must be a python interpreter, and nothing may sit between
        # it and the script path except interpreter flags.
        # Allow an absolute directory prefix on the script path
        # (/usr/bin/python3 /home/.../tools/factory/scanner.py) but nothing
        # else -- a bash wrapper fails because head starts with /bin/bash.
        if re.match(r"^\S*python[0-9.]*\s+(-\S+\s+)*(\S*/)?$", head):
            return True
    return False


def checks(conn) -> list[tuple[str, str, str]]:
    out: list[tuple[str, str, str]] = []
    ps = _ps()
    counts = {r["state"]: r["c"] for r in
              conn.execute("SELECT state, COUNT(*) c FROM functions GROUP BY state")}
    now = time.time()

    # --- workers alive ---------------------------------------------------
    dead = [w for w in WORKERS if not _running(ps, w)]
    sup = _running(ps, "supervisor")
    if not sup and not dead:
        out.append(("workers", WARN, "all 5 running but no supervisor -- nothing will restart a crash"))
    elif dead and sup:
        out.append(("workers", FAIL, f"supervisor up but DEAD: {', '.join(dead)}"))
    elif dead:
        out.append(("workers", WARN if len(dead) == len(WORKERS) else FAIL,
                    "factory stopped" if len(dead) == len(WORKERS) else f"dead: {', '.join(dead)}"))
    else:
        out.append(("workers", OK, f"{len(WORKERS)}/{len(WORKERS)} running + supervisor"))

    # --- the starvation shape -------------------------------------------
    ready, attempt = counts.get("tier2_ready", 0), counts.get("needs_attempt", 0)
    permuting = counts.get("permuting", 0)
    if ready == 0 and attempt > 50 and permuting < 6:
        out.append(("permuter feed", FAIL,
                    f"tier2_ready=0 with needs_attempt={attempt} and only {permuting} permuting "
                    f"-- tier_m2c is not producing seeds (extraction broken? see git log for "
                    f"the ensure_extracted regression)"))
    elif ready == 0 and attempt > 50:
        out.append(("permuter feed", WARN,
                    f"tier2_ready=0 with needs_attempt={attempt} -- seeds draining as fast as "
                    f"they're made; fine if permuting is high ({permuting})"))
    else:
        out.append(("permuter feed", OK, f"tier2_ready={ready}, permuting={permuting}"))

    # --- stuck claims ----------------------------------------------------
    stale = conn.execute(
        "SELECT COUNT(*) c FROM functions WHERE worker_id IS NOT NULL AND updated_at < ?",
        (now - 45 * 60,)).fetchone()["c"]
    out.append(("stuck claims", FAIL if stale > 5 else (WARN if stale else OK),
                f"{stale} claim(s) held >45min with no progress" if stale else "none"))

    # --- containers vs pool ----------------------------------------------
    try:
        n = len([x for x in subprocess.run(
            ["podman", "ps", "--format", "{{.ID}}"], capture_output=True,
            text=True, timeout=8).stdout.splitlines() if x.strip()])
        if n and not sup and all(w in ps for w in []):
            out.append(("containers", WARN, f"{n} running with no supervisor"))
        elif n > 16:
            out.append(("containers", WARN, f"{n} running -- more than the pool should spawn"))
        else:
            out.append(("containers", OK, f"{n} permuter container(s)"))
    except Exception as e:
        out.append(("containers", WARN, f"could not check: {e}"))

    # --- match progress --------------------------------------------------
    for label, hrs in (("1h", 1), ("6h", 6)):
        n = conn.execute(
            "SELECT COUNT(DISTINCT function_name) c FROM events "
            "WHERE kind IN ('state:matched','matched') AND ts >= ?",
            (now - hrs * 3600,)).fetchone()["c"]
        if hrs == 1:
            out.append(("matches/hr", FAIL if n == 0 and sup else OK,
                        f"{n} in the last hour" + (" -- FLATLINED" if n == 0 and sup else "")))

    # --- working tree ----------------------------------------------------
    r = gitops.run(["git", "status", "--porcelain"])
    dirty = [l for l in r.stdout.splitlines() if l.strip()]
    # src/*.c churn is normal (in-flight candidate splices); anything else isn't.
    odd = [l for l in dirty if not l[3:].startswith(("src/", "asm/nonmatching/"))]
    if odd:
        out.append(("working tree", WARN,
                    f"{len(dirty)} dirty, {len(odd)} outside src/asm-nonmatching: "
                    + ", ".join(x[3:] for x in odd[:3])))
    else:
        out.append(("working tree", OK, f"{len(dirty)} in-flight src/ splice(s)"))

    # --- search productivity ---------------------------------------------
    # THE check that would have caught the section-F collapse, and the one
    # nothing here had. Every other check was green throughout it: queue
    # depth fine, workers alive, containers running, tree clean -- because
    # decomp-permuter really was searching and really was converging. tier2
    # was discarding the results. Launches versus convergences is the only
    # number that separates "the search is failing" from "something
    # downstream is eating the wins", and the difference decides whether
    # you go looking at seeds or at plumbing.
    launches = conn.execute("SELECT COUNT(*) FROM events WHERE kind='t2_launch' AND ts>?",
                            (now - 3 * 3600,)).fetchone()[0]
    converged = conn.execute("SELECT COUNT(*) FROM events WHERE kind='converged' AND ts>?",
                             (now - 3 * 3600,)).fetchone()[0]
    aborts = conn.execute("SELECT COUNT(*) FROM events WHERE kind='t2_ceiling_abort' AND ts>?",
                          (now - 3 * 3600,)).fetchone()[0]
    real = launches - aborts
    # Low yield has two completely different causes and they need different
    # responses, so report which one this is rather than just the ratio.
    # Measured payoff by attempt number, over the whole run: 176 functions
    # matched on their FIRST search, 25 on their second, 0 on their third.
    # So once the reachable pool has had a first pass, yield falls by
    # design and a bare percentage reads like a regression when nothing is
    # wrong. `first` below is how much of the current work is first
    # attempts; if it is near zero the pool is exhausted, not broken, and
    # the answer is better seeds (new m2c rules), never more compute.
    # Scoped to the REACHABLE pool, i.e. seeds tier2 will actually claim.
    # Counting every first-attempt seed instead would never report
    # exhaustion, because ~1,970 seeds sit above SEED_SCORE_CEILING and are
    # deliberately not searched -- they are not waiting for a slot, they are
    # waiting for a better seed.
    firsts = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE state='tier2_ready' "
        "AND escalation_count = 0 AND (best_score IS NULL OR best_score < ?)",
        (tier2.SEED_SCORE_CEILING,),
    ).fetchone()[0]
    # Proportional, not `firsts == 0`. A binary test cries wolf: 132
    # first-attempt seeds against a 3,040-seed pool is effectively
    # exhausted, but the strict form read it as "work remains, so suspect
    # the plumbing" and warned about a pipeline that was provably fine (131
    # score updates, 15 stalls and a match in the same window). A check that
    # warns when nothing is wrong gets ignored, and then it is not a check.
    pool = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE state='tier2_ready'").fetchone()[0]
    exhausted = firsts == 0 or (pool and firsts / pool < 0.10)
    if real >= 40 and converged == 0 and not exhausted:
        out.append(("search yield", FAIL,
                    f"{real} real searches in 3h, ZERO converged, and {firsts} seeds "
                    f"still on a FIRST attempt -- the searches are running, so suspect "
                    f"what happens to a win (tier2's promotion path), not the seeds"))
    elif real >= 25 and converged / real < 0.03 and not exhausted:
        out.append(("search yield", WARN,
                    f"{converged}/{real} converged in 3h ({100*converged/real:.1f}%) "
                    f"vs a ~15% baseline, with {firsts} first-attempt seeds left of "
                    f"{pool} -- "
                    f"check the promotion path before the seeds"))
    else:
        rate = f"{100*converged/real:.0f}%" if real else "--"
        note = (" -- pool exhausted of first attempts, so low yield is EXPECTED "
                "(176 matched on attempt 1, 25 on attempt 2, 0 on attempt 3); "
                "the lever is better seeds, not more compute") if exhausted else ""
        out.append(("search yield", OK,
                    f"{converged}/{real} converged in 3h ({rate}), "
                    f"{aborts} ceiling abort(s){note}"))

    # --- inert rows ------------------------------------------------------
    # needs_human is claimed by NOTHING (tier2 says so in its own comment,
    # and reclaim_extraction.py only reads the no-fragment subset). A row
    # filed there by a tool rather than by a real anomaly is invisible
    # work, not hard work: 1,165 rows went inert this way once already.
    # Counting them keeps that from happening quietly a second time.
    inert = conn.execute(
        "SELECT COUNT(*) FROM functions WHERE state='needs_human' AND ("
        " notes LIKE '%unblock_files%' OR notes LIKE '%extraction failed%')"
    ).fetchone()[0]
    if inert:
        out.append(("inert rows", WARN,
                    f"{inert} needs_human row(s) filed by a TOOL, not a real anomaly -- "
                    f"nothing re-claims needs_human, so these are invisible, not hard"))
    else:
        out.append(("inert rows", OK, "no tool-filed rows parked in needs_human"))

    # --- parked pending a ruleset change ---------------------------------
    # needs_attempt and stalled LOOK like an active backlog on the
    # dashboard, and mostly are not: tier_m2c excludes any row already
    # declined by the ruleset it is running, which is correct (it is what
    # stops an infinite re-claim loop on a deterministic generator) but
    # means those rows wait for a CODE change, not for a worker.
    #
    # Reported because the alternative is what actually happened: 2,697
    # rows -- 45% of the corpus -- sitting in states with zero claimants,
    # while every health check read green. Parked is a legitimate state;
    # silently parked is not. This number only moves when m2c_bridge.py,
    # the pinned m2c revision, or a header under include/ changes.
    try:
        ruleset = m2c_bridge.ruleset_version()
        parked = conn.execute(
            "SELECT COUNT(*) FROM functions WHERE state IN ('needs_attempt','stalled') "
            "AND notes LIKE ?", (f"m2c:{ruleset}:%",)).fetchone()[0]
        backlog = conn.execute(
            "SELECT COUNT(*) FROM functions WHERE state IN ('needs_attempt','stalled')"
        ).fetchone()[0]
        live = backlog - parked
        pct = 100 * parked / 5986
        out.append(("parked", OK if live or not parked else WARN,
                    f"{parked} row(s) ({pct:.0f}% of corpus) judged by ruleset "
                    f"{ruleset} and waiting on a RULE change, not a worker; "
                    f"{live} still claimable"))
    except Exception as e:
        out.append(("parked", WARN, f"could not measure parked rows: {e}"))

    # --- stale NONMATCHING objects ---------------------------------------
    # Make cannot see that -DNONMATCHING is not a file, so an object left
    # behind by a NONMATCHING build is declared up to date by the next
    # plain `make` -- which is how the length check came to measure an
    # object a fraction of its real size and reject good candidates for
    # months of queue time. Cheap proxy: an object in build/src/ that is
    # dramatically smaller than the same object in expected/.
    stale = []
    exp = REPO / "expected" / "build" / "src"
    if exp.is_dir():
        for obj in (REPO / "build" / "src").glob("*.o"):
            ref = exp / obj.name
            # The factory deletes and recreates objects constantly, so a path
            # yielded by glob() can be gone by the time stat() runs. This
            # module's whole contract is "strictly read-only, safe to run
            # against a live factory as often as you like" -- and it was
            # crashing with FileNotFoundError against exactly that, which made
            # the one tool you reach for when something looks wrong the tool
            # that will not run when the factory is busiest.
            try:
                if ref.is_file() and obj.stat().st_size * 2 < ref.stat().st_size:
                    stale.append(obj.name)
            except FileNotFoundError:
                continue
    if stale:
        out.append(("stale objects", WARN,
                    f"{len(stale)} object(s) in build/src/ far smaller than expected/ "
                    f"-- likely NONMATCHING leftovers: " + ", ".join(stale[:3])))
    else:
        out.append(("stale objects", OK, "no NONMATCHING leftovers in build/src/"))

    # --- DB says matched, source disagrees --------------------------------
    # A row marked `matched` whose fragment still exists is one of two things,
    # and both were found live on 2026-08-25 (11 rows, 8 of the bad kind):
    #
    #   * MISLABELLED -- src/*.c still holds a live guard for it. Nothing in
    #     the factory ever claims a `matched` row, so this work is invisible:
    #     it will never be searched, validated or reported again, and
    #     progress.py (which counts SOURCE, not the DB) correctly refuses to
    #     count it. The likely cause is gitops.revert_to_clean()'s
    #     `git checkout -- asm/ src/` restoring the guard after finish_match()
    #     had already set the state, leaving the two out of sync.
    #   * ORPHAN FRAGMENT -- genuinely matched, guard gone, but the .s file
    #     was left behind (finish_match refuses to delete a fragment carrying
    #     real trailing data; see CLAUDE.md's landmine).
    #
    # Only the first kind loses work, so they are counted separately. This is
    # the same "silently parked" class the inert-rows and parked checks above
    # exist for -- a state nothing reclaims from is invisible, not finished.
    try:
        matched = [r[0] for r in conn.execute(
            "SELECT name FROM functions WHERE state = 'matched'")]
        frag_dir = REPO / "asm" / "nonmatching"
        srcs = {p: p.read_text(errors="ignore") for p in (REPO / "src").glob("*.c")}
        mislabelled, orphan = [], []
        for n in matched:
            if not (frag_dir / f"{n}.s").exists():
                continue
            needle = f'asm/nonmatching/{n}.s'
            guarded = any(needle in t for t in srcs.values())
            (mislabelled if guarded else orphan).append(n)
        if mislabelled:
            out.append(("db vs source", FAIL,
                        f"{len(mislabelled)} row(s) marked matched while src/ still holds a "
                        f"live guard -- invisible, nothing reclaims a matched row: "
                        + ", ".join(sorted(mislabelled)[:3])))
        elif orphan:
            out.append(("db vs source", WARN,
                        f"{len(orphan)} matched row(s) left an orphan fragment in "
                        f"asm/nonmatching/ (harmless, but see finish_match's trailing-data "
                        f"guard): " + ", ".join(sorted(orphan)[:3])))
        else:
            out.append(("db vs source", OK, "every matched row agrees with src/"))
    except Exception as e:
        out.append(("db vs source", WARN, f"could not compare DB to source: {e}"))

    # A draft that cannot even PARSE poisons its whole translation unit, and
    # the two shapes below are the ones no other tool can attribute: agbcc
    # reports them at `end of input` or against an innocent later function,
    # so unblock_files.py -- which blames the guard block containing the
    # reported line -- blames the victim. They went unnoticed long enough to
    # strand 68 functions across 12 files, 11 of which decomp-permuter had
    # ALREADY solved and whose wins were being re-searched indefinitely
    # (CLAUDE.md section M). Both are detectable statically, so this costs no
    # build and no repo lock and is safe against a live factory.
    try:
        broken, conflicts = _static_poison_scan()
        if broken or conflicts:
            bits = []
            if broken:
                bits.append(f"{len(broken)} unbalanced draft(s) ({', '.join(broken[:3])})")
            if conflicts:
                bits.append(f"{len(conflicts)} decl/defn conflict(s) ({', '.join(conflicts[:3])})")
            out.append(("poisoned units", WARN,
                        "; ".join(bits) + " -- each fails its WHOLE object, so every "
                        "sibling's compile verdict and permuter promotion is invalid. "
                        "Fix: tools/factory/quarantine_broken_drafts.py"))
        else:
            out.append(("poisoned units", OK,
                        "no unbalanced drafts or decl/defn conflicts in src/"))
    except Exception as e:
        out.append(("poisoned units", WARN, f"could not scan: {e}"))

    return out


def _static_poison_scan():
    """(files with an unbalanced #else draft, files whose prototype
    contradicts its own definition). Pure text analysis -- no compiler."""
    guard = re.compile(r'^#ifndef NONMATCHING\s*$')
    decl_re = re.compile(r'^\s*((?:extern\s+)?[A-Za-z_][\w \t*]*?)\b(\w+)\s*\(([^;{]*)\)\s*;', re.M)
    defn_re = re.compile(r'^\s*((?:static\s+)?[A-Za-z_][\w \t*]*?)\b(\w+)\s*\(([^;{]*)\)\s*\{', re.M)
    skip = {"if", "while", "for", "switch", "return", "sizeof", "asm_unified"}

    def strip_code(s):
        s = re.sub(r'/\*.*?\*/', '', s, flags=re.S)
        s = re.sub(r'//[^\n]*', '', s)
        s = re.sub(r'"(\\.|[^"\\])*"', '""', s)
        return re.sub(r"'(\\.|[^'\\])*'", "''", s)

    def norm(x):
        x = re.sub(r'\bextern\b|\bstatic\b', '', x)
        return re.sub(r'\s*\*\s*', '*', re.sub(r'\s+', ' ', x).strip())

    def norm_args(a):
        a = re.sub(r'/\*.*?\*/', '', a, flags=re.S)
        a = re.sub(r'\s+', ' ', a).strip()
        if a in ('', 'void'):
            return 'void'
        parts = []
        for q in a.split(','):
            q = q.strip()
            q = re.sub(r'\b\w+\s*$', '', q).strip() or q
            parts.append(re.sub(r'\s*\*\s*', '*', re.sub(r'\s+', ' ', q)))
        return ','.join(parts)

    broken, conflicts = [], []
    for p in sorted((REPO / "src").glob("*.c")):
        text = p.read_text()
        lines = text.splitlines()
        i = 0
        while i < len(lines):
            if guard.match(lines[i]):
                e = n = None
                depth = 0
                j = i + 1
                while j < len(lines):
                    s = lines[j].strip()
                    if s.startswith("#if"):
                        depth += 1
                    elif s == "#else" and depth == 0 and e is None:
                        e = j
                    elif s == "#endif":
                        if depth == 0:
                            n = j
                            break
                        depth -= 1
                    j += 1
                if e is not None and n is not None:
                    body = strip_code("\n".join(lines[e + 1:n]))
                    if body.strip() and any(body.count(a) != body.count(b)
                                            for a, b in ("{}", "()", "[]")):
                        broken.append(p.name)
                    i = n
            i += 1
        clean = re.sub(r'//[^\n]*', '', text)
        decls = {}
        for m in decl_re.finditer(clean):
            if m.group(2) in skip:
                continue
            decls.setdefault(m.group(2), (norm(m.group(1)), norm_args(m.group(3)),
                                          clean[:m.start()].count("\n") + 1))
        for m in defn_re.finditer(clean):
            nm = m.group(2)
            if nm in skip or nm not in decls:
                continue
            drt, dar, dln = decls[nm]
            if clean[:m.start()].count("\n") + 1 == dln:
                continue
            if drt != norm(m.group(1)) or dar != norm_args(m.group(3)):
                conflicts.append(f"{p.name}:{nm}")
    return sorted(set(broken)), sorted(set(conflicts))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--quiet", action="store_true")
    args = ap.parse_args()

    conn = db.connect(readonly=True)
    try:
        results = checks(conn)
    finally:
        conn.close()

    bad = [r for r in results if r[1] in (WARN, FAIL)]
    sym = {OK: "\033[92mok  \033[0m", WARN: "\033[93mWARN\033[0m", FAIL: "\033[91mFAIL\033[0m"}
    if not args.quiet:
        print(f"factory health  {time.strftime('%H:%M:%S')}")
        for name, status, detail in results:
            print(f"  {sym[status]}  {name:<15} {detail}")
    else:
        for name, status, detail in bad:
            print(f"{status.upper()}: {name}: {detail}")
    return 1 if any(r[1] == FAIL for r in results) else 0


if __name__ == "__main__":
    sys.exit(main())
