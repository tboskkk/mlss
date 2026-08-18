#!/usr/bin/env bash
# tools/qwen_pilot.sh — drives the local Qwen3-Coder agent through this
# project's decomp workflow continuously and mostly unattended.
#
# Usage:
#   ./tools/qwen_pilot.sh [max_iterations]
#
# max_iterations (default 8): how many functions to attempt in this one
# invocation, then stop -- not "run forever". Just run it again to keep
# going; state (the persistent worktree, the mailbox) carries over.
#
# Requires: llama-server already running (qwen-serve), qwen-code on PATH.
#
# --- Design, and why it's shaped this way ---------------------------------
#
# Auto-commits ONLY on a verified, byte-exact match (plain `make`, guard
# fully removed, hash check passes) -- the one case that's objectively
# decidable, not a judgment call. Everything else (in-progress attempts,
# stuck functions) gets logged and left for a human or Claude to review
# rather than the script guessing whether a non-matching attempt is worth
# keeping. This mirrors the policy used by hand all session: real matches
# get auto-committed, anything else gets surfaced, never silently kept or
# silently discarded without a trace.
#
# Never trusts the model's own self-report of success -- every claimed
# result is independently re-verified against real repo/build state before
# being treated as true. Found the hard way: a model can truthfully report
# "step 2 succeeded" while having skipped step 1 entirely, if a rigid
# prompt gave it no room to recover from step 1 failing. This script's
# prompts explicitly permit recovery/retry instead of forbidding it.
#
# A fresh worktree has no build/ output (mlss.map doesn't exist yet), so
# split_func.py fails on first use -- see CLAUDE.md's landmines. This
# script keeps ONE persistent worktree across iterations specifically to
# avoid paying that rebuild cost every single function.
set -uo pipefail

cd "$(dirname "$0")/.."
REPO_ROOT="$PWD"
WORKTREE="$REPO_ROOT/.claude/worktrees/qwen-autopilot"
BRANCH="worktree-qwen-autopilot"
MAILBOX="$HOME/Desktop/ai-training/qwen-coder/mailbox"
LOG_DIR="$REPO_ROOT/.claude/qwen-autopilot-logs"
MAX_ITER="${1:-8}"
PER_FUNCTION_TIMEOUT="${QWEN_PILOT_TIMEOUT:-1200}"  # 20 min -- CPU inference is genuinely slow, don't cut it off early

mkdir -p "$MAILBOX/requests" "$MAILBOX/responses" "$MAILBOX/archive" "$LOG_DIR"

log() { echo "[$(date +%H:%M:%S)] $*"; }

# --- One-time worktree setup ------------------------------------------------
if [[ ! -d "$WORKTREE" ]]; then
  log "creating persistent autopilot worktree"
  git worktree add "$WORKTREE" -b "$BRANCH" master
  # Submodules are per-worktree too, same deal as mlss.map -- a fresh
  # worktree doesn't inherit tools/decomp-permuter's checkout. Found the
  # hard way: Qwen correctly self-recovered from this one on its own
  # (cloned it, moved on), but it's cheap to just not make it re-discover
  # this every time.
  ( cd "$WORKTREE" && git submodule update --init tools/decomp-permuter )
  ( cd "$WORKTREE" && ./container.sh make )
else
  log "reusing existing autopilot worktree, syncing with master"
  ( cd "$WORKTREE" && git merge --ff-only master 2>&1 ) || {
    log "!! autopilot branch has diverged from master and can't fast-forward -- fix by hand before rerunning"
    exit 1
  }
fi

# Files known to need tools/permute.py's isolation (broken #error siblings
# block a plain NONMATCHING=1 build of the whole translation unit) -- see
# CLAUDE.md landmines. Told to the model explicitly rather than making it
# discover this itself.
NEEDS_PERMUTE_FILES="heap.s option_screens.s"

