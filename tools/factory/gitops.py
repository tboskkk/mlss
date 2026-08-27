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
import functools
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


NEW_FORMAT_START_RE = re.compile(r"\b(ASM_FUNC|NONMATCH)\s*\(")


def _balanced_paren(text: str, open_idx: int) -> int:
    """Index just past the ')' matching the '(' at open_idx."""
    depth, i = 0, open_idx
    while i < len(text):
        if text[i] == "(":
            depth += 1
        elif text[i] == ")":
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    raise ValueError("unbalanced parens")


def find_new_format_guard(name: str):
    """Locate an ASM_FUNC(...)/NONMATCH(...){...}END_NONMATCH block for
    `name` (the sa2/tmc-style convention -- see CLAUDE.md's "NONMATCHING
    convention" section) in whichever src/*.c currently references it.
    Returns (c_path, full_match_text, kind) or (None, None, None); kind is
    "asm_func" or "nonmatch". Deliberately separate from find_guard_block()
    above rather than folded into it -- several other callers of that
    function (audit_instruments.py, fix_decl_conflicts.py, m2c_sweep.py,
    tier3.py, split_trailing.py, rescue_isolated_zeros.py) expect its exact
    2-tuple return and are only ever used against old-format files; changing
    its signature would touch all of them for no benefit. splice_into_else()
    and splice_candidate() below fall back to this when the old-format
    search finds nothing.

    Verified 0 false positives scanning every real name/file pair in the
    corpus (asm/nonmatching/*.s stems against every src/*.c)."""
    needle = f"asm/nonmatching/{name}.s"
    for c_path in sorted(SRC_DIR.glob("*.c")):
        text = c_path.read_text()
        if needle not in text:
            continue
        for m in NEW_FORMAT_START_RE.finditer(text):
            kind_word = m.group(1)
            paren_open = text.index("(", m.start())
            args_end = _balanced_paren(text, paren_open)
            if needle not in text[m.start():args_end]:
                continue
            if kind_word == "ASM_FUNC":
                semi = text.index(";", args_end)
                return c_path, text[m.start() : semi + 1], "asm_func"
            brace_open = text.index("{", args_end)
            depth, i = 0, brace_open
            while i < len(text):
                if text[i] == "{":
                    depth += 1
                elif text[i] == "}":
                    depth -= 1
                    if depth == 0:
                        break
                i += 1
            end_nm = text.index("END_NONMATCH", i)
            return c_path, text[m.start() : end_nm + len("END_NONMATCH")], "nonmatch"
    return None, None, None


