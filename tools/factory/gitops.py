"""Shared git/build primitives for the factory pipeline. Written once here
specifically because this exact logic got duplicated (with a real bug --
an incomplete revert-on-failure that cascaded corruption across later
targets) across auto_trivial.py and permuter_farm.py earlier today. Only
the Validator process should actually call finish_match() / revert_to_clean()
against the real repo -- see its docstring for why that has to be
serialized -- but the pure helpers here (splice, run) are safe from
anywhere.
"""
from __future__ import annotations

import fcntl
import re
import shutil
import subprocess
import time
from contextlib import contextmanager
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
SRC_DIR = REPO / "src"
LOCK_PATH = REPO / ".claude" / "factory" / "repo.lock"

# The complete, confirmed set of paths any factory process (split_func.py, the tier1-3 writers,
# the Validator) ever writes to -- checked directly against every write_text()/open(...,'w') in
# split_func.py, splitlib.py, and tools/factory/*.py, not assumed. `revert_to_clean()` and
# `commit()` below scope their git operations to exactly this list, on purpose -- see both
# docstrings for why "repo-wide" was a real, live bug.
FACTORY_PATHS = ["asm/", "src/", "tools/splits.yaml", "ld_script.ld"]


@contextmanager
def repo_lock(timeout: float = 1800, what: str = ""):
    """Serialize every operation that MUTATES the shared repo working tree.

    The factory's processes are deliberately concurrent, but the git working
    tree is one shared mutable resource and nothing was guarding it. Two
    real failures from that, both seen live in the same run:

    1. The validator's from-scratch `rm -rf build/ && make` ran while
       tier1/tier3 were mid-`split_func.py` -- so splits.yaml/ld_script.ld/
       the asm blobs changed underneath the build, and it failed. The
       validator correctly refused to commit, but reported a genuinely
       CORRECT match (sub_81218E0, `return 0;` vs retail `movs r0,#0; bx
       lr`) as an unexplained anomaly needing a human.
    2. Much worse: that failure path then calls revert_to_clean(), which is
       repo-WIDE (`git checkout -- .` + `git clean -fd asm/ src/`).
       Extractions from tier1/tier3 are uncommitted until a match lands, so
       one function's validation failure silently destroyed every other
       process's in-flight extraction work.

    Everything expensive (permuter searches in nonmatchings/, LLM calls)
    stays fully parallel -- this only serializes the short repo-touching
    critical sections.

    Uses a non-blocking retry loop rather than a plain blocking flock so a
    wedged holder can't deadlock the whole factory silently forever.
    """
    LOCK_PATH.parent.mkdir(parents=True, exist_ok=True)
    deadline = time.time() + timeout
    f = open(LOCK_PATH, "w")
    try:
        while True:
            try:
                fcntl.flock(f, fcntl.LOCK_EX | fcntl.LOCK_NB)
                break
            except BlockingIOError:
                if time.time() >= deadline:
                    raise TimeoutError(
                        f"repo_lock timed out after {timeout}s waiting for another "
                        f"process to finish mutating the repo (wanted: {what or 'unspecified'})"
                    )
                time.sleep(0.5)
        yield
    finally:
        try:
            fcntl.flock(f, fcntl.LOCK_UN)
        finally:
            f.close()


def run(cmd, **kw):
    return subprocess.run(cmd, cwd=REPO, capture_output=True, text=True, **kw)


def layout_ok():
    """(ok, detail) -- did the last link put every symbol at its own address?

    Guards the extraction landmine documented in CLAUDE.md: an object whose
    bytes end at a 2-mod-4 address gets padded to a word boundary, shifting
    every symbol after it. split_func.py now prevents that at the source,
    but this is the cheap independent check that it stayed prevented --
    reading mlss.map, no rebuild.

    Worth having as a SEPARATE check from `make` succeeding, because the
    two fail very differently in the factory. `make` reports a bare
    `mlss.gba: FAILED` checksum mismatch, and from there every subsequent
    match fails to validate -- so the visible symptom is a needs_human /
    stalled spike, which sends you looking at the candidates rather than at
    the one extraction that actually broke the tree. This names the culprit
    directly.
    """
    r = run(["./container.sh", "tools/check_layout.py", "--quiet"])
    return r.returncode == 0, (r.stderr or r.stdout).strip()