pick_target_file() {
  # Smallest remaining raw file first, skipping known-problematic ones for
  # now (giant files needing dedicated attention, not autopilot fodder):
  # text08057568.s (5000+, the main blob), text0801A548.s (462, untested at
  # this scale), text08000000.s (front function drags in the 6k-line
  # unidentified crt0/m4a preamble -- see CLAUDE.md, not safe to touch
  # blind). progress.py sorts its list largest-first, so this has to
  # collect every eligible candidate and pick the minimum, not just take
  # the first line that matches.
  python3 tools/progress.py 2>/dev/null | awk '
    /raw functions remaining/{found=1; next}
    found && /^$/{exit}
    found && $2 !~ /text08057568\.s|text0801A548\.s|text08000000\.s/ {
      sub(/^asm\//, "", $2); print $1, $2
    }
  ' | sort -n | head -1 | awk '{print $2}'
}

for ((i=1; i<=MAX_ITER; i++)); do
  log "=== iteration $i/$MAX_ITER ==="
  cd "$WORKTREE"

  # Worktree must be clean at the start of every iteration -- see the
  # end-of-loop reset logic. If it's dirty here, something upstream didn't
  # clean up correctly; stop rather than build on an unknown state.
  if [[ -n "$(git status --short)" ]]; then
    log "!! worktree is dirty at start of iteration -- stopping rather than guessing. Investigate $WORKTREE by hand."
    exit 1
  fi

  TARGET_FILE=$(pick_target_file)
  if [[ -z "$TARGET_FILE" ]]; then
    log "no safe target file found (either everything's done or only the excluded big files remain) -- stopping"
    break
  fi
  TARGET_FUNC=$(grep -m1 -oP 'thumb_func_start \K\S+' "asm/$TARGET_FILE")
  log "target: $TARGET_FUNC in $TARGET_FILE"

  NEEDS_PERMUTE=""
  for f in $NEEDS_PERMUTE_FILES; do
    [[ "$TARGET_FILE" == "$f" ]] && NEEDS_PERMUTE=1
  done

  # Pick up any answered mailbox request for this exact function from a
  # previous stuck attempt.
  EXTRA_CONTEXT=""
  RESPONSE_FILE="$MAILBOX/responses/${TARGET_FUNC}.md"
  if [[ -f "$RESPONSE_FILE" ]]; then
    log "found a prior answered help request for $TARGET_FUNC -- including it"
    EXTRA_CONTEXT="

IMPORTANT: you asked for help with this exact function before. Here is the answer:
$(cat "$RESPONSE_FILE")"
    mv "$RESPONSE_FILE" "$MAILBOX/archive/"
  fi

  PROMPT="This repo is already built (mlss.gba: OK confirmed). Do the full decomp workflow for exactly ONE function: $TARGET_FUNC in asm/$TARGET_FILE.

1. ./container.sh tools/split_func.py $TARGET_FUNC
2. ./container.sh make -- must still say mlss.gba: OK. If it does NOT, explain what actually happened rather than guessing, and stop -- do not attempt to fix the extraction tool.
3. Read asm/nonmatching/${TARGET_FUNC}.s carefully to understand what the function does (this file is raw assembly reference only -- never edit it directly, it's not where your C goes). split_func.py's own output above told you which src/*.c file it appended a stub to; open THAT file, find the #ifndef NONMATCHING / #else / #error block for $TARGET_FUNC in it, and replace the #error line with real C. Reuse existing types/structs/prototypes from include/common.h and relevant src/*.h wherever the function touches something already named -- grep before inventing new declarations.
$( [[ -n "$NEEDS_PERMUTE" ]] && echo "4. This file has other not-started functions with real #error placeholders in it, so a plain NONMATCHING=1 build of the whole file will NOT work. Use ./container.sh tools/permute.py $TARGET_FUNC to isolate just this function, then check the score/diff it reports." || echo "4. Iterate with ./container.sh asm-differ -mwo $TARGET_FUNC." )
5. If you reach an exact match (score 0 / 100%): remove the #ifndef NONMATCHING/#else/#endif wrapper, delete asm/nonmatching/${TARGET_FUNC}.s, run a PLAIN ./container.sh make (no NONMATCHING=1) and confirm mlss.gba: OK one more time -- that is the real proof, nothing else counts. Then git add -A && git commit -m \"Match $TARGET_FUNC\" (no attribution trailers).
6. If you do NOT reach an exact match after a genuine effort: leave the guard in place, confirm a plain ./container.sh make still says mlss.gba: OK, do NOT commit, and write a clear description of what you tried and exactly where you got stuck to $MAILBOX/requests/${TARGET_FUNC}.md (what the remaining diff looks like, what you already tried, what specifically would help) -- then stop. Do not loop trying the same thing repeatedly.

If any step fails with an error you did not expect, explain what the error actually said rather than guessing or silently skipping ahead to a later step.$EXTRA_CONTEXT"

  ITER_LOG="$LOG_DIR/$(date +%Y%m%d-%H%M%S)-${TARGET_FUNC}.jsonl"
  log "invoking qwen-code (timeout ${PER_FUNCTION_TIMEOUT}s, log: $ITER_LOG)"
  timeout "$PER_FUNCTION_TIMEOUT" ~/.local/bin/qwen-code --bare --dangerously-skip-permissions \
    --output-format stream-json --verbose -p "$PROMPT" \
    > "$ITER_LOG" 2>&1
  QWEN_EXIT=$?
  log "qwen-code exited with code $QWEN_EXIT"

  # --- Independent verification -- never trust the model's self-report ----
  MATCHED=0
  if git status --short | grep -q .; then
    # Something changed. Is it a real, clean match?
    BUILD_OUT=$(./container.sh make 2>&1)
    if echo "$BUILD_OUT" | grep -q "mlss.gba: OK"; then
      # Build's clean. Was the guard actually removed for our target (a
      # real match), or is this just an in-progress attempt still guarded?
      if ! grep -rq "asm/nonmatching/${TARGET_FUNC}\.s" src/*.c 2>/dev/null; then
        MATCHED=1
      fi
    fi
  fi

  if [[ "$MATCHED" == "1" ]]; then
    log "verified match: $TARGET_FUNC -- merging to master"
    cd "$REPO_ROOT"
    git merge --no-ff -m "Merge autopilot match: $TARGET_FUNC" "$BRANCH" 2>&1
    ./container.sh make 2>&1 | tail -3
    cd "$WORKTREE"
    git merge --ff-only master 2>&1
    log "done: $TARGET_FUNC MATCHED and merged"
  else
    log "no verified match for $TARGET_FUNC this attempt -- resetting worktree, leaving any mailbox request in place"
    cd "$WORKTREE"
    git reset --hard HEAD 2>&1 >/dev/null
    git clean -fd 2>&1 >/dev/null
    if [[ -f "$MAILBOX/requests/${TARGET_FUNC}.md" ]]; then
      log "  -> a help request was written for $TARGET_FUNC -- check $MAILBOX/requests/"
    fi
  fi
done

log "=== autopilot run finished ($MAX_ITER iterations attempted) ==="
log "progress snapshot:"
cd "$REPO_ROOT" && python3 tools/progress.py 2>&1 | head -8
PENDING=$(ls "$MAILBOX/requests/" 2>/dev/null | wc -l)
if [[ "$PENDING" -gt 0 ]]; then
  log "$PENDING pending help request(s) in $MAILBOX/requests/ -- needs review"
fi