def _new_format_decl(block: str, kind: str) -> str:
    """Pull the `decl` argument back out of an ASM_FUNC/NONMATCH block's own
    text -- both macros take (path, decl), and decl is the real, already-
    correct signature (from the batch-conversion tooling or a prior NONMATCH
    draft), which a fresh candidate should be checked against/reuse rather
    than trusting the candidate's own signature guess."""
    paren_open = block.index("(")
    args_end = _balanced_paren(block, paren_open)
    args = block[paren_open + 1 : args_end - 1]
    # args is `"path", decl` -- split on the first top-level comma after the
    # closing quote of the path string.
    path_end = args.index('"', args.index('"') + 1) + 1
    return args[path_end:].lstrip(", \n")


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
    different real problems.

    Falls back to the sa2/tmc-style ASM_FUNC/NONMATCH convention when the
    old-format search finds nothing: an ASM_FUNC(path, decl); call is
    REPLACED with NONMATCH(path, decl){candidate}END_NONMATCH (its first
    draft -- ASM_FUNC has no slot to hold one), and an existing
    NONMATCH(...){...}END_NONMATCH block has just its {...} draft body
    swapped for the new candidate's, keeping the established decl. See
    find_new_format_guard()'s docstring for why this is a separate code
    path rather than folded into find_guard_block()."""
    c_path, block = find_guard_block(name)
    if c_path is None:
        return _splice_into_else_new_format(name, body)
    body = _repair_body_decls(c_path, body)
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
    # Same repair splice_candidate() needs, for the same reason: under
    # NONMATCHING=1 the #else branch IS the definition, so a stale file-scope
    # `extern s32 <name>;` collides with it exactly as it does when the guard
    # is removed. Leaving it out here made werror_casts and every other
    # #else-path consumer see `X redeclared as different kind of symbol` and
    # blame the candidate.
    _repair_self_declaration(c_path, name, body)
    return c_path


def _splice_into_else_new_format(name: str, body: str) -> Path | None:
    c_path, block, kind = find_new_format_guard(name)
    if c_path is None:
        return None
    body = _repair_body_decls(c_path, body)
    text = c_path.read_text()
    body_braces = body[body.find("{") :] if "{" in body else "{\n}"
    if kind == "asm_func":
        decl = _new_format_decl(block, "asm_func")
        needle = f"asm/nonmatching/{name}.s"
        new_block = f'NONMATCH("{needle}", {decl})\n{body_braces.strip()}\nEND_NONMATCH'
    else:  # nonmatch -- swap just the existing draft body
        m = re.search(r"\{.*\}(?=\s*END_NONMATCH\s*$)", block, re.DOTALL)
        if not m:
            return None
        new_block = block[: m.start()] + body_braces.strip() + block[m.end() :]
    new_text = text.replace(block, new_block, 1)
    if new_text != text:
        c_path.write_text(new_text)
    _repair_self_declaration(c_path, name, body)
    return c_path


def splice_candidate(name: str, body: str) -> Path | None:
    """Replace the #ifndef NONMATCHING/#else/#endif guard for `name` with a
    plain function body (no guard -- this is the FINAL form, used once a
    candidate is believed to match). `body` should be the bare function
    definition text (e.g. 'void foo(void) {\\n}' or a full multi-line
    attempt from a permuter/LLM candidate).

    Falls back to the ASM_FUNC/NONMATCH convention when the old-format
    search finds nothing -- see splice_into_else()'s docstring."""
    c_path, block = find_guard_block(name)
    if c_path is None:
        return _splice_candidate_new_format(name, body)
    body = _repair_body_decls(c_path, body)
    text = c_path.read_text()
    new_text = text.replace(block, _dedupe_decls(text, block, body).strip() + "\n", 1)
    if new_text == text:
        return None
    c_path.write_text(new_text)
    _repair_self_declaration(c_path, name, body)
    return c_path


def _splice_candidate_new_format(name: str, body: str) -> Path | None:
    c_path, block, _kind = find_new_format_guard(name)
    if c_path is None:
        return None
    body = _repair_body_decls(c_path, body)
    text = c_path.read_text()
    new_text = text.replace(block, _dedupe_decls(text, block, body).strip() + "\n", 1)
    if new_text == text:
        return None
    c_path.write_text(new_text)
    _repair_self_declaration(c_path, name, body)
    return c_path


def _repair_body_decls(c_path: Path, body: str) -> str:
    """Fix declarations INSIDE the candidate that contradict the file.

    The fourth shape of the decl/defn conflict, and the one that blocked the
    promotion path (CLAUDE.md T.4). m2c declares a symbol DATA when the body
    takes its address:

        extern s32 sub_805DEB4;              <- in the CANDIDATE
        ...
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_805DEB4;

    while the destination FILE defines the same symbol as a function
    (`void sub_805DEB4(void *arg0) { ... }`, often already MATCHED). Splicing
    the two together is `X redeclared as different kind of symbol` and the
    whole object dies.

    This is distinct from _repair_self_declaration below, which fixes a stale
    declaration of the symbol being DEFINED, at FILE scope. Here the bad
    declaration is in the candidate and names some OTHER symbol.

    fix_decl_conflicts.repair() already implements exactly this -- derive a
    prototype from the file's own definition and cast the address-taken site,
    byte-neutral because the linker sets a function pointer's Thumb bit from
    the SYMBOL's type. It was only ever called from rescue_isolated_zeros.py,
    so nothing on the seed or validator path benefited. Doing it here means
    every consumer of both splice primitives does.

    Returns the (possibly repaired) body; never raises.
    """
    try:
        import fix_decl_conflicts
        repaired, _syms = fix_decl_conflicts.repair(body, c_path.read_text())
    except Exception:
        return body
    return repaired if repaired else body


