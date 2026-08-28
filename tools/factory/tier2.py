#!/usr/bin/env python3
"""Factory pipeline, process 4 of 5: Tier 2, the Permuter Pool.

Claims `tier2_ready` rows (functions with a real C attempt already sitting
in a src/*.c, from tier 1, tier 3, or a human) and runs decomp-permuter
against several of them AT ONCE, on cores the LLM doesn't own (taskset,
see container.sh -- proven necessary the hard way: today's incident had
abandoned permuter containers with no cpuset of their own starving a
--cpu-strict-pinned llama-server down to ~0.1 tok/s anyway).

No LLM is invoked here. This is a pure CPU search: the C is either already
semantically right (only register allocation/ordering is wrong, which a
search finds) or it isn't (no amount of search finds a zero-score
candidate for wrong semantics -- confirmed directly this session with
alloc_zero_8018DB4, which only converged after a human/Claude fixed the
actual parameter order first).

Score tracking watches decomp-permuter's own output-{score}-N/ directories
rather than parsing its stdout -- more robust (no ANSI codes, no format
assumptions) and it's already exactly what write_candidate() produces on
every improvement, including the final score-0 win.

Usage:
    ./container.sh tools/factory/tier2.py [--jobs N] [--stall-min M]
"""
from __future__ import annotations

import argparse
import atexit
import hashlib
import re
import shutil
import signal
import sqlite3
import subprocess
import sys
import time
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
import db  # noqa: E402
import gitops  # noqa: E402
import rescore_seeds  # noqa: E402

REPO = gitops.REPO

# Seeds at or above this asm-differ score are searched only when nothing
# below it is claimable. See claim_one() for the measurement behind it.
SEED_SCORE_CEILING = 5000

# Ceiling on iso_score -- the byte distance measured with the function compiled
# alone (isolation_exact.py). Provisional, and deliberately generous: the
# observed distribution over 2,316 rows is 24 at zero, 172 at 1-9, 554 at
# 10-49, 1032 at 50-199, 524 at 200-999, 10 beyond. 200 admits about three
# quarters of the pool, and since the sort is ASC the ordering does most of the
# work anyway -- this only stops a several-hundred-byte candidate taking a slot
# while a near-miss waits. Like SEED_SCORE_CEILING it is a ceiling, not an
# exclusion.
ISO_SCORE_CEILING = 200

# Admission floor on objdiff_score (objdiff_score.py) -- a per-SYMBOL
# instruction-match percentage, resolving real ELF boundaries so it is not
# the N.4a position-in-file artifact best_score is, and normalized (0-100)
# rather than a raw byte count like iso_score. Deliberately a SEPARATE
# admission path, not a replacement for ISO_SCORE_CEILING: the two agree
# broadly (Spearman -0.792 measured over 2,444 rows with both scores) and
# disagree exactly where it matters -- a pure register-allocation miss can
# look "far" as a raw byte distance while being genuinely close as an
# instruction match. Measured live: 24 rows sat buried behind
# ISO_SCORE_CEILING (iso_score >= 200) despite being 90%+ instruction-
# identical by objdiff, some as high as 96%. Nothing rescues a row with NO
# iso_score at all -- objdiff_score correlates too closely with iso_score
# for that; checked directly, 0 such rows exist in the current pool. A
# ceiling here too, not an exclusion: it only widens which rows this claim
# treats as near-certain, it can never make anything less claimable.
OBJDIFF_ADMIT_FLOOR = 90.0

# Measured 2026-08-27, ~5h into the post-arity-fix resume: the near-miss
# band (421 rows) had gone almost entirely bimodal on escalation_count --
# 321 rows sitting at exactly 11, another 17 at 10, only 69 total below
# that. With 12 slots against 421 rows the band never empties, so under
# the strict two-tier CASE below (near-miss always ahead of everything
# else) the far band -- including 12 arity-corrected rows below the 90%
# floor -- received ZERO launches all session despite being fixed hours
# earlier. Not a few "doomed" outliers blocking the rest; the whole band
# saturated together and, because near-miss always wins the top tier
# outright, permanently outranked every far row regardless of how many
# times it had already failed.
EXHAUSTED_ESCALATION = 10

# Cap on wall-clock time run_pool() spends refilling slots before it must
# reach the monitoring loop below. Each refill can do a blocking build
# (already_matches() splices+builds+asm-diffs; ensure_isolated() runs
# permute.py) under the repo lock, and the old code refilled EVERY free
# slot in a tight loop before the monitor -- or the give-up-deadline check
# inside it -- ever ran again. Measured: 148 searches overran their own
# stall_s budget by >1.5x (551 slot-hours), with overrun rate inversely
# proportional to budget (7.1% at 60-90s vs 0.4% at 421-900s) -- exactly
# the signature of a roughly-fixed refill delay eating a larger fraction of
# a short budget. The watchdog's cure was worse than the disease: it
# SIGTERMs a wedged tier2, the supervisor restarts it, and _cleanup_all()
# requeues EVERY in-flight search, not just the wedged ones -- 424
# interrupted searches across 35 restart bursts, mean 12.1 lost per
# firing (== the pool size). Docs: docs/review-2026-08-23-findings.md.
REFILL_BUDGET_S = 20
NONMATCHINGS_DIR = REPO / "nonmatchings"
WORKER_ID = "tier2"

# This box has 6 PHYSICAL cores, not 12 -- serve.sh's own comment documents
# `lscpu -e=CPU,CORE,ONLINE`: logical CPUs 0-5 are each a distinct physical
# core's primary thread, 6-11 are the SAME 6 cores' SMT sibling thread. So
# "6-11" was never a separate bank of cores from llama-server's "0-5" --
# it was always the other hyperthread on the exact same 6 cores.
#
# Widened to the full 0-11 now that tier3's LLM is a rare fallback instead
# of the primary generation path (m2c is): llama-server's --cpu-strict
# only confines ITS OWN threads to 0-5, it does not block other processes
# from being scheduled there, so this lets the permuter opportunistically
# use the (now mostly idle) primary threads too, without touching
# llama-server's own pinning or risking its stability. FARM_CPU_COUNT
# bumped modestly (6 -> 8), not to 12 -- there are still only 6 physical
# cores' worth of real compute, so oversubscribing much past that risks
# thrashing rather than helping.
FARM_CPUSET = "0-11"
# Was 8 while llama-server still held cores 0-5 for tier3's LLM. tier3 is
# gone (see supervisor.PROCESSES), llama-server isn't started, so the
# permuter now has the machine to itself: 12 concurrent searches across
# 6 physical cores / 12 SMT threads. Still oversubscribed relative to
# physical cores on purpose -- permuter workers spend real time blocked on
# compile I/O, so a thread per logical CPU keeps them fed without the
# decode-collapse problem that made SMT bad for llama-server.
FARM_CPU_COUNT = 12

OUTPUT_DIR_RE = re.compile(r"^output-(\d+)-\d+$")


def iso_zero_signature(name: str, body: str | None) -> str | None:
    """Fingerprint of "this candidate, in this translation unit".

    Identifies a permuter zero that was earned in ISOLATION and then failed
    to reproduce in the real file, so the same dead end is not re-searched
    until something that could change the outcome actually changes. The two
    inputs are exactly those things:

      * the candidate body -- a new seed is a genuinely new attempt;
      * the owning src/*.c in full -- agbcc compiles a whole translation
        unit, so a sibling's draft being fixed, matched or spliced changes
        what it emits for THIS function too. That is not theoretical: it is
        the same translation-unit coupling documented all over this file.

    Returns None when the owning file cannot be determined, which callers
    must treat as "cannot answer" -- never as "not stale". A signature that
    silently defaults would suppress a row forever.
    """
    if not body:
        return None
    stem = gitops._owning_source_stem(name)
    if stem is None:
        return None
    c_path = gitops.REPO / "src" / f"{stem}.c"
    try:
        file_text = c_path.read_text(errors="ignore")
    except OSError:
        return None
    h = hashlib.md5()
    h.update(body.encode("utf-8", "replace"))
    h.update(b"\0")
    h.update(file_text.encode("utf-8", "replace"))
    return h.hexdigest()