def revert_to_clean():
    """Undo every tracked modification and delete every untracked file --
    but ONLY within FACTORY_PATHS, never repo-wide. Learned the hard way
    (see CLAUDE.md / session log): reverting only the specific files one
    failure path happens to know about is not enough -- split_func.py also
    touches splits.yaml, ld_script.ld, and shrunk/split asm blobs, and a
    partial revert leaves the tree internally inconsistent enough to
    corrupt whatever gets attempted next. A full revert of the factory's
    own domain is what's actually needed -- NOT a full revert of the whole
    repo, which is a different, worse bug this function used to have
    (`git checkout -- .`, no path scoping at all): it silently discarded
    ANY uncommitted work sitting anywhere else in the tree -- caught live
    when a full session's worth of docs/formats/README.md research got
    wiped by a wholly unrelated candidate's validation failure, mid-session,
    with zero warning. Scoping to FACTORY_PATHS keeps the original fix's
    safety property (every file an extraction/match attempt could touch
    still gets reverted together, atomically) without touching anything
    outside it.

    Also forces a from-scratch rebuild afterward. mlss.map is gitignored,
    so `git checkout`/`git clean` don't touch it -- it keeps describing
    whatever the tree looked like right before the revert (a function
    "already claimed" by a src/*.o that no longer exists, a blob split
    that's been undone), and the next split_func.py call fails on stale
    map data even though the actual source tree is clean. Hit for real
    twice in one afternoon before landing here: once in qwen_pilot.sh's
    autopilot worktree, once again live while testing THIS module. Baking
    the fix into the shared primitive so nobody has to remember it by hand
    a third time."""
    run(["git", "checkout", "--", *FACTORY_PATHS])
    run(["git", "clean", "-fd", *FACTORY_PATHS])
    shutil.rmtree(REPO / "build", ignore_errors=True)
    run(["./container.sh", "make"])


def refresh_expected():
    """Re-sync expected/ from build/ for asm-differ.

    Must happen after every extraction, not just after a match: extracting
    moves a symbol from a raw asm/*.s blob into a src/*.c object, so a
    stale expected/ holds the WRONG object for that symbol and asm-differ
    silently diffs against nothing (a real CLAUDE.md landmine).

    Uses rsync rather than the obvious rmtree+copytree because this runs on
    every single extraction -- hundreds of times in a long run -- and the
    tree is ~340 object files. rmtree+copytree rewrites all of them every
    time; rsync --delete transfers only what actually changed while still
    guaranteeing an exact mirror (important: a lingering stale object would
    be worse than the copy cost). Falls back to the old approach if rsync
    isn't present.
    """
    build = REPO / "build"
    expected_build = REPO / "expected" / "build"
    if not build.is_dir():
        return
    expected_build.parent.mkdir(parents=True, exist_ok=True)
    if shutil.which("rsync"):
        # Trailing slashes matter: sync CONTENTS of build/ into expected/build/.
        run(["rsync", "-a", "--delete", f"{build}/", f"{expected_build}/"])
    else:
        shutil.rmtree(REPO / "expected", ignore_errors=True)
        shutil.copytree(build, expected_build)


def find_guard_block(name: str):
    """Locate the #ifndef NONMATCHING guard block for `name` in whichever
    src/*.c currently references it. Returns (c_path, full_match_text) or
    (None, None)."""
    needle = f"asm/nonmatching/{name}.s"
    for c_path in sorted(SRC_DIR.glob("*.c")):
        text = c_path.read_text()
        if needle not in text:
            continue
        block_re = re.compile(
            rf'#ifndef NONMATCHING\nasm_unified\("\.include \\"{re.escape(needle)}\\""\);\n'
            rf"#else\n.*?\n#endif\n?",
            re.DOTALL,
        )
        m = block_re.search(text)
        if m:
            return c_path, m.group(0)
    return None, None


def splice_into_else(name: str, body: str) -> Path | None:
    """Write a candidate into the #else branch, KEEPING the guard --
    different from splice_candidate() below, which removes the guard
    entirely for a believed-final match. This is for handing a candidate
    to decomp-permuter: its own find_stub_block() (tools/permute.py)
    requires the #ifndef/asm_unified/#else/#endif structure to exist so it
    can pull both the retail assembly (via the asm_unified include) and
    the candidate (the #else body) at once.

    Found missing live: tier3 was writing every LLM draft to
    candidate_body in the DB only, and tier2 called permute.py straight
    from there assuming the file was already up to date -- for every
    tier3-sourced candidate, the real src/*.c file was untouched (still
    the split_func.py #error placeholder), so permute.py correctly and
    consistently refused every single one. 100% of a 21-minute soak
    test's 189 needs_human landings turned out to be exactly this, not 189
    different real problems."""
    c_path, block = find_guard_block(name)
    if c_path is None:
        return None
    text = c_path.read_text()
    needle = f"asm/nonmatching/{name}.s"
    new_block = re.sub(
        r"#else\n.*?\n#endif",
        lambda _m: f"#else\n{body.strip()}\n#endif",
        block,
        count=1,
        flags=re.DOTALL,
    )
    new_text = text.replace(block, new_block, 1)
    # Deliberately NOT treating "text unchanged" as failure: that just means
    # this exact candidate is already spliced in (a requeued function, a
    # retry after a crash), which is a perfectly good state to proceed from.
    # Treating it as failure sent five already-correctly-spliced functions
    # straight to needs_human on their first retry -- the file was right,
    # the pipeline just refused to believe it.
    if new_text != text:
        c_path.write_text(new_text)
    return c_path