def _repair_self_declaration(c_path: Path, name: str, body: str) -> bool:
    """Fix a file-scope `extern s32 <name>;` in the file we just DEFINED <name> in.

    Measured: 407 unmatched functions are declared as DATA at file scope inside
    the very file that would define them. declare_missing emits `extern s32 X;`
    when some SIBLING in that file takes `&X` (CLAUDE.md N.4's rule, which is
    right for a symbol the file only references) -- and then the candidate for
    X itself arrives and defines X as a function.

    The conflict does not exist in the tree at rest, which is why a static scan
    finds nothing and fix_decl_conflicts.py reported 0/0: while the guard is in
    place there is no definition. It materialises at SPLICE time, i.e. exactly
    when the validator measures. agbcc then says

        src/sub_806C1A8.c:185: `sub_806C8C0' redeclared as different kind of symbol

    the whole object fails to build, asm-differ has nothing to score, and the
    validator files a byte-exact candidate as "wasn't byte-identical" and sends
    it back to be searched again from nothing. Confirmed on sub_806C8C0, whose
    candidate is instruction-for-instruction identical to retail yet had been
    rejected on every attempt.

    So the repair belongs HERE, on the splice path, rather than in a sweep --
    every consumer of splice_candidate (validator, plain_score, rescue) hits
    the same wall.

    Byte-neutral by the argument in fix_decl_conflicts.repair_file_scope: the
    linker sets a function pointer's Thumb bit from the SYMBOL's type, not from
    how C declared it, so replacing the data declaration with a prototype and
    casting the address-taken site cannot change the emitted bytes. And
    finish_match() re-checks the whole ROM sha1, so if that reasoning were ever
    wrong the gate fails rather than something slipping through.
    """
    # Local import: fix_decl_conflicts imports this module.
    try:
        import fix_decl_conflicts
    except Exception:
        return False
    text = c_path.read_text()
    out, _proto = fix_decl_conflicts.repair_file_scope(text, name, body)
    if out is None or out == text:
        return False
    c_path.write_text(out)
    return True


_DECL_RE = re.compile(
    r"^\s*(?:extern\s+)?[A-Za-z_][\w \t\*]*?\b(\w+)\s*(?:\([^;]*\))?\s*;.*$")


def _dedupe_decls(text: str, block: str, body: str) -> str:
    """Drop declarations from `body` for symbols the destination file already
    declares at file scope.

    m2c emits its own declarations above each generated function, so two
    candidates landing in the SAME file routinely declare one symbol two
    different ways -- one calls it (`s32 sub_8079C70();`), the other takes its
    address (`extern s32 sub_8079C70;`). Splicing both is a hard
    `X redeclared as different kind of symbol`, and because it only appears
    once BOTH have been spliced it survives per-candidate checks and kills the
    batch: seen live failing a 16-candidate validation batch, then an 8, on
    `sub_8079C70` in src/sub_80796B8.c.

    Conservative on purpose: only lines before the body's first `{` are
    considered (that is where m2c puts them), the symbol must already be
    declared at file scope OUTSIDE the block being replaced, and anything
    that does not parse cleanly as a declaration is left alone.
    """
    rest = text.replace(block, "", 1)
    # file-scope declarations already present elsewhere in the file
    depth, scope = 0, []
    for ch in rest:
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth = max(0, depth - 1)
        elif depth == 0:
            scope.append(ch)
    existing = set(re.findall(r"(\w+)\s*[;(]", "".join(scope)))

    head_end = body.find("{")
    if head_end < 0:
        return body
    kept, dropped = [], False
    for line in body[:head_end].splitlines(keepends=True):
        m = _DECL_RE.match(line)
        if m and m.group(1) in existing:
            dropped = True
            continue
        kept.append(line)
    return ("".join(kept) + body[head_end:]) if dropped else body


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
    # _owning_source_stem(), NOT find_guard_block() alone. The validator
    # calls this AFTER splice_candidate() has removed the guard -- that is
    # what makes it a match -- so find_guard_block() returns None and the
    # stem silently fell back to the FUNCTION's name. For a function that
    # lives in someone else's file (sub_8028E14 in start_battle_8027AC4.c,
    # the normal case, since split_func.py appends) that deleted
    # build/src/sub_8028E14.o -- a no-op -- while asm-differ's -m rebuilt
    # build/src/start_battle_8027AC4.o with NONMATCHING=1 and nothing
    # removed it.
    #
    # What that costs: object_size_matches() then runs `make <obj>`, Make
    # sees an object newer than its source and declines to rebuild, and the
    # size check measures the NONMATCHING object -- where every `#else`
    # branch was compiled in place of the retail `.include`, so the object
    # is a fraction of its real size. It reports a "length mismatch" of
    # -4652 bytes and rejects a candidate that was fine. Measured: 13 of
    # the 25 candidates recovered by rescue_isolated_zeros.py were failed
    # this way, and the whole "asm-differ said match but from-scratch build
    # FAILED" pile in needs_human is suspect for the same reason. A clean
    # rebuild of all four files checked reproduced expected/ exactly, so
    # expected/ was never the problem.
    stem = _owning_source_stem(name) or name
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
    def _drop_built():
        """asm-differ's -m rebuilds this object with NONMATCHING=1, so it
        leaves a NONMATCHING object sitting in build/. Make decides what to
        rebuild from mtimes and cannot see that -DNONMATCHING is not a
        file, so the next PLAIN `make` LINKS that object into the ROM --
        one where every `#else` branch was compiled instead of the retail
        `.include`. The result is either an undefined reference (a callee
        whose definition only exists in the `#ifndef` branch) or a silently
        wrong ROM.

        This is the single most contaminating operation in the factory,
        because scoring runs constantly: after a scoring pass, a plain
        `make` reported `undefined reference to sub_807BF34` and a 5,304
        symbol layout shift against a git tree that was completely clean.
        Anything that then judges tree health by a plain `make` --
        score_sweep's startup check, tier3.ensure_extracted's post-
        extraction check -- reads that as "the repo is broken" and can
        revert perfectly good work.

        Deleting the object costs one recompile and removes the whole
        class."""
        for stale in ((REPO / "build" / "src" / f"{stem}.o"),
                      (REPO / "build" / "src" / f"{stem}.s")):
            try:
                stale.unlink()
            except FileNotFoundError:
                pass

    try:
        for attempt in (1, 2):
            r = run(["./container.sh", "asm-differ", "-mwo", name])
            out = ANSI_RE.sub("", r.stdout + r.stderr)
            m = SCORE_RE.search(out)
            if m:
                return int(m.group(1))
            if attempt == 1:
                # Most likely cause is a half-written build tree from a
                # concurrent step; force a clean rebuild of this object.
                _drop_built()
        return None
    finally:
        _drop_built()


