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

import re
import shutil
import subprocess
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent.parent
SRC_DIR = REPO / "src"


def run(cmd, **kw):
    return subprocess.run(cmd, cwd=REPO, capture_output=True, text=True, **kw)


def revert_to_clean():
    """Undo every tracked modification and delete every untracked file.
    Learned the hard way (see CLAUDE.md / session log): reverting only the
    specific files one failure path happens to know about is not enough --
    split_func.py also touches splits.yaml, ld_script.ld, and shrunk/split
    asm blobs, and a partial revert leaves the tree internally inconsistent
    enough to corrupt whatever gets attempted next. Only a full revert to
    git HEAD is actually safe.

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
    run(["git", "checkout", "--", "."])
    run(["git", "clean", "-fd", "asm/", "src/"])
    shutil.rmtree(REPO / "build", ignore_errors=True)
    run(["./container.sh", "make"])


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
    if new_text == text:
        return None
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


def asm_differ_matches(name: str) -> bool:
    """True only if every comparable line of `asm-differ -mwo <name>`'s two
    columns (TARGET / CURRENT) are identical. A cheap sanity check before
    the expensive from-scratch rebuild -- catches an obviously-wrong
    candidate without paying for a full rm -rf build/."""
    r = run(["./container.sh", "asm-differ", "-mwo", name])
    out = r.stdout + r.stderr
    lines = [l.strip() for l in out.splitlines() if l.strip()]
    target_lines = [l for l in lines if l and l[0].isdigit()]
    if not target_lines:
        return False
    for l in target_lines:
        halves = re.split(r"\s{2,}", l)
        if len(halves) == 2 and halves[0] != halves[1]:
            return False
    return True


def finish_match(name: str) -> tuple[bool, str]:
    """The one non-negotiable check every match in this project requires:
    delete the now-unused fragment, rm -rf build/, make, confirm
    'mlss.gba: OK'. Returns (ok, detail). Caller (the Validator) is
    responsible for git add/commit on success and revert_to_clean() on
    failure -- kept separate so a dry-run caller can check without
    committing."""
    frag = REPO / "asm" / "nonmatching" / f"{name}.s"
    if frag.exists():
        frag.unlink()
    shutil.rmtree(REPO / "build", ignore_errors=True)
    r = run(["./container.sh", "make"])
    if "mlss.gba: OK" not in r.stdout:
        return False, (r.stdout[-1500:] + r.stderr[-500:])
    return True, "mlss.gba: OK"


def commit(name: str, message: str) -> bool:
    run(["git", "add", "-A"])
    r = run(["git", "commit", "-m", message])
    return r.returncode == 0