def splice_candidate(name: str, body: str) -> Path | None:
    """Replace the #ifndef NONMATCHING/#else/#endif guard for `name` with a
    plain function body (no guard -- this is the FINAL form, used once a
    candidate is believed to match). `body` should be the bare function
    definition text (e.g. 'void foo(void) {\\n}' or a full multi-line
    attempt from a permuter/LLM candidate)."""
    c_path, block = find_guard_block(name)
    if c_path is None:
        return None
    text = c_path.read_text()
    new_text = text.replace(block, body.strip() + "\n", 1)
    if new_text == text:
        return None
    c_path.write_text(new_text)
    return c_path


ANSI_RE = re.compile(r"\x1b\[[0-9;]*m")
# asm-differ's own verdict, e.g. "CURRENT (400)" or "CURRENT (0)".
SCORE_RE = re.compile(r"CURRENT\s*\((\d+)\)")


def asm_differ_score(name: str) -> int | None:
    """asm-differ's own numeric score against retail (0 = byte-identical),
    or None if no readable verdict could be obtained after a retry.

    Reads asm-differ's OWN score out of its header rather than trying to
    compare the two columns by whitespace. The column approach was a real
    false-positive source: actual diff output carries ANSI color codes and
    a `|` change marker, so a differing line often doesn't split into
    exactly two whitespace-separated halves and the old check silently
    skipped it. Combined with the stale-object bug below, that produced 60
    false "already matches" verdicts in a single 10-minute run.

    Forces a genuine recompile of this function's object first. Make
    decides staleness from mtime, and splice_into_else() deliberately
    doesn't rewrite a file whose content is already correct -- so without
    this, `make` prints "is up to date" and asm-differ happily diffs an
    object built from OLDER source. Confirmed live: the same function
    reported a perfect match against a stale object and score 400 once
    genuinely rebuilt.

    Extracted out of asm_differ_matches() (below) so callers that want the
    full continuous score -- not just a match/no-match verdict -- have
    somewhere to get it: pass/fail alone is nearly uninformative when the
    hit rate is near zero, which is exactly the regime the model-comparison
    benchmark (tools/factory/bench.py) runs in.
    """
    # Delete the object of the file that actually CONTAINS this function,
    # NOT one named after the function. split_func.py appends functions to
    # an existing src/*.c, so e.g. sub_81DA6A0 lives in src/sub_81DA690.c.
    # Deleting build/src/sub_81DA6A0.o is then a silent no-op, make says
    # "is up to date", and the pre-check compares a STALE object -- which
    # produced a permanent tier2_ready -> validating -> tier2_ready
    # infinite loop (the pre-check kept saying match on stale bytes, the
    # validator kept correctly rejecting, forever, burning a rebuild each
    # lap). Found live: sub_81DA6A0 cycled 10+ times in nine minutes.
    c_path, _blk = find_guard_block(name)
    stem = c_path.stem if c_path is not None else name
    for stale in ((REPO / "build" / "src" / f"{stem}.o"),
                  (REPO / "build" / "src" / f"{stem}.s")):
        try:
            stale.unlink()
        except FileNotFoundError:
            pass
    # Retry once on an unreadable verdict. "asm-differ produced no score"
    # and "asm-differ says the code differs" are completely different
    # outcomes, and conflating them THROWS AWAY CORRECT WORK: a permuter
    # search that genuinely reached score 0 was rejected as "does not match
    # in its real source file" and demoted to stalled, yet re-checking the
    # very same candidate by hand afterwards returned a clean match. A
    # score-0 candidate is confirmed-correct C -- losing one to a transient
    # build hiccup is the most expensive mistake this pipeline can make.
    for attempt in (1, 2):
        r = run(["./container.sh", "asm-differ", "-mwo", name])
        out = ANSI_RE.sub("", r.stdout + r.stderr)
        m = SCORE_RE.search(out)
        if m:
            return int(m.group(1))
        if attempt == 1:
            # Most likely cause is a half-written build tree from a
            # concurrent step; force a clean rebuild of this object.
            for stale in ((REPO / "build" / "src" / f"{stem}.o"),
                          (REPO / "build" / "src" / f"{stem}.s")):
                try:
                    stale.unlink()
                except FileNotFoundError:
                    pass
    return None