ISO_DIR = REPO / ".claude" / "factory" / "iso"


@functools.lru_cache(maxsize=1)
def rom_symbols() -> frozenset[str]:
    """Every symbol that genuinely exists in the ROM: functions labelled in
    asm/, plus the hand-maintained symbol tables."""
    syms: set[str] = set()
    for p in (REPO / "asm").rglob("*.s"):
        try:
            syms |= set(re.findall(r"(?:thumb|arm)_func_start\s+(\S+)",
                                   p.read_text(errors="ignore")))
        except OSError:
            pass
    for p in (REPO / "tools" / "symbols").glob("*.txt"):
        try:
            syms |= set(re.findall(r"^\s*(\w+)\s*=",
                                   p.read_text(errors="ignore"), re.M))
        except OSError:
            pass
    # Functions already MATCHED no longer have a thumb_func_start anywhere in
    # asm/ -- step 7 of the workflow deletes their fragment -- so scanning
    # asm/ alone loses them exactly as they become most useful to callers.
    for p in SRC_DIR.rglob("*.c"):
        try:
            syms |= set(re.findall(r"^[A-Za-z_][\w \t\*]*?(\w+)\s*\([^;]*\)\s*\{",
                                   p.read_text(errors="ignore"), re.M))
        except OSError:
            pass
    return frozenset(syms)


def _file_scope(body: str) -> str:
    """`body` with every brace-delimited region removed.

    Declarations live at file scope; CALLS live inside function bodies. Without
    this, a naive "is it already declared here" scan matches the call site
    `sub_8082E1C(arg0, 4, 0, 0);` and concludes the callee needs no
    declaration -- which is precisely backwards, and made this whole helper
    silently emit nothing.
    """
    out, depth = [], 0
    for ch in body:
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth = max(0, depth - 1)
        elif depth == 0:
            out.append(ch)
    return "".join(out)


@functools.lru_cache(maxsize=1)
def _header_declared() -> frozenset[str]:
    try:
        text = (REPO / "include" / "common.h").read_text()
    except OSError:
        return frozenset()
    return frozenset(re.findall(r"\b(\w+)\s*\(", text)
                     + re.findall(r"\b(\w+)\s*;", text))