def is_known_dead_iso_zero(row) -> bool:
    """True if this row already produced an isolation-only zero under
    exactly the current candidate AND the current owning-file contents.

    Deliberately fails OPEN (returns False) whenever the signature cannot
    be computed -- an unanswerable question must not silently suppress a
    row, same rule as everywhere else in this pipeline.
    """
    stored = row["iso_zero_sig"] if "iso_zero_sig" in row.keys() else None
    if not stored:
        return False
    cur = iso_zero_signature(row["name"], row["candidate_body"])
    return cur is not None and cur == stored


def _mark_dead_iso_zero(name: str, body: str | None) -> None:
    """Record that `body` produced an isolation-only zero for `name` in the
    file as it stands right now. Best-effort: a failure here costs a
    repeated search, never correctness, so it must not break the poll loop."""
    try:
        sig = iso_zero_signature(name, body)
        if sig is None:
            return
        conn = db.connect()
        try:
            with db.tx(conn):
                conn.execute("UPDATE functions SET iso_zero_sig = ? WHERE name = ?",
                             (sig, name))
        finally:
            conn.close()
    except Exception as e:
        print(f"  {name}: could not record iso-zero signature ({e})")


def best_score_seen(name: str) -> int | None:
    out_dir = NONMATCHINGS_DIR / name
    if not out_dir.is_dir():
        return None
    best = None
    for d in out_dir.iterdir():
        m = OUTPUT_DIR_RE.match(d.name)
        if m:
            score = int(m.group(1))
            if best is None or score < best:
                best = score
    return best


def best_output_source(name: str) -> Path | None:
    """The source.c of the lowest-scoring output-N-*/ this run produced, or
    None if it never improved on its seed at all.

    WHY THIS EXISTS. A stalled search's improving candidates were being
    thrown away: `ensure_isolated()` rmtree's `nonmatchings/<name>/` on the
    row's NEXT claim, before anything ever reads them, and the `stalled`
    resolve() call two screens down never passed `body=`. So every
    re-launch restarted from the ORIGINAL candidate_body, not from
    whatever the previous 10+ minutes of search actually found. Confirmed
    live: sub_8053FC4 stalled at best_score=10 across four separate
    696-second searches in a row, identical score every time -- rediscovering
    the same near-miss instead of building on it. 1,687 rows in the corpus
    have already been relaunched 2+ times this way.

    Safe to promote unconditionally: decomp-permuter only ever writes an
    output-{score}-N/ directory for a candidate that scored <= the base it
    was given (permuter.py's should_output()), so whatever this returns is
    never a regression versus the candidate_body the row was launched with.
    """
    out_dir = NONMATCHINGS_DIR / name
    if not out_dir.is_dir():
        return None
    best_score, best_dir = None, None
    for d in out_dir.iterdir():
        m = OUTPUT_DIR_RE.match(d.name)
        if m:
            score = int(m.group(1))
            if best_score is None or score < best_score:
                best_score, best_dir = score, d
    if best_dir is None:
        return None
    src = best_dir / "source.c"
    return src if src.is_file() else None


def has_zero(name: str) -> Path | None:
    hits = sorted((NONMATCHINGS_DIR / name).glob("output-0-*/source.c"))
    return hits[0] if hits else None


# decomp-permuter prints this when the attempt it was GIVEN already matches
# retail perfectly, before it randomizes anything.
BASE_ZERO_RE = re.compile(r"^\[.*\] base score = 0\s*$", re.MULTILINE)


def base_already_zero(name: str) -> bool:
    """True if the permuter reported the STARTING attempt as a perfect match.

    This is the single most important detection case in the whole pipeline,
    and missing it made the factory structurally incapable of recognizing
    its own successes. When the candidate handed to decomp-permuter is
    already byte-perfect, it prints 'base score = 0' / 'Found zero score!
    Exiting.' and exits immediately -- WITHOUT ever writing an
    output-0-N/source.c directory, because write_candidate() only fires for
    randomized candidates it decides are worth outputting, and a base that's
    already perfect never goes through that path.

    has_zero() above only looks for that output directory. So every
    already-correct candidate -- exactly the ones the pipeline most wants --
    was being reported as 'exited, no zero' and thrown back to tier3 to be
    redrafted, forever. Confirmed directly: sub_80E92A8's tier3 draft
    (`return *param_1;` against retail `ldr r0,[r0,#0]; bx lr`) was a
    perfect match, and the pipeline discarded it. Zero 'converged' events
    had ever been logged before this was found, despite tier3 producing
    plenty of correct C.
    """
    log = NONMATCHINGS_DIR / name / "farm.log"
    if not log.exists():
        return False
    try:
        text = log.read_text(errors="replace")
    except OSError:
        return False
    return bool(BASE_ZERO_RE.search(text))


def ensure_isolated(name: str, candidate_body: str | None) -> bool:
    out_dir = NONMATCHINGS_DIR / name
    # A leftover isolation dir holds the C from whenever it was created.
    # Returning early on `out_dir.exists()` meant a function tier3 had
    # since RE-DRAFTED got searched with its OLD candidate -- the new draft
    # was never actually tested, and the retry path silently did nothing.
    # That path only just became reachable (stalled retries are no longer
    # throttled), so this would have quietly wasted an entire overnight
    # run's worth of retries. Always re-isolate from the current candidate;
    # permute.py refuses to overwrite, so clear it first.
    if out_dir.exists():
        if not candidate_body:
            return True  # nothing newer to install; reuse what's there
        shutil.rmtree(out_dir, ignore_errors=True)
    # The real src/*.c file has to actually contain the candidate BEFORE
    # permute.py runs -- it reads straight off disk (find_stub_block()),
    # it doesn't know the DB's candidate_body column exists. Found missing
    # live: every tier3-sourced candidate landed here with the file still
    # holding the split_func.py #error placeholder, so permute.py refused
    # every single one, 100% of a 21-minute run's failures. See
    # gitops.splice_into_else()'s docstring for the full story.
    # Writes into a real src/*.c and runs permute.py (which compiles) --
    # shared repo state, so serialize it like every other mutation. Only
    # the SETUP is locked; the long permuter search itself runs outside the
    # lock, entirely inside nonmatchings/<name>/, so searches stay fully
    # parallel with everything else. See gitops.repo_lock().
    #
    # timeout=30 on the ACQUISITION wait (not the hold -- once acquired, the
    # lock is legitimately held for the whole permute.py run below, which
    # is real necessary work, not contention). This call runs on every
    # refill-loop claim that gets past already_matches(), so under real
    # repo_lock contention it could otherwise block the refill+monitor
    # cycle for up to 30 minutes waiting just to START -- the same class of
    # wedge already_matches() was fixed for, see its docstring.
    #
    # NOT 8, which is what this first shipped with. Measured live within
    # minutes: the lock is under SUSTAINED contention with 12 permuter
    # slots running (not an occasional spike), so 8s failed on nearly every
    # claim -- 171 "repo_lock timed out" lines in one short tier2.log
    # window. 30s is still a small fraction of the original 30-minute
    # default and far below the 12-22 minute overruns that caused the
    # original wedge, but gives a realistic queue depth room to clear.
    #
    # And critically: a timeout here must NEVER resolve to needs_human --
    # see the caller in run_pool(), which now catches TimeoutError
    # separately and requeues to tier2_ready instead. A lock being busy
    # says nothing about the candidate; needs_human is a dead end nothing
    # reclaims from (CLAUDE.md sections D/Q), and filing 85 real rows there
    # from pure lock contention was a worse bug than the wedge this exists
    # to fix. Whatever this function raises, the CALLER'S handling of that
    # exception is what actually matters -- get that right regardless of
    # the exact timeout value chosen here.
    with gitops.repo_lock(timeout=30, what=f"tier2 isolate {name}"):
        c_path = None
        if candidate_body:
            c_path = gitops.splice_into_else(name, candidate_body)
            if c_path is None:
                return False
        try:
            r = gitops.run(["./container.sh", "tools/permute.py", name])
        finally:
            # REVERT. permute.py has already copied the function into
            # nonmatchings/<name>/ by now -- synchronously, inside this same
            # lock -- so nothing downstream needs the src/*.c to keep
            # holding the candidate: tier2's exit path re-splices via
            # already_matches(), and the validator re-splices from the DB.
            #
            # Leaving it was the second, longer-lived half of a bug whose
            # first half was fixed in already_matches() (01b41f88): a search
            # runs for up to 15 minutes with an unverified draft sitting in
            # a real source file, and gitops.commit() stages FACTORY_PATHS,
            # which includes src/. So whatever the validator committed next
            # absorbed every in-flight splice. Across history, 180
            # Match/Extract commits swept in 720 extra src files touching
            # 497 distinct files -- including one that overwrote an
            # unblock_files.py placeholder with a seed known not to compile,
            # re-creating the section-D translation-unit deadlock in a file
            # nobody touched on purpose, under a commit message promising a
            # verified from-scratch build.
            #
            # It also poisoned MEASUREMENT, which is the more expensive
            # half: agbcc compiles a whole translation unit, so scoring
            # function F while F's neighbours hold unverified drafts makes
            # the verdict about F partly a verdict about them.
            if c_path is not None:
                gitops.run(["git", "checkout", "--",
                            str(c_path.relative_to(gitops.REPO))])
    return r.returncode == 0