def asm_differ_matches(name: str) -> bool:
    """True only if asm-differ scores this function 0 against retail.

    A false negative here is harmless (falls through to the permuter); a
    false positive wastes a validator cycle. See asm_differ_score() above
    for the mechanics -- this is just its match/no-match projection.
    """
    return asm_differ_score(name) == 0


TRAILING_DATA_RE = re.compile(r"^\s*\.byte\b", re.MULTILINE)


def fragment_trailing_bytes(name: str) -> str | None:
    """Raw `.byte` content sitting AFTER this function's literal pool.

    CLAUDE.md documents this as a landmine ("trailing orphaned data on the
    LAST function extracted from a file"): when split_func.py pulls the
    final function out of a blob it takes every remaining byte to
    end-of-file, and twice now those trailing bytes turned out to be a
    second, real, never-labeled function Luvdis missed rather than
    padding. Deleting the fragment on a match then silently drops those
    bytes and breaks the ROM.

    Confirmed firing automatically in the pipeline: sub_8159400 and
    sub_8161580 both reached a genuine asm-differ score of 0, had their
    fragment deleted by finish_match(), and failed the from-scratch build
    -- landing in needs_human with a truncated, undiagnosable link-command
    tail as the only explanation. sub_8159400's fragment carried 32
    trailing bytes starting `0x10, 0xB5` -- Thumb `push {r4, lr}`, i.e.
    an entire unlabeled function.

    Returns the offending text, or None when the tail is only padding
    (all-zero .byte lines, which really are safe to drop).
    """
    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if not frag.exists():
        return None
    text = frag.read_text()
    # Everything after the last literal-pool definition (or, failing that,
    # after the last real instruction) is "trailing".
    pool_ends = [m.end() for m in re.finditer(r"^_\w+:\s*\.4byte.*$", text, re.MULTILINE)]
    tail = text[pool_ends[-1]:] if pool_ends else ""
    if not tail.strip():
        return None
    data_lines = [ln for ln in tail.splitlines() if TRAILING_DATA_RE.match(ln)]
    if not data_lines:
        return None
    # Alignment padding is genuinely disposable; real content is not.
    joined = " ".join(data_lines)
    values = re.findall(r"0x([0-9A-Fa-f]{2})", joined)
    if values and all(v == "00" for v in values):
        return None
    return "\n".join(data_lines).strip()


def _owning_source_stem(name: str):
    """Stem of the src/*.c that contains `name`.

    find_guard_block() alone is not enough here: by the time finish_match()
    runs, splice_candidate() has already REMOVED the guard (that is what
    makes it a match), so the `asm/nonmatching/<name>.s` needle it searches
    for is gone and it returns None. Fall back to looking for the function's
    own definition."""
    c_path, _ = find_guard_block(name)
    if c_path is not None:
        return c_path.stem
    pattern = re.compile(rf"^[\w \*]*\b{re.escape(name)}\s*\(", re.MULTILINE)
    for c_path in sorted(SRC_DIR.glob("*.c")):
        try:
            if pattern.search(c_path.read_text()):
                return c_path.stem
        except OSError:
            continue
    return None