def rom_symbol_declarations(body: str) -> str:
    """Declarations for the ROM symbols `body` references but nothing declares.

    WHY THIS EXISTS. Without it, compiles_in_isolation() rejects C that is
    KNOWN CORRECT. Control test: the committed, byte-exact, ROM-reproducing C
    of three already-matched functions (sub_8060464, sub_8132DE4,
    sub_809D24C) all returned False -- because agbcc runs `-Wimplicit
    -Werror` and their callees (`sub_8082E1C`) and address-taken handlers
    (`&sub_80605A4`) are declared in their real source FILE, not in
    common.h. So the check was measuring "does this body happen to reference
    only header-declared symbols", not "is this body compilable".

    That matters well beyond this one predicate: CLAUDE.md section I's whole
    finding -- "613 seeds compile perfectly well alone", "16.7% of the pile"
    -- was measured with this function, so those are UNDERCOUNTS, and seeds
    the permuter could have searched were declined.

    Adding the declarations is not stacking the deck. They emit no code, the
    permuter's isolated copy can be given exactly the same ones, and
    declare_missing.py supplies them in the real source file -- so a pass
    here really does correspond to a pass in the real build.

    Shape is chosen from how the BODY uses the symbol, which is unambiguous;
    both wrong answers are themselves fatal (`X(...)` against a data
    declaration is "called object is not a function"; `&X` against a
    function declaration is a pointer type error). Deliberately not
    signature inference, which measured worse -- a K&R `int X();` declares
    no parameters and so cannot conflict with any call's argument list.
    """
    known, declared = rom_symbols(), _header_declared()
    # Symbols the body itself already declares or defines -- scanned at FILE
    # SCOPE only, so a call inside a function body is not mistaken for a
    # declaration of the thing being called.
    local = set(re.findall(r"(\w+)\s*[;(]", _file_scope(body)))
    out = []
    for sym in sorted(set(re.findall(r"\b(\w+)\b", body)) & known):
        if sym in declared or sym in local:
            continue
        if re.search(rf"&\s*{re.escape(sym)}\b", body):
            out.append(f"extern s32 {sym};")
        elif re.search(rf"\b{re.escape(sym)}\s*\(", body):
            out.append(f"int {sym}();")
    return ("/* ROM symbols this body references */\n" + "\n".join(out) + "\n\n"
            if out else "")