def kill_search(name: str, proc: subprocess.Popen):
    """Actually stop a running permuter search. Popen.terminate()/.kill()
    on our direct child (the `env`/`container.sh` wrapper) is NOT enough --
    confirmed the hard way while testing this module: an outer timeout
    killed tier2.py itself mid-poll, and even though its own stall-handling
    code path DID call proc.terminate() + a 15s wait + proc.kill() for one
    function, the real container (podman run --rm's actual crun-managed
    process tree via conmon) survived all of it and kept burning CPU. This
    is very likely the same root mechanism behind today's earlier incident
    (6 abandoned permuter containers, still running 12+ hours later,
    starving llama-server) -- killing the CLI wrapper process was never
    enough to kill the container it launched. `podman kill` on the actual
    container is the only version of this that's actually reliable."""
    proc.terminate()
    try:
        proc.wait(timeout=5)
    except subprocess.TimeoutExpired:
        proc.kill()
    # --no-trunc is load-bearing, not cosmetic: podman ps's default
    # {{.Command}} column truncates long commands, and `nonmatchings/<name>`
    # sits near the END of ours -- past the truncation point every time.
    # Without it this silently matches nothing, no error, and the
    # container just keeps running. Found live: both of THIS run's stalled
    # searches survived their own "stalled, cleaning up" log line intact.
    r = gitops.run(["podman", "ps", "--no-trunc", "--format", "{{.ID}} {{.Command}}"])
    for line in r.stdout.splitlines():
        if f"nonmatchings/{name}" in line:
            cid = line.split()[0]
            gitops.run(["podman", "kill", cid])


def launch(name: str, threads: int):
    log_f = open(NONMATCHINGS_DIR / name / "farm.log", "w")
    proc = subprocess.Popen(
        ["env", f"CONTAINER_CPUSET={FARM_CPUSET}",
         "./container.sh", "tools/decomp-permuter/permuter.py",
         "--stop-on-zero", "-j", str(threads), f"nonmatchings/{name}"],
        cwd=REPO, stdout=log_f, stderr=subprocess.STDOUT,
    )
    return proc, log_f


def trim_source(source: str, fn_name: str) -> str:
    """Same as decomp-permuter's own helpers.trim_source -- reused inline
    so this file has no import-path dependency on the submodule's internal
    layout."""
    idx = source.find(fn_name)
    if idx != -1:
        nl = source.rfind("\n", 0, idx)
        if nl != -1:
            return source[nl:]
    return source


def decl_prefix(source: str, fn_name: str) -> str:
    """Everything ABOVE the function definition -- trim_source's complement.

    This exists because trim_source alone silently threw away real matches.
    The permuter searches an ISOLATED file (nonmatchings/<name>/base.c)
    which carries m2c's guessed callee prototypes above the function;
    trim_source cuts at the function, so those prototypes never come back
    with the winning source. In the real src/*.c the callee is then
    undeclared, and agbcc runs with `-Wimplicit -Werror` -- so the spliced
    result does not merely score differently, it does not COMPILE, and
    already_matches() reports False for a function the permuter had
    genuinely solved.

    Measured before the fix: 178 distinct functions reached score 0 in
    isolation and were rejected here, and tier2 then spent 1,599 of 2,897
    launches (55% of the pool, over 24h) re-searching them -- re-deriving
    the same rejected zero. Convergence read 0.6%/12h against a 15.6%
    historical baseline; the searches were succeeding and the result was
    being discarded.

    The prefix is taken from candidate_body rather than from the
    permuter's base.c on purpose: base.c also carries m2c's typedef
    preamble (`typedef int int32_t;` ...), which global.h already
    provides, so re-splicing it is a redefinition error. candidate_body is
    what m2c_bridge produced FOR the real file -- it already drops
    anything the project headers declare -- and it is known to compile
    there, since scoring it is how the row reached tier2_ready.
    """
    trimmed = trim_source(source, fn_name)
    return source[: len(source) - len(trimmed)]


def _prefix_variants(name: str) -> list[str]:
    """Declaration prefixes to try in front of a permuter-won function,
    best-supported first.

    There is no single always-right prefix, which is why this returns
    several and the caller lets an actual asm-differ score decide:

      1. The seeding candidate's own prefix. Correct by construction at
         the moment of convergence -- it is what m2c_bridge produced FOR
         the real file, so it already omits anything the project headers
         declare. Can go stale if the row was re-seeded mid-search.
      2. The search's own base.c prefix minus typedefs. base.c is what the
         permuter actually compiled, so its declarations are contemporaneous
         with the win; its typedefs (`typedef int int32_t;` ...) come from
         m2c's --context and collide with global.h.
      3. base.c's prefix verbatim -- last resort for a file whose real
         source somehow lacks the headers.
    """
    out = []
    cand = candidate_body_of(name)
    if cand:
        out.append(decl_prefix(cand, name))
    base = REPO / "nonmatchings" / name / "base.c"
    if base.is_file():
        src = base.read_text()
        pre = decl_prefix(src, name)
        no_typedefs = "\n".join(l for l in pre.splitlines()
                                 if not l.lstrip().startswith("typedef"))
        out += [no_typedefs, pre]
    seen, uniq = set(), []
    for pre in out:
        key = pre.strip()
        if key and key not in seen:
            seen.add(key)
            uniq.append(pre)
    return uniq or [""]


def reattach_decls(permuted: str, name: str) -> list[str]:
    """The permuter's winning function text, with its callee prototypes
    restored -- one body per plausible prefix. See decl_prefix() for why
    dropping the prefix loses real matches, and _prefix_variants() for why
    there is more than one candidate prefix."""
    fn_only = trim_source(permuted, name)
    bodies = []
    for prefix in _prefix_variants(name):
        prefix = prefix.rstrip()
        bodies.append(prefix + "\n" + fn_only.lstrip("\n") if prefix else fn_only)
    if fn_only not in bodies:
        bodies.append(fn_only)  # the pre-fix behaviour, still worth a shot
    return bodies


# Every actively-launched search this process owns right now, so a kill
# signal (or an unhandled exception) can still clean up real containers
# instead of orphaning them -- see kill_search()'s docstring for why that
# matters: an outer `timeout` killing THIS process mid-poll orphaned two
# real containers the first time this was tested, live.
_active: dict[str, subprocess.Popen] = {}