def object_size_matches(name: str) -> tuple:
    """(ok, detail) -- does the candidate compile to the SAME NUMBER OF
    BYTES as the retail code it replaces?

    asm-differ compares instructions, and it will report a clean match for a
    function whose instructions are right but whose LENGTH is wrong -- a
    literal pool with a different number of entries is the usual cause.
    Confirmed on sub_801ADC0: asm-differ said match, the build succeeded,
    and the linked ROM came out 8 bytes short, shifting 6,727 symbols. 93
    rows were sitting in needs_human from exactly this, each having cost a
    full from-scratch build to discover.

    The check is one `objdump -h` against expected/ -- the same frozen
    good-build snapshot asm-differ -o already diffs against, so it is
    guaranteed present and current. Comparing whole-object .text size
    rather than a symbol size avoids depending on agbcc emitting `.size`
    (it does for C, but not for the Luvdis fragments in the same object).

    NOT a complete check, and deliberately so: GNU as rounds a section's
    size up to 4, so a difference of 1-3 bytes is absorbed by padding and
    slips through. Those still get caught by the ROM sha1 in finish_match.
    This is a cheap filter for the common case, not a replacement for the
    real one.
    """
    stem = _owning_source_stem(name)
    if stem is None:
        return True, f"couldn't tell which src/*.c owns {name} -- check skipped"
    obj = f"build/src/{stem}.o"
    if not (REPO / "expected" / obj).exists():
        return True, f"no expected/{obj} to compare against -- check skipped"

    r = run(["./container.sh", "make", obj])
    if r.returncode != 0:
        return False, f"candidate doesn't compile:\n{(r.stdout + r.stderr)[-500:]}"

    def text_size(rel):
        # REPO-RELATIVE path, always. container.sh mounts the repo at
        # /workspace, so an absolute host path simply does not exist inside
        # the container -- objdump prints nothing, the regex finds nothing,
        # and the check silently reports "skipped" while looking like it
        # ran. Cost me one full debug cycle.
        out = run(["./container.sh", "arm-none-eabi-objdump", "-h", rel]).stdout
        m = re.search(r"^\s*\d+\s+\.text\s+([0-9a-f]+)", out, re.MULTILINE)
        return int(m.group(1), 16) if m else None

    got = text_size(obj)
    want = text_size(f"expected/{obj}")
    if got is None or want is None:
        return True, "couldn't read a .text size -- check skipped"
    if got != want:
        return False, (f"{stem}.o .text is 0x{got:X}, retail is 0x{want:X} "
                       f"({got - want:+d} bytes). asm-differ compares instructions and "
                       f"cannot see this; the ROM would shift. Usually a literal pool "
                       f"with a different number of entries.")
    return True, f"{stem}.o .text 0x{got:X}, unchanged"


def finish_match(name: str) -> tuple[bool, str]:
    """The one non-negotiable check every match in this project requires:
    delete the now-unused fragment, rm -rf build/, make, confirm
    'mlss.gba: OK'. Returns (ok, detail). Caller (the Validator) is
    responsible for git add/commit on success and revert_to_clean() on
    failure -- kept separate so a dry-run caller can check without
    committing."""
    # Refuse BEFORE deleting anything if the fragment carries real
    # trailing content. The build would fail anyway -- but it would fail
    # with a 1500-character tail of a link command line, which is exactly
    # what made these undiagnosable the first time. Failing here says what
    # is actually wrong and what to do about it.
    trailing = fragment_trailing_bytes(name)
    if trailing is not None:
        return False, (
            f"REFUSING to delete asm/nonmatching/{name}.s: it carries real trailing "
            f"data after the function's literal pool, which would be LOST and would "
            f"break the ROM. This is usually a second, unlabeled function Luvdis "
            f"missed (see CLAUDE.md's trailing-data landmine). Split it out with its "
            f"own thumb_func_start first, then re-validate. Trailing content:\n{trailing}")
    # Cheap length gate before the expensive part. asm-differ compares
    # instructions and cannot see a function that assembles to a different
    # NUMBER of bytes, so it happily reports a match that shifts the whole
    # ROM. One objdump beats a four-minute from-scratch build for finding
    # that out. See object_size_matches().
    size_ok, size_detail = object_size_matches(name)
    if not size_ok:
        return False, f"length check failed before rebuilding: {size_detail}"

    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        frag.unlink()
    shutil.rmtree(REPO / "build", ignore_errors=True)
    r = run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        return False, (r.stdout[-1500:] + r.stderr[-500:])
    return True, "mlss.gba: OK"


def commit(name: str, message: str) -> bool:
    # Scoped to FACTORY_PATHS, not `git add -A` -- the unscoped version silently absorbed
    # whatever else happened to be sitting uncommitted in the shared working tree (found live:
    # four unrelated tool scripts got swept into an unrelated "Match ..." commit instead of
    # ever being committed under their own message). See revert_to_clean()'s docstring for the
    # matching bug on the revert side.
    #
    # The `git commit` itself ALSO needs the pathspec, not just the `git
    # add` -- `git add FACTORY_PATHS` only adds those paths, but a bare
    # `git commit -m message` with no pathspec commits the WHOLE INDEX,
    # including anything already staged from something unrelated (e.g. a
    # `git submodule add` run interactively mid-session). Confirmed live:
    # a `Match sub_81582C4` commit silently absorbed an in-progress
    # `.gitmodules`/submodule addition this way -- harmless that time (no
    # data lost, just an imprecise commit), but the same gap could just as
    # easily mix in something that matters. `git commit -- <pathspec>`
    # commits only changes under those paths and leaves anything else
    # sitting staged, exactly like `git add` already was scoped to do.
    run(["git", "add", *FACTORY_PATHS])
    r = run(["git", "commit", "-m", message, "--", *FACTORY_PATHS])
    return r.returncode == 0