def compiles_in_isolation(name: str, body: str) -> bool:
    """Does this candidate compile ALONE, with no siblings in scope?

    THE PROBLEM THIS SOLVES. agbcc compiles a whole translation unit, and
    split_func.py appends every newly extracted function to an existing
    src/*.c -- so one file holds dozens of unproven `#else` drafts. Scoring
    function F in place therefore compiles all of them, and any sibling's
    broken draft fails the object. Every "does not compile" verdict this
    project has recorded was taken that way, so an unknown share of them
    were never about the function being judged.

    Measured on a random 30 of the 2,256-seed "does not compile" pile:
    **16.7% compile perfectly well alone** -- roughly 377 seeds misfiled as
    broken because a neighbour was.

    That matters beyond bookkeeping: decomp-permuter ALSO works on an
    isolated copy (tier2.ensure_isolated -> permute.py builds
    nonmatchings/<name>/ with its own single-function .c). So a seed that
    compiles alone is fully usable by the permuter no matter how broken its
    real file is -- we were declining seeds the search could have matched.

    Deliberately not under build/: the validator does `rm -rf build/` before
    every from-scratch check. Paths stay repo-relative because container.sh
    mounts the repo at /workspace and an absolute host path does not exist
    inside it.
    """
    if not body:
        return False
    ISO_DIR.mkdir(parents=True, exist_ok=True)
    src = ISO_DIR / f"{name}.c"
    pre = ISO_DIR / f"{name}.i"
    try:
        src.write_text('#include "global.h"\n#include "common.h"\n\n'
                       + rom_symbol_declarations(body) + body + "\n")
        rel_src = src.relative_to(REPO).as_posix()
        rel_pre = pre.relative_to(REPO).as_posix()
        # ONE container invocation, not two. Measured: this check ran at
        # 11 rows/min with the machine otherwise IDLE (load 3.7) and 7/min
        # with the full factory running -- so it was never CPU-bound, it was
        # paying podman's ~2.5s startup twice per function. Chaining cpp and
        # agbcc inside a single shell halves that, and it is the whole cost
        # of the check.
        #
        # Flags are the real Makefile CFLAGS, so a pass here means a pass in
        # the real build once the siblings are out of the way.
        script = (
            f"arm-none-eabi-cpp -I tools/agbcc/include -nostdinc -undef "
            f"-iquote include -Wno-trigraphs {rel_src} -o {rel_pre} && "
            f"tools/agbcc/bin/agbcc -O2 -mthumb-interwork -fno-common "
            f"-Wimplicit -Wparentheses -Werror -g -ffix-debug-line "
            f"-o /dev/null {rel_pre}"
        )
        return run(["./container.sh", "bash", "-c", script]).returncode == 0
    except OSError:
        return False
    finally:
        for f in (src, pre):
            try:
                f.unlink()
            except FileNotFoundError:
                pass


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
    # Everything after the last literal-pool definition -- or, when the
    # function has no literal pool at all, after its last real instruction
    # -- is "trailing".
    #
    # The fallback is not hypothetical, and its absence was a live hole:
    # `tail = ""` when pool_ends was empty meant this returned None, i.e.
    # "safe to delete", UNCONDITIONALLY for any fragment without a literal
    # pool. Measured across all 5,637 fragments: 745 have no pool, 101 of
    # those end in non-zero .byte data, and 78 of those were sitting in
    # tier2_ready -- one (sub_801B5A0) carrying 325 non-zero bytes. Any of
    # them matching would have had its fragment deleted, those bytes lost,
    # the from-scratch build fail, and the row filed under needs_human as a
    # "real anomaly" -- a correct match thrown away with a misleading note.
    pool_ends = [m.end() for m in re.finditer(r"^_\w+:\s*\.4byte.*$", text, re.MULTILINE)]
    if pool_ends:
        tail = text[pool_ends[-1]:]
    else:
        lines = text.splitlines()
        last_insn = -1
        for i, ln in enumerate(lines):
            stripped = ln.strip()
            if stripped and not stripped.startswith((".byte", "@")):
                last_insn = i
        tail = "\n".join(lines[last_insn + 1:])
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

    # Force the rebuild. `make <obj>` alone is not enough: Make decides
    # staleness from mtime and cannot see that -DNONMATCHING is not a file,
    # so an object left behind by an earlier NONMATCHING build is simply
    # declared up to date and measured as if it were real. Belt-and-braces
    # against the same bug fixed in asm_differ_score() above -- this check
    # is the one that turns a stale object into a wrong VERDICT, so it
    # should not depend on someone else having cleaned up.
    for stale in ((REPO / obj), (REPO / f"build/src/{stem}.s")):
        try:
            stale.unlink()
        except FileNotFoundError:
            pass
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


_UNDEF_DEBUG_LABEL_RE = re.compile(
    r"(build/src/\w+\.o):\(\.debug_info\+0x[0-9a-f]+\): undefined reference to `\.LI\d+_\d+'")

# Mirrors the Makefile's own per-object CFLAGS/CFLAGS_NODEBUG/CPPFLAGS exactly
# (Makefile lines ~31-51) -- kept in sync by hand since this is a narrow,
# rarely-hit retry path, not worth a shared-parsing dependency for.
_CPPFLAGS = ["-I", "tools/agbcc/include", "-nostdinc", "-undef", "-iquote", "include",
             "-Wno-trigraphs"]
_CFLAGS_NODEBUG = ["-O2", "-mthumb-interwork", "-fno-common", "-Wimplicit",
                   "-Wparentheses", "-Werror", "-ffix-debug-line"]