def _cleanup_all():
    """Stop every search this process owns AND hand its rows back.

    Killing the containers was only half of it. tier2 marks a row
    `permuting` with worker_id=None (it tracks ownership in its own
    in-process `procs` dict), so a row abandoned mid-search is in a state
    NOTHING claims from -- it waits on the supervisor's reaper, whose
    staleness window is 45 minutes. Every tier2 restart therefore parked
    up to 12 functions for up to 45 minutes; two restarts in ten minutes
    left 24 rows sitting in `permuting` behind a single live container,
    which also makes the dashboard's `permuting` count a fiction.

    Releasing them here costs nothing and is safe: the row goes back to
    tier2_ready with its candidate intact, so the next pool slot re-claims
    it normally. The reaper stays as the backstop for the cases this
    cannot cover -- a SIGKILL, a crash, a power cut.
    """
    for name, proc in list(_active.items()):
        print(f"  cleanup: stopping {name}'s search (process exiting)")
        kill_search(name, proc)
        try:
            conn = db.connect()
            try:
                with db.tx(conn):
                    db.set_state(conn, name, "tier2_ready", worker_id=None,
                                 notes="search interrupted (tier2 exiting) -- requeued")
            finally:
                conn.close()
        except Exception as e:
            print(f"  cleanup: could not requeue {name}: {e}")


atexit.register(_cleanup_all)
signal.signal(signal.SIGTERM, lambda *_a: sys.exit(0))  # let atexit run, don't skip it


def candidate_body_of(name: str) -> str | None:
    conn = db.connect()
    try:
        row = conn.execute("SELECT candidate_body FROM functions WHERE name = ?", (name,)).fetchone()
        return row["candidate_body"] if row else None
    finally:
        conn.close()


def stall_seconds_for(lines_count: int, stall_min: float) -> float:
    """Scale the give-up timeout to how much search space actually exists.

    A 4-line function's permuter search space is exhausted in seconds --
    giving it the same 15 minutes as a 150-line function burns six pinned
    CPU cores for a quarter hour to learn nothing. Measured live: five
    4-line stubs each held a pool slot for the full 15-minute timeout while
    279 functions waited, which is most of why the observed match rate was
    ~6/hr against a theoretical ceiling of ~24/hr.
    """
    return min(max(60.0, lines_count * 6.0), stall_min * 60.0)


def already_matches(name: str, candidate_body: str | None, lock_timeout: float = 1800) -> bool:
    """Cheap pre-check: is this candidate ALREADY byte-perfect?

    Most correct tier3 drafts are already exact -- confirmed repeatedly
    (every autonomous match so far has been 'base attempt already
    matched'). Running the full decomp-permuter apparatus to discover that
    costs an import (cpp + agbcc + as), a container start, and a pool slot,
    to reach the same answer one asm-differ invocation gives in seconds.
    This is the single biggest electricity saving in the pipeline: the
    common success path no longer spins up a search at all.

    A false positive here is harmless -- the validator still does the full
    from-scratch build before committing anything, so the real gate is
    unchanged. A false negative just falls through to the permuter, which
    is exactly what would have happened anyway.

    It REVERTS the splice on every path, which it did not used to.
    Scoring requires writing the candidate into the real src/*.c, and
    leaving it there turns a pure predicate into a working-tree mutation
    that outlives the question it answered. gitops.commit() stages
    FACTORY_PATHS -- which includes src/ -- so every one of those
    abandoned splices got swept into whatever match committed next.
    Measured live: 9 stale splices sitting in the tree at once, and
    `Match sub_8163A24` (1f84d124) carrying edits to SIX unrelated source
    files, 271 insertions and 284 deletions that have nothing to do with
    sub_8163A24. Harmless to the ROM -- a #else branch never builds the
    shipped ROM -- but it makes every commit message a lie, and it commits
    unverified drafts that can re-create the translation-unit deadlock
    (CLAUDE.md section D) in a file nobody touched on purpose.

    Reverting is safe for every caller: the promotion path stores the body
    in the DB (resolve(..., body=...)) and the validator re-splices from
    there, and the permuter path re-splices for itself in
    ensure_isolated().

    MEASURED IN A PLAIN BUILD, which is the whole point and was the bug.

    This used to splice into the #else branch and call
    gitops.asm_differ_matches(), which rebuilds with NONMATCHING=1 (see
    diff_settings.py) and diffs OBJECTS. CLAUDE.md section P documents exactly
    why that verdict is worthless: under NONMATCHING=1 every sibling still on
    the empty "no C attempt yet" placeholder DOES NOT EXIST while expected/
    holds all of them, so the score is dominated by whatever happens to follow
    the function in its file. P measured the same candidate at 0 in a plain
    build and 13,467 under NONMATCHING.

    P fixed that on the VALIDATOR's promotion path and stopped there. This is
    the OTHER promotion path -- a permuter win arrives here first, and if this
    check says no, the row is filed "permuter reached score 0 in isolation but
    no declaration prefix made it match in its real source file" and sent back
    to be searched again from nothing. Measured after the iso_score re-ranking
    started feeding the pool near-misses: 27 permuter zeros in two hours, 5
    matched, and 12 filed under exactly that note. Section Q had reported that
    failure count driven to zero; it was only ever driven to zero for the
    validator.

    `lock_timeout` defaults to repo_lock()'s own 1800s, appropriate for the
    monitor-loop callers (checking one just-finished search's result, a rare
    event worth waiting patiently for). The refill-loop caller in run_pool()
    passes a short override instead: that call runs on EVERY claim attempt,
    and under real repo_lock contention (12 permuter containers + validator +
    tier_m2c all contending for it) it can block for the FULL 30 minutes on
    a single claim -- which starves the monitoring loop far worse than the
    cumulative-refill-time cap (REFILL_BUDGET_S) alone can prevent, since
    that cap only checks the deadline BETWEEN claims, never interrupts one
    already in progress. Measured live: two watchdog WEDGED firings inside
    the 49-minute window immediately after REFILL_BUDGET_S landed -- proof
    that fix was necessary but not sufficient. A short-timeout miss here is
    exactly the "false negative" case the docstring above already calls
    harmless: falls through to the permuter, which is what would have
    happened anyway.
    """
    if not candidate_body:
        return False
    with gitops.repo_lock(timeout=lock_timeout, what=f"tier2 precheck {name}"):
        try:
            score = rescore_seeds.plain_score(name, candidate_body)
        except Exception:
            score = None
        if score is not None:
            return score == 0
        # No readable plain-build verdict -- fall back to the legacy check
        # rather than silently answering "no", which would throw the
        # candidate away. Same defensive shape the validator uses.
        c_path = gitops.splice_into_else(name, candidate_body)
        if c_path is None:
            return False
        try:
            return gitops.asm_differ_matches(name)
        finally:
            gitops.run(["git", "checkout", "--", str(c_path.relative_to(gitops.REPO))])