def _recompile_without_debug_info(bad_objects: list[str]) -> tuple[bool, str]:
    """Rebuild each `build/src/X.o` in `bad_objects` WITHOUT -g, in place.

    Exists for a failure the Makefile's own per-object fallback (the `note:
    X tripped agbcc's debug-line bug` you'll see in a normal build log)
    does NOT catch: that fallback only fires when the ASSEMBLER rejects the
    object. Found live on sub_80F110C.o (2026-08-27): the assembler
    accepts it fine, but the .debug_info it emits references a line label
    (`.LI1_83`) that was never actually defined -- so the object builds
    clean and only the LINKER catches it, at `mlss.elf` time, as an
    undefined reference. Same root bug family (agbcc's -g output is
    unreliable), different failure surface.

    Deliberately NOT a Makefile change: the per-object rule runs on EVERY
    build, including the live factory's validator every few minutes, and
    THE LAW's own worst landmine is "make can report OK against a broken
    tree" -- a mistake in a shared rule is invisible until something
    downstream breaks. This is scoped to finish_match()'s own retry only,
    same mechanism (CFLAGS_NODEBUG), zero change to the normal build path.
    Byte-neutral for the same reason the Makefile's existing fallback
    already is: -g only affects the .debug_info/.debug_line sections,
    never .text.
    """
    for obj_rel in bad_objects:
        stem = Path(obj_rel).stem  # e.g. sub_80F110C
        src_c = f"src/{stem}.c"
        if not (REPO / src_c).is_file():
            return False, f"can't map {obj_rel} back to a src/*.c file (expected {src_c})"
        script = (
            f"CPP=$(which arm-none-eabi-cpp) && "
            f"$CPP {' '.join(_CPPFLAGS)} {src_c} -o build/src/{stem}.i && "
            f"tools/agbcc/bin/agbcc build/src/{stem}.i {' '.join(_CFLAGS_NODEBUG)} "
            f"-o build/src/{stem}.s && "
            f'printf "\\t.text\\n\\t.align 2, 0\\n" >> build/src/{stem}.s && '
            f"arm-none-eabi-as -mcpu=arm7tdmi -mthumb-interwork -I . "
            f"-o build/src/{stem}.o build/src/{stem}.s"
        )
        r = run(["./container.sh", "bash", "-c", script])
        if r.returncode != 0:
            return False, f"recompiling {obj_rel} without -g failed: {r.stdout[-800:]}{r.stderr[-800:]}"
    return True, "recompiled without -g"


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
        combined = r.stdout + r.stderr
        bad_objects = sorted(set(_UNDEF_DEBUG_LABEL_RE.findall(combined)))
        if bad_objects:
            # See _recompile_without_debug_info's docstring -- a DIFFERENT
            # function's undefined debug-line reference, unrelated to
            # whether `name`'s own candidate is right. Retry once.
            ok, detail = _recompile_without_debug_info(bad_objects)
            if ok:
                r2 = run(["./container.sh", "make"])
                if "mlss.gba: OK" in r2.stdout:
                    return True, (f"mlss.gba: OK (after recompiling {', '.join(bad_objects)} "
                                   f"without -g -- see _recompile_without_debug_info)")
                return False, (f"still failed after -g retry on {bad_objects}: "
                                f"{r2.stdout[-1200:]}{r2.stderr[-300:]}")
            return False, f"debug-info retry itself failed: {detail}"
        return False, (r.stdout[-1500:] + r.stderr[-500:])
    return True, "mlss.gba: OK"


def commit(name: str, message: str, paths: list[str | Path] | None = None) -> bool:
    # Scoped to FACTORY_PATHS by default, not `git add -A` -- the unscoped version silently
    # absorbed whatever else happened to be sitting uncommitted in the shared working tree
    # (found live: four unrelated tool scripts got swept into an unrelated "Match ..." commit
    # instead of ever being committed under their own message). See revert_to_clean()'s
    # docstring for the matching bug on the revert side.
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
    #
    # `paths`, when given, narrows BOTH the add and the commit pathspec to
    # exactly the files this one match touched (the spliced src/*.c plus the
    # now-deleted asm/nonmatching/<name>.s), rather than the whole
    # asm/+src/ tree FACTORY_PATHS covers. Still not a live bug in the
    # normal one-function-at-a-time validator loop -- FACTORY_PATHS was
    # never wrong there, since nothing else is ever dirty under asm/ or
    # src/ at that point. It bit for real the one time multiple candidates
    # were spliced and committed in a tight loop outside that loop (three
    # in-context-search matches landed in one commit, 2026-08-27), which is
    # exactly the shape a future batch promoter could hit again -- so any
    # caller processing more than one candidate before returning to the
    # normal one-at-a-time loop should pass `paths` explicitly.
    scope = [str(p) for p in paths] if paths else FACTORY_PATHS
    run(["git", "add", *scope])
    r = run(["git", "commit", "-m", message, "--", *scope])
    return r.returncode == 0