def run_pool(jobs: int, stall_min: float, max_functions: int):
    """Continuously-refilled worker pool.

    Previously this claimed a batch of `max_functions`, then waited for
    EVERY one to finish before claiming any more -- so one slow function
    idled up to five free slots. Now a slot is refilled the moment it
    frees, which is what actually turns spare CPU into throughput.
    """
    procs = {}
    processed = 0

    def claim_one():
        conn = db.connect()
        try:
            # CLOSEST-FIRST, by the seed's actual asm-differ score.
            #
            # This used to be updated_at ASC, which was itself a fix for
            # tractability-first starving older functions (35 of them sat
            # 3.6-12.5 HOURS while newer easy arrivals cut in line). But
            # age is arbitrary with respect to difficulty, and there are
            # only 12 permuter slots -- so what actually matters is not
            # WHEN a seed arrived, it is how far the search has to travel.
            #
            # Measured live, with updated_at ordering: 9 of 12 slots were
            # searching seeds scoring 1,495-12,160 while only 245 seeds
            # under 500 existed in the whole queue, mostly waiting. A
            # 15-minute stochastic search does not close a 12,160-point
            # gap; that function needs a better SEED, which is the
            # project's whole thesis, not more search.
            #
            # This only became possible tonight: score_sweep gave 1,928
            # queued seeds a real score for the first time. Before that
            # best_score was almost entirely NULL and this ordering would
            # have been meaningless.
            #
            # Scored seeds come first, ascending; unscored ones last. The
            # starvation this replaced was functions never being TRIED --
            # here every seed has been tried and measured, and a high score
            # is evidence that searching it again is not where the next
            # match comes from. If that turns out to be wrong the fix is a
            # better seed for it, not an earlier slot.
            # FEWEST-ATTEMPTS first, then closest-first within that round.
            #
            # Pure closest-first (best_score alone) spun. Measured live: 738
            # launches and 736 stalls in ONE hour, producing a single match,
            # with the same dozen function names in the slots across three
            # checks 30 minutes apart. The cycle is: a search stalls ->
            # tier_m2c claims `stalled` and re-seeds it -> it lands back in
            # tier2_ready -> it is still the lowest-scoring row, so it is
            # re-claimed immediately -> it stalls again in ~60s. Twelve
            # slots, permanently, on twelve functions that had already
            # failed. The old updated_at ordering did not have this problem
            # because a re-queued row went to the back of the line.
            #
            # Sorting on attempts first restores that fairness: everything
            # gets a first search before anything gets a second, while
            # closest-first still decides the order within each round --
            # which was the point of the change and is worth keeping.
            #
            # SEED CEILING. Attempts-first fairness is right among seeds
            # that could plausibly converge, and wrong when most of the
            # queue cannot. Measured over 1,020 seeds with a recorded
            # asm-differ score, against whether they ever reached
            # matched/validating:
            #
            #     seed score      seeds   converted
            #        1 -  99         43      25.6%
            #      100 - 499        147      12.9%
            #      500 -1499        213       3.3%
            #     1500 -4999        255       2.4%
            #     5000-19999        135       0.7%
            #    20000+             227       0.0%   <- 227 tried, zero
            #
            # 1,975 of 2,923 queued seeds sit at 5000+, so attempts-first
            # spends most of the pool on the two bands that convert at
            # 0.7% and 0.0%. A 15-minute stochastic search does not close a
            # 20,000-point gap; that function needs a better SEED, which is
            # this project's whole thesis (CLAUDE.md section E).
            #
            # A ceiling, not an exclusion: high-score rows stay in
            # tier2_ready, and the moment nothing under the ceiling is
            # claimable the pool takes them anyway rather than idling. So
            # this can only reorder work, never drop it, and a new m2c rule
            # that re-seeds a function to a lower score puts it straight
            # back in contention.
            # iso_score FIRST, because best_score is not a measure of code
            # quality. N.4a: it is an asm-differ number taken inside the shared
            # translation unit, and it tracks POSITION IN FILE -- the same code
            # scores 76x higher purely from how many functions follow it. The
            # conversion table above, which justified the ceiling, is therefore
            # partly a measurement of position, not difficulty.
            #
            # iso_score (isolation_exact.py) is the byte distance with the
            # function compiled ALONE: no translation unit to poison, no
            # trailing content to diff against. Measured across 2,316 rows, the
            # two agree only broadly -- Spearman 0.717 -- and they disagree
            # exactly where it matters. 247 candidates are within 16 bytes of
            # retail, and 72 of those the old ordering could not see or
            # actively buried: sub_8065310 is SIX bytes off and scored 94,430,
            # sub_806CB3C is seven bytes off and scored 100,225. Both sit above
            # the 5000 ceiling, so they were only ever claimed when nothing
            # cheaper existed -- near-certain matches, starved.
            #
            # So when a row has an iso_score, rank and admit on it and ignore
            # best_score entirely; fall back to the old behaviour when it has
            # none. Still a ceiling and not an exclusion: the unfiltered claim
            # below takes anything the moment nothing under a ceiling is left.
            # objdiff_score jumps the queue within its own escalation_count
            # band (see OBJDIFF_ADMIT_FLOOR above) -- a row that clears the
            # floor is treated as a near-certain match and searched before
            # anything ranked only by iso_score/best_score, even if this
            # process has never scored it with iso_score at all.
            # CLOSENESS PICKS THE BAND, escalation orders WITHIN it. The
            # order of these first two keys is the whole scheduling policy,
            # and having them the other way round starved every near-match
            # in the pool -- measured 2026-08-24, before this was swapped:
            # 414 rows sat at objdiff 90-100% (iso_score 1-3, i.e. one to
            # three bytes from retail) and received ZERO of the 122 searches
            # launched in three hours, while rows at objdiff 30-85% with
            # iso_score ~140 were searched continuously.
            #
            # The cause was that `escalation_count ASC` came first: every one
            # of those 414 was at escalation 2, and 863 rows sat at
            # escalation 1 and therefore sorted ahead of ALL of them no
            # matter how far away they were. The objdiff CASE below could
            # only ever act as a tiebreaker *inside* one escalation band, so
            # it never got to run while any lower-escalation row remained --
            # and that low band refills continuously as new seeds arrive and
            # failed searches escalate. Every health check read green
            # throughout (queue deep, workers alive, searches running).
            #
            # This does NOT reintroduce the closest-first spin loop CLAUDE.md
            # records under "Throughput". That spin came from *pure*
            # closest-first immediately re-claiming the same single closest
            # row after each failure. Here `escalation_count ASC` still
            # orders within the near-miss band, so a row that fails is bumped
            # and sorts behind its ~413 band-peers -- with 12 slots against
            # 414 rows the same row cannot come back around immediately.
            #
            # Far rows do not starve: extra_where below still admits them on
            # iso_score/best_score, so they are claimed whenever the
            # near-miss band is exhausted or fully in flight, and the band
            # drains as its rows either match or escalate.
            # THIRD TIER, added 2026-08-27: a near-miss row that has already
            # escalated past EXHAUSTED_ESCALATION drops OUT of the
            # always-wins-outright top tier and into the same tier as far
            # rows -- not excluded, not demoted to a separate state (no new
            # terminal bucket to go stale the way needs_human's did; see
            # CLAUDE.md's "stale terminal state" entry in THE LAW), just no
            # longer able to indefinitely outrank work that has had zero
            # chances yet. escalation_count ASC still runs as the tiebreaker
            # inside this tier same as every other, so it keeps competing
            # for slots on equal footing with far rows rather than being cut
            # off -- a row that finally converges here still matches exactly
            # as before. Deliberately NOT gated on "no best_score
            # improvement" as well: checked live, the escalation_count
            # distribution is already cleanly bimodal (69 rows at 1-4, 338 at
            # 10-11, nothing between), so the count alone already identifies
            # the same rows a stricter joint condition would.
            # LEAF-NODE TIEBREAK, added 2026-08-28. A row whose every tracked
            # callee is already state='matched' can only be blocked by a
            # register-allocation/control-flow gap, never by an unknown
            # callee signature -- a real, useful signal this project's own
            # topology (the edges table) already carries and nothing was
            # reading. Measured before shipping: 123 rows in the
            # escalation-exhausted band (tier B, the ELSE bucket above) are
            # leaves, several already at iso_score 2-3 (sub_806E690,
            # sub_8071244, sub_816B0E0 and siblings) but ranked BELOW
            # ordinary non-leaf rows in that same band under the old
            # escalation-then-iso_score ordering.
            #
            # Positioned as a tiebreaker AFTER the existing tier CASE and
            # BEFORE escalation_count, not as a new CASE branch -- verified
            # by dry-running the composed query against the live DB before
            # shipping (same technique this file's own history already
            # relies on), specifically checking it could NOT move a row
            # between tiers. Two more aggressive placements were drafted and
            # REJECTED, not just considered: making leaf-ness outrank the
            # tier CASE entirely would have buried the 14 admitted
            # iso_score=1 rows (literally 1 byte from retail) behind 500
            # leaf rows including ones at objdiff=0%; splitting only the
            # unscored/far tier by leaf-ness would have left the actual 123
            # target rows (all in the escalation-exhausted tier) completely
            # unaffected. This tiebreaker-only version touches neither
            # failure mode: it can only reorder rows the tier CASE already
            # placed together, so the escalation-exhausted band still ranks
            # exactly where the 2026-08-27 fix (see "THIRD TIER" above) put
            # it relative to fresh near-misses and far rows -- only which
            # row wins WITHIN that band changes.
            leaf = ("NOT EXISTS (SELECT 1 FROM edges e JOIN functions cf ON cf.name = e.callee "
                    "WHERE e.caller = functions.name AND cf.state != 'matched')")
            order = ("CASE WHEN objdiff_score >= " + repr(OBJDIFF_ADMIT_FLOOR) +
                     " AND escalation_count < " + repr(EXHAUSTED_ESCALATION) + " THEN 0 "
                     "WHEN objdiff_score IS NULL OR objdiff_score < " + repr(OBJDIFF_ADMIT_FLOOR) + " THEN 1 "
                     "ELSE 2 END ASC, "
                     "CASE WHEN " + leaf + " THEN 0 ELSE 1 END ASC, "
                     "escalation_count ASC, "
                     "iso_score IS NULL ASC, iso_score ASC, "
                     "best_score IS NULL ASC, best_score ASC")
            # DEDUPLICATE. Do not start a search on a function whose
            # structural twin is already being searched. twins.fingerprint()
            # normalises immediates, labels and symbol names away, so two
            # functions sharing a shape_hash differ only in constants. This
            # IS wired in (the shape_hash NOT IN (...) clause below) -- an
            # earlier version of this comment claimed twins.py's dedup
            # exploit had "nothing ever consuming it," which stopped being
            # true here and was stale; see twins.py's own corrected
            # docstring (2026-08-24) for the current, re-measured numbers:
            # 249 multi-member groups hold 746 unmatched functions, largest
            # 21, which this guard keeps from being searched redundantly.
            #
            # No risk attached, which is why it is safe to do at claim time: if
            # the twin converges, validator.propagate_to_twins() hands this
            # function the same C for free; if it does not, this one is
            # claimable again the moment the slot frees. Nothing is dropped,
            # only deferred.
            # NOT a CASE/WHEN keyed on NULL-ness -- an earlier draft of this
            # used `CASE WHEN iso_score IS NOT NULL THEN iso_score < ?
            # WHEN objdiff_score IS NOT NULL THEN ...`, which is wrong: SQL
            # CASE stops at the first TRUE condition, and `iso_score IS NOT
            # NULL` is true for every buried row this exists to rescue (they
            # have an iso_score, it's just >= the ceiling) -- so the
            # objdiff_score branch was dead code for exactly the rows it
            # needed to catch. Caught by re-running the same dry-run SELECT
            # already used to measure the 24 buried rows, against the actual
            # query about to ship, instead of trusting the edit on sight.
            # Plain OR across all three signals is what that measurement
            # used and is what actually admits them.
            # The same deferral, one step wider. cluster_id (cluster_index.py)
            # groups by assembly SIMILARITY rather than an exact hash, which
            # catches near-identical functions a hash cannot: measured on this
            # corpus, 385 clusters / 1,064 avoidable searches against
            # shape_hash's 242 / 493. Both guards apply -- they overlap
            # heavily but neither is a superset, and a row is only deferred
            # while a sibling is ACTIVELY permuting.
            #
            # Deduplication ONLY. Cluster members differ structurally, not
            # just in constants, so nothing may generate one member's C from
            # another the way validator.propagate_to_twins() does for
            # shape_hash twins. See cluster_index.py's docstring.
            dedup = ("(shape_hash IS NULL OR shape_hash NOT IN "
                     "(SELECT shape_hash FROM functions "
                     " WHERE state = 'permuting' AND shape_hash IS NOT NULL)) "
                     "AND (cluster_id IS NULL OR cluster_id NOT IN "
                     "(SELECT cluster_id FROM functions "
                     " WHERE state = 'permuting' AND cluster_id IS NOT NULL))")
            row = db.claim_for_worker(
                conn, "tier2_ready", WORKER_ID, order_by=order,
                extra_where="((iso_score IS NOT NULL AND iso_score < ?) "
                            "OR (objdiff_score IS NOT NULL AND objdiff_score >= ?) "
                            "OR (iso_score IS NULL AND objdiff_score IS NULL "
                            "    AND (best_score IS NULL OR best_score < ?))) "
                            "AND " + dedup,
                params=(ISO_SCORE_CEILING, OBJDIFF_ADMIT_FLOOR, SEED_SCORE_CEILING))
            if row is not None:
                return row
            # The fallback keeps the dedup guard -- without it a busy pool
            # would fall through and search the twins anyway, which is exactly
            # the waste this is here to remove.
            return db.claim_for_worker(
                conn, "tier2_ready", WORKER_ID, order_by=order,
                extra_where=dedup)
        finally:
            conn.close()

    def resolve(name, state, notes=None, event=None, detail="", body=None, source="tier2",
                bump_escalation=False):
        conn = db.connect()
        try:
            fields = {"worker_id": None}
            if notes is not None:
                fields["notes"] = notes
            if body is not None:
                fields["candidate_body"] = body
                fields["candidate_source"] = source
            if bump_escalation:
                # Used by the ensure_isolated() TimeoutError path: without
                # this, a row bounced back to tier2_ready with its priority
                # totally unchanged can be reclaimed immediately by this
                # same process under SUSTAINED lock contention (not a rare
                # spike -- measured, see that call site), spinning on one
                # row instead of trying others while the lock clears.
                # claim_one() sorts fewest-attempts-first, so bumping this
                # is enough to send it to the back of its own priority band
                # without conflating it with a real failed search attempt.
                cur = conn.execute(
                    "SELECT escalation_count FROM functions WHERE name = ?", (name,)).fetchone()
                fields["escalation_count"] = (cur["escalation_count"] or 0) + 1 if cur else 1
            with db.tx(conn):
                db.set_state(conn, name, state, **fields)
            if event:
                db.log_event(conn, name, event, detail)
                conn.commit()
        finally:
            conn.close()

    while True:
      # A transient DB error must NOT escape to main(). main() responds to
      # any exception by cleaning up -- killing every running container and
      # requeuing its row -- which is right for a real crash and wildly
      # disproportionate for `database is locked`. Measured: 25 exceptions
      # in one day, ALL of them `database is locked`, costing 48 killed and
      # requeued searches in three hours, 22 of which had already made real
      # score improvements. The progress is not merely paused: the next
      # claim calls ensure_isolated(), which rmtree's nonmatchings/<name>/,
      # taking any output-N-* directories with it. None had reached zero
      # that day, which was luck rather than safety -- losing a score-0 is
      # the most expensive thing this pipeline can do.
      #
      # db.tx()'s BEGIN IMMEDIATE removes the usual cause; this keeps the
      # pool alive if any other transient DB fault appears. `procs` stays
      # intact across the retry, so the running searches are undisturbed.
      try:
        # --- refill free slots, but not for longer than REFILL_BUDGET_S --
        # A slot's own claim/isolate/launch work can be slow (see the
        # constant's docstring above); this stops that work from chaining
        # across several slots and starving the monitoring loop and its
        # give-up-deadline check below. Any slots left unfilled this pass
        # get their turn on the next one -- refilling is not starved,
        # only spread out enough that wedged searches get noticed on time.
        refill_deadline = time.time() + REFILL_BUDGET_S
        while len(procs) < max_functions and time.time() < refill_deadline:
            row = claim_one()
            if row is None:
                break
            name = row["name"]
            body = row["candidate_body"]

            # A known dead end: this exact candidate already reached zero in
            # ISOLATION and failed to reproduce in this exact translation
            # unit. Re-running the search re-derives the same answer -- m2c
            # re-seeds deterministically, so the candidate comes back
            # identical -- and burns a full slot doing it. Measured: 22
            # functions did this in one 12h window, sub_8091CC8 8+ times
            # over several days.
            #
            # Bump escalation_count and release rather than filing anywhere
            # terminal: the row stays in tier2_ready and becomes claimable
            # for real the moment its candidate or its file changes (which
            # is exactly when the outcome could differ), and the bump sends
            # it to the back of its band so this loop cannot spin on it.
            if is_known_dead_iso_zero(row):
                resolve(name, "tier2_ready", bump_escalation=True,
                        notes="skipped: isolation-only zero already known not to "
                              "reproduce in this translation unit (same candidate, "
                              "same file) -- claimable again when either changes")
                print(f"  {name}: known non-transferable iso-zero -> skipped")
                continue

            # Cheap win first: if it already matches, skip the permuter
            # entirely and hand it straight to the validator.
            #
            # lock_timeout=30, short relative to the 1800s default: this
            # call runs on EVERY claim in this loop, so under real lock
            # contention it can otherwise block the WHOLE refill+monitor
            # cycle for up to 30 minutes on one claim -- see
            # already_matches()'s own docstring for the measurement that
            # found this. A miss here is a harmless false negative (falls
            # through to the permuter below), not a correctness loss --
            # unlike ensure_isolated() below, this path was never the one
            # filing rows to needs_human on a timeout, so it didn't need
            # the same TimeoutError-specific handling, only the value
            # itself needed correcting: 8s failed almost every claim once
            # measured against the real, sustained contention 12 permuter
            # slots produce, not just the rare spike this was designed for.
            try:
                if already_matches(name, body, lock_timeout=30):
                    resolve(name, "validating", event="converged",
                            detail="score=0 (pre-check: candidate already matched)",
                            body=body)
                    print(f"  {name}: already matches -- straight to validator (no search)")
                    processed += 1
                    continue
            except Exception as e:
                print(f"  {name}: pre-check failed ({e}), falling through to permuter")

            # A function with no fragment was never extracted, so there is
            # no `#ifndef NONMATCHING` guard block to isolate and permute.py
            # cannot possibly succeed. Send it back to be EXTRACTED rather
            # than to needs_human, which is a dead end nothing re-claims.
            #
            # This is how 54 functions ended up parked as "couldn't isolate
            # for permuter" -- every single one of them, checked, had no
            # fragment. They are residue from when tier3 owned
            # ensure_extracted() and was retired without anything inheriting
            # it; they carried a candidate_body from that era but had never
            # been extracted at all. A further 13 were sitting in
            # tier2_ready about to fail the same way.
            if not (gitops.REPO / "asm" / "nonmatching" / f"{name}.s").exists():
                resolve(name, "needs_attempt",
                        notes="tier2: no fragment -- never extracted, sent back for "
                              "extraction rather than parked in needs_human")
                print(f"  {name}: not extracted -> back to needs_attempt")
                processed += 1
                continue

            # Catch broadly, matching the already_matches() pre-check right
            # above: the repo_lock timeout just added to ensure_isolated()
            # raises TimeoutError under contention, and nothing in this
            # while loop's own `except sqlite3.OperationalError` would have
            # caught that -- it would have propagated to main()'s handler
            # and triggered _cleanup_all(), killing every running search.
            # That is precisely the expensive cascade the short timeout was
            # meant to AVOID; without this except it would have made things
            # worse, not better, under contention.
            #
            # TimeoutError gets its OWN branch, not lumped in with a real
            # isolate failure. Measured live, minutes after this timeout
            # first shipped at 8s: the repo_lock is under SUSTAINED, not
            # occasional, contention -- 171 "repo_lock timed out" lines in
            # one short tier2.log window, 85 rows filed to needs_human from
            # it. needs_human is a known dead end nothing ever reclaims
            # from (CLAUDE.md sections D/Q) -- a lock being busy says
            # NOTHING about whether the candidate is good, so filing it
            # there was a worse bug than the wedge this was fixing. A
            # timeout instead goes back to tier2_ready to retry once the
            # lock frees up, exactly like already_matches()'s own timeout
            # handling right above already does correctly.
            try:
                isolated = ensure_isolated(name, body)
            except TimeoutError as e:
                print(f"  {name}: isolate lock-timed-out ({e}), retrying later")
                resolve(name, "tier2_ready", bump_escalation=True,
                        notes="tier2: repo_lock busy during isolate, requeued to retry")
                processed += 1
                continue
            except Exception as e:
                print(f"  {name}: isolate failed ({e}), needs_human")
                isolated = False
            if not isolated:
                resolve(name, "needs_human",
                        notes="tier2: couldn't isolate for permuter (permute.py failed)")
                processed += 1
                continue

            threads_each = max(1, jobs // max(1, max_functions))
            proc, log_f = launch(name, threads_each)
            procs[name] = {
                "proc": proc, "log": log_f, "last_score": None,
                "last_improved": time.time(),
                "stall_s": stall_seconds_for(row["lines"] or 0, stall_min),
                # Was this seed's score known at claim time? If not, the
                # ceiling could not be applied to it -- see the abort in
                # the poll loop.
                "seed_scored": row["best_score"] is not None,
            }
            _active[name] = proc
            conn = db.connect()
            try:
                with db.tx(conn):
                    # Count this attempt. escalation_count was tier3's
                    # (retired) retry counter and is otherwise unused, so
                    # tier2 repurposes it as "how many searches has this
                    # function already had". The claim ordering below sorts
                    # on it FIRST, which is what stops the closest-first
                    # spin loop -- see there.
                    db.set_state(conn, name, "permuting", worker_id=None, best_score=None,
                                 escalation_count=(row["escalation_count"] or 0) + 1,
                                 last_improved_at=time.time())
                db.log_event(conn, name, "t2_launch",
                             f"threads={threads_each}, stall={procs[name]['stall_s']:.0f}s")
                conn.commit()
            finally:
                conn.close()
            print(f"  {name}: searching ({threads_each}t, give up after {procs[name]['stall_s']:.0f}s)")

        if not procs:
            break  # nothing running and nothing left to claim

        time.sleep(10)

        for name in list(procs):
            info = procs[name]
            score = best_score_seen(name)
            if score is not None and score != info["last_score"]:
                first_score = info["last_score"] is None
                info["last_score"] = score
                info["last_improved"] = time.time()
                conn = db.connect()
                try:
                    with db.tx(conn):
                        db.set_state(conn, name, "permuting", best_score=score,
                                     last_improved_at=info["last_improved"])
                    db.log_event(conn, name, "score_update", str(score))
                    conn.commit()
                finally:
                    conn.close()

                # LATE CEILING. claim_one()'s ceiling can only filter on a
                # score the row already has, and an unscored seed has none
                # -- so every unscored row passes it regardless of quality
                # and then holds a slot for up to stall_seconds_for()
                # (15 min). Measured right after the ceiling went in: all
                # 12 slots were filled by unscored seeds whose base scores
                # turned out to be 2,140-6,650, i.e. exactly the bands that
                # convert at 0.7% and 0.0%.
                #
                # The permuter's FIRST reported score is the base score --
                # the same number asm-differ would have given the seed --
                # so this is not a new judgement, it is the ceiling applied
                # a few seconds late, as soon as the information exists.
                # Only the first score qualifies: a search that started
                # under the ceiling and drifted up is still searching from
                # a good seed and is left alone.
                #
                # Requeued WITH the discovered score, so the ordinary
                # ceiling handles it from then on and it is never probed
                # twice.
                if (first_score and not info["seed_scored"]
                        and score >= SEED_SCORE_CEILING):
                    kill_search(name, info["proc"])
                    info["log"].close()
                    # best_score was just written by the set_state above,
                    # so the row carries its discovered score already --
                    # resolve() only moves the state and must not race a
                    # separate write against a slot re-claiming it.
                    resolve(name, "tier2_ready", event="t2_ceiling_abort",
                            detail=str(score),
                            notes=f"seed scored {score} on first report, at or above "
                                  f"the {SEED_SCORE_CEILING} ceiling -- slot released "
                                  f"without a full search; needs a better seed, not "
                                  f"more search")
                    print(f"  {name}: base score {score} >= ceiling -> slot released")
                    del procs[name]
                    _active.pop(name, None)
                    processed += 1
                    continue

            exited = info["proc"].poll() is not None
            stalled = (time.time() - info["last_improved"]) > info["stall_s"]

            if exited:
                info["log"].close()
                zero = has_zero(name)
                base_zero = zero is None and base_already_zero(name)
                if zero or base_zero:
                    if zero:
                        # Try each prefix variant; the first that actually
                        # scores 0 in the REAL file wins. Dropping the
                        # prefix entirely -- what this used to do -- left
                        # callees undeclared, and agbcc's -Wimplicit
                        # -Werror turned that into a compile failure, so a
                        # genuinely solved function read as "didn't hold".
                        body = None
                        for cand_body in reattach_decls(zero.read_text(), name):
                            if already_matches(name, cand_body):
                                body = cand_body
                                break
                        detail = "score=0 (permuter found it)"
                        if body is not None:
                            resolve(name, "validating", event="converged",
                                    detail=detail, body=body)
                            print(f"  {name}: converged -- {detail}")
                            del procs[name]
                            _active.pop(name, None)
                            processed += 1
                            continue
                        # Remember this exact (candidate, translation unit)
                        # dead end so it is not re-searched until one of
                        # them changes -- see iso_zero_signature().
                        _mark_dead_iso_zero(name, candidate_body_of(name))
                        resolve(name, "stalled", event="t2_exit_no_zero",
                                notes="permuter reached score 0 in isolation but no "
                                      "declaration prefix made it match in its real "
                                      "source file")
                        print(f"  {name}: permuter score 0 didn't hold in context -> stalled")
                        del procs[name]
                        _active.pop(name, None)
                        processed += 1
                        continue
                    else:
                        body = candidate_body_of(name)
                        detail = "score=0 (base attempt already matched)"
                    # A permuter score-0 is earned in its OWN isolated
                    # sandbox (nonmatchings/<name>/base.c, with its own
                    # includes and helper decls). trim_source() splices
                    # only the function text back into the real src/*.c,
                    # which can drop context the permuter had -- so
                    # score-0-in-isolation does not imply score-0-in-place.
                    # Confirmed live: sub_8163BB8 converged at 0 and the
                    # validator then correctly rejected it, twice. Verify
                    # in the real file before claiming convergence, so the
                    # two stages can't disagree in the first place.
                    verified = body and already_matches(name, body)
                    if verified:
                        resolve(name, "validating", event="converged", detail=detail, body=body)
                        print(f"  {name}: converged -- {detail}")
                    elif body:
                        _mark_dead_iso_zero(name, body)
                        resolve(name, "stalled", event="t2_exit_no_zero",
                                notes="permuter reached score 0 in isolation but the "
                                      "candidate does not match in its real source file")
                        print(f"  {name}: permuter score 0 didn't hold in context -> stalled")
                    else:
                        resolve(name, "needs_human", event="error",
                                detail="base zero with no candidate_body",
                                notes="permuter says base score 0 but no candidate_body on record")
                else:
                    resolve(name, "stalled", event="t2_exit_no_zero",
                            notes="permuter process exited without reaching score 0")
                    print(f"  {name}: exited, no zero")
                del procs[name]
                _active.pop(name, None)
                processed += 1
            elif stalled:
                kill_search(name, info["proc"])
                info["log"].close()
                # Checkpoint the closest candidate this run found, so the
                # NEXT attempt (this row goes back to tier2_ready and can be
                # relaunched) starts from here instead of from the original
                # seed -- see best_output_source()'s docstring for why this
                # was previously silently discarded every time.
                checkpoint = best_output_source(name)
                body = None
                if checkpoint is not None:
                    variants = reattach_decls(checkpoint.read_text(), name)
                    body = variants[0] if variants else None
                checkpoint_note = (
                    f", checkpointed for the next attempt" if body else
                    ", no improving output to checkpoint")
                resolve(name, "stalled", event="stalled",
                        detail=f"best_score={info['last_score']}",
                        body=body,
                        notes=f"no improvement for {info['stall_s']:.0f}s "
                              f"(best={info['last_score']}){checkpoint_note}")
                print(f"  {name}: stalled at {info['last_score']} after {info['stall_s']:.0f}s"
                      + (" -> checkpointed" if body else " -> tier3, nothing to checkpoint"))
                del procs[name]
                _active.pop(name, None)
                processed += 1
      except sqlite3.OperationalError as e:
        # Keep the pool alive. main() responds to ANY exception by calling
        # _cleanup_all(), which kills all 12 containers and requeues their
        # rows -- right for a real crash, disproportionate for a transient
        # DB fault. `procs` survives this retry, so running searches are
        # untouched.
        print(f"[{time.strftime('%H:%M:%S')}] transient DB error ({e}) -- "
              f"{len(procs)} search(es) left running, retrying", flush=True)
        time.sleep(2)
        continue

    return processed




def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--jobs", type=int, default=FARM_CPU_COUNT,
                     help=f"total concurrent permuter threads (default {FARM_CPU_COUNT})")
    ap.add_argument("--stall-min", type=float, default=15.0,
                     help="minutes without score improvement before handing off to tier3 (default 15)")
    ap.add_argument("--max-functions", type=int, default=FARM_CPU_COUNT,
                     help=f"max functions to run concurrently in one pool pass (default {FARM_CPU_COUNT})")
    ap.add_argument("--loop", type=int, default=None, metavar="SECONDS")
    args = ap.parse_args()

    while True:
        # No connection managed at this level at all -- run_pool() now
        # opens and closes its own short-lived connection around every
        # individual DB touch, since one iteration of its internal poll
        # loop can legitimately span the full --stall-min minutes. See
        # run_pool()'s own docstring/comment for why that's a materially
        # different fix from "one connection per --loop iteration" (which
        # is what every other tier actually needed).
        try:
            n = run_pool(args.jobs, args.stall_min, args.max_functions)
        except Exception as e:
            # See scanner.py's main() for why this matters. Note this one
            # matters more than most: run_pool() owns real running
            # containers via _active, and _cleanup_all() is only wired to
            # atexit/SIGTERM, not to an in-loop exception -- so on a real
            # crash here those containers rely on the atexit handler still
            # firing during process teardown, which it does (exceptions
            # don't skip atexit), just calling it out since this is the one
            # process where "crashed" and "orphaned containers" are close.
            print(f"[{time.strftime('%H:%M:%S')}] !! tier2 run_pool() failed, will retry next cycle: {e}",
                  flush=True)
            # CLEAN UP BEFORE RETRYING. `procs` is local to run_pool(), so
            # the next call starts with an empty pool and refills to
            # max_functions -- while the previous pool's containers are
            # still running, owned only by module-level _active. Every
            # exception here therefore ADDS up to max_functions concurrent
            # searches instead of replacing them.
            #
            # Measured live: 20 permuter containers against a 12-slot pool,
            # stable across three samples 20s apart, with no duplicate
            # function names and none of them orphans -- 20 genuinely-owned
            # searches. Load average 31 on 6 physical cores, individual
            # permuters down to 31-52% CPU. That is not extra throughput,
            # it is the same work done slower: every search in the pool
            # gets a fraction of a core.
            #
            # _cleanup_all() kills the containers AND requeues their rows,
            # so the retry starts from a real empty pool.
            _cleanup_all()
            n = 0
        if args.loop is None:
            break
        if n == 0:
            time.sleep(args.loop)


if __name__ == "__main__":
    main()
