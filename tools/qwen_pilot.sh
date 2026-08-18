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
# The orchestrator does every MECHANICAL step itself (extraction, the
# post-extraction build check, refreshing expected/, detecting whether
# permute.py isolation is needed) rather than delegating them to the
# model. Found by actually reading a real run's full transcript: a huge
# fraction of one attempt's 20-minute timeout was spent not on genuine
# reasoning but on the model re-discovering things a deterministic script
# already knows for free -- which file split_func.py appends to, whether
# the file needs permute.py, whether an extraction from a *previous*,
# timed-out attempt on the same function already happened. Only the parts
# that actually need judgment (reading assembly, writing C, deciding when
# something's a real match) get delegated to the model at all now.
#
# Preserves real in-progress work across a timeout instead of discarding
# it. The old version reset the worktree to scratch on every non-match,
# including a plain timeout -- so a second attempt on a hard function
# started from zero every single time, paying the same rediscovery cost
# again. Now: if a timeout leaves behind a real (non-#error), still-
# guarded, cleanly-building C attempt, it's checkpointed as a WIP commit
# on the autopilot branch (never merged to master) and the *next*
# invocation on that same function is told a previous attempt already
# exists and to continue refining it rather than start over.
#
# Auto-commits a real function match ONLY on a from-scratch-verified,
# byte-exact result -- the one case that's objectively decidable, not a
# judgment call. Never trusts the model's own self-report: every claimed
# result is independently re-verified against real repo/build state,
# including comparing git HEAD before/after (a model can correctly
# self-commit and this script used to miss it) and always rebuilding from
# nothing before deciding MATCHED (a plain `make` can report `mlss.gba:
# OK` against a stale cached object even when the real result is broken --
# see CLAUDE.md's landmines; this bit a real run for real).
#
# A fresh worktree has no build/ output or decomp-permuter submodule
# checkout yet -- see CLAUDE.md's landmines. This script keeps ONE
# persistent worktree across iterations specifically to avoid paying
# those setup costs every single function.
set -uo pipefail

cd "$(dirname "$0")/.."
REPO_ROOT="$PWD"
WORKTREE="$REPO_ROOT/.claude/worktrees/qwen-autopilot"
BRANCH="worktree-qwen-autopilot"
MAILBOX="$HOME/Desktop/ai-training/qwen-coder/mailbox"
LOG_DIR="$REPO_ROOT/.claude/qwen-autopilot-logs"
MAX_ITER="${1:-8}"
PER_FUNCTION_TIMEOUT="${QWEN_PILOT_TIMEOUT:-1200}"  # 20 min -- CPU inference is genuinely slow, don't cut it off early
MAX_RETRIES_PER_FUNC="${QWEN_PILOT_MAX_RETRIES:-3}" # after this many unsuccessful attempts on the same function, auto-escalate to the mailbox and move on rather than burn the whole run's budget on one hard function

mkdir -p "$MAILBOX/requests" "$MAILBOX/responses" "$MAILBOX/archive" "$LOG_DIR"

log() { echo "[$(date +%H:%M:%S)] $*"; }

# --- One-time worktree setup ------------------------------------------------
if [[ ! -d "$WORKTREE" ]]; then
  log "creating persistent autopilot worktree"
  git worktree add "$WORKTREE" -b "$BRANCH" master
  ( cd "$WORKTREE" && git submodule update --init tools/decomp-permuter )
  ( cd "$WORKTREE" && ./container.sh make )
else
  log "reusing existing autopilot worktree, syncing with master"
  ( cd "$WORKTREE" && git merge --ff-only master 2>&1 ) || {
    log "!! autopilot branch has diverged from master and can't fast-forward -- fix by hand before rerunning"
    exit 1
  }
fi

cd "$WORKTREE"

pick_target_file() {
  # Smallest remaining raw file first, skipping known-problematic ones for
  # now (giant files needing dedicated attention, not autopilot fodder):
  # text08057568.s (5000+, the main blob), text0801A548.s (462, untested at
  # this scale), text08000000.s (front function drags in the 6k-line
  # unidentified crt0/m4a preamble -- see CLAUDE.md, not safe to touch
  # blind). progress.py sorts its list largest-first, so this has to
  # collect every eligible candidate and pick the minimum, not just take
  # the first line that matches. Skips anything named in $SKIP_FILES
  # (space-separated), used to move past a function that's exhausted its
  # retry budget for this run.
  python3 tools/progress.py 2>/dev/null | awk -v skip="$SKIP_FILES" '
    BEGIN { n = split(skip, arr, " "); for (i = 1; i <= n; i++) skipset[arr[i]] = 1 }
    /raw functions remaining/{found=1; next}
    found && /^$/{exit}
    found && $2 !~ /text08057568\.s|text0801A548\.s|text08000000\.s/ {
      sub(/^asm\//, "", $2)
      if (!($2 in skipset)) print $1, $2
    }
  ' | sort -n | head -1 | awk '{print $2}'
}

SKIP_FILES=""
ESCALATED_FUNCS=""  # functions that hit MAX_RETRIES_PER_FUNC this run -- don't auto-continue them even if their WIP checkpoint is still at the branch tip
FUNC_RETRY_COUNT=""  # "func1:count1 func2:count2 ..." poor-man's assoc array, bash 3-compatible

get_retry_count() {
  for pair in $FUNC_RETRY_COUNT; do
    if [[ "${pair%%:*}" == "$1" ]]; then echo "${pair##*:}"; return; fi
  done
  echo 0
}

bump_retry_count() {
  local name="$1" found=0 new=""
  for pair in $FUNC_RETRY_COUNT; do
    if [[ "${pair%%:*}" == "$name" ]]; then
      new="$new $name:$(( ${pair##*:} + 1 ))"
      found=1
    else
      new="$new $pair"
    fi
  done
  [[ "$found" == "0" ]] && new="$new $name:1"
  FUNC_RETRY_COUNT="$new"
}

for ((i=1; i<=MAX_ITER; i++)); do
  log "=== iteration $i/$MAX_ITER ==="
  cd "$WORKTREE"

  # Worktree must be clean (or exactly one WIP checkpoint commit ahead of
  # where a genuine match/reset would leave it) at the start of every
  # iteration. If it's dirty with *uncommitted* changes here, something
  # upstream didn't clean up correctly; stop rather than build on an
  # unknown state.
  if [[ -n "$(git status --short)" ]]; then
    log "!! worktree is dirty at start of iteration -- stopping rather than guessing. Investigate $WORKTREE by hand."
    exit 1
  fi

  # Is there a WIP checkpoint already sitting on this branch (a previous
  # attempt left mid-flight by an earlier iteration's timeout -- either
  # "extracted, not yet attempted" or "in-progress, not yet matching")? If
  # so, that's the target: pick up exactly where it left off. Deciding
  # this from the commit message + a direct check of where the include
  # actually is (not "does the raw .s file's front line still look
  # unextracted") -- the raw file's front line always moves on to the
  # *next* different function the moment extraction happens, so checking
  # it can never actually recognize its own prior WIP commit.
  TARGET_FUNC=""
  IS_CONTINUATION=0
  WIP_RE='^WIP: ([A-Za-z0-9_]+) '
  LAST_SUBJECT=$(git log -1 --format=%s 2>/dev/null || true)
  if [[ "$LAST_SUBJECT" =~ $WIP_RE ]]; then
    CANDIDATE="${BASH_REMATCH[1]}"
    CANDIDATE_DEST=$(grep -l "asm/nonmatching/${CANDIDATE}\.s" src/*.c 2>/dev/null | head -1)
    # Don't auto-continue a function that already burned its retry budget
    # and got escalated -- its WIP commit is deliberately left in place as
    # a handoff for a human/Claude to read, not something to keep hammering.
    if [[ -n "$CANDIDATE_DEST" ]] && [[ " $ESCALATED_FUNCS " != *" $CANDIDATE "* ]]; then
      TARGET_FUNC="$CANDIDATE"
      DEST_FILE="$CANDIDATE_DEST"
      IS_CONTINUATION=1
    fi
  fi

  if [[ -z "$TARGET_FUNC" ]]; then
    TARGET_FILE=$(pick_target_file)
    if [[ -z "$TARGET_FILE" ]]; then
      log "no safe target file found (either everything's done or only the excluded/skipped files remain) -- stopping"
      break
    fi
    TARGET_FUNC=$(grep -m1 -oP 'thumb_func_start \K\S+' "asm/$TARGET_FILE" 2>/dev/null || true)
    if [[ -z "$TARGET_FUNC" ]]; then
      log "!! couldn't find a thumb_func_start in asm/$TARGET_FILE -- stopping for manual review"
      exit 1
    fi
  fi

  RETRY_COUNT=$(get_retry_count "$TARGET_FUNC")
  if [[ "$RETRY_COUNT" -ge "$MAX_RETRIES_PER_FUNC" ]]; then
    log "$TARGET_FUNC has failed $RETRY_COUNT times already -- auto-escalating to mailbox and moving on"
    # Deliberately NOT resetting: if a real, clean-building WIP checkpoint
    # exists (IS_CONTINUATION=1 got this far, meaning it survived every
    # prior timeout), it stays at the tip of the branch as a genuine
    # handoff for a human or Claude to read and finish, rather than
    # discarding however many attempts' worth of real progress just because
    # the retry budget ran out. It doesn't block anything else: the
    # function is already out of its raw asm file, so front-to-back
    # extraction naturally moves on to whatever's next there. Only the
    # continuation-detector needs to know not to keep re-selecting it,
    # which ESCALATED_FUNCS (checked above) handles.
    if [[ ! -f "$MAILBOX/requests/${TARGET_FUNC}.md" ]]; then
      cat > "$MAILBOX/requests/${TARGET_FUNC}.md" <<EOF
Auto-escalated by qwen_pilot.sh after $RETRY_COUNT unsuccessful attempts (timeouts or genuine non-matches), not written by the model itself. Check .claude/qwen-autopilot-logs/ for this function's transcripts to see what was actually tried.
$( [[ "$IS_CONTINUATION" == "1" ]] && echo "A real, clean-building (but not yet matching) attempt survived every attempt and is preserved at the tip of the ${BRANCH} branch, in ${DEST_FILE:-the destination file} -- read that before starting over, it may just need finishing rather than redoing." || echo "No in-progress C attempt survived to hand off -- every attempt either timed out before producing anything salvageable, or was a genuine non-match reset back to a clean state." )
EOF
    fi
    ESCALATED_FUNCS="$ESCALATED_FUNCS $TARGET_FUNC"
    unset TARGET_FUNC
    continue
  fi

  # --- Orchestrator does extraction itself (deterministic, no reason to
  # delegate a mechanical step to the model) -- unless this is a WIP
  # continuation, where it's already done. ------------------------------
  if [[ "$IS_CONTINUATION" == "0" ]]; then
    # Refresh the build before extracting. mlss.map -- which split_func.py's
    # "already claimed" check trusts to tell raw asm from already-extracted
    # C -- is a gitignored build artifact, so it silently goes stale
    # relative to the real source tree after ANY git reset/clean (neither
    # touches gitignored files). Hit this for real: a worktree reset left a
    # map still describing a function as living in src/heap.o from a run
    # that had since been reset away at the source level, and split_func.py
    # refused to extract it with an "already claimed" false positive. A
    # plain (non -rm -rf) make is enough here -- this is a genuine source
    # content change with real new mtimes, not the NONMATCHING-flag
    # staleness case Make can't see (see CLAUDE.md's landmines).
    ./container.sh make >/dev/null 2>&1
    log "extracting $TARGET_FUNC from $TARGET_FILE"
    EXTRACT_OUT=$(./container.sh tools/split_func.py "$TARGET_FUNC" 2>&1)
    if ! echo "$EXTRACT_OUT" | grep -q '^done\.'; then
      log "!! extraction failed unexpectedly for $TARGET_FUNC -- stopping for manual review:"
      echo "$EXTRACT_OUT"
      exit 1
    fi
    DEST_FILE=$(echo "$EXTRACT_OUT" | grep -oP -- '-> \Ksrc/\S+\.c(?=\s)' | head -1)
    if [[ -z "$DEST_FILE" ]]; then
      log "!! couldn't parse destination file from split_func.py output -- stopping for manual review:"
      echo "$EXTRACT_OUT"
      exit 1
    fi
    BUILD_OUT=$(./container.sh make 2>&1)
    if ! echo "$BUILD_OUT" | grep -q "mlss.gba: OK"; then
      log "!! plain build failed right after extracting $TARGET_FUNC -- something's wrong with the extraction, not the C (none written yet). Stopping for manual review."
      exit 1
    fi
    # Per CLAUDE.md: refresh expected/ right after extraction too, not just
    # after a match -- a stale one predating the extraction makes
    # asm-differ compare against the wrong object.
    rm -rf expected && mkdir expected && cp -r build expected/
    git add -A && git commit -m "WIP: $TARGET_FUNC (autopilot: extracted, not yet attempted)" >/dev/null
    log "extracted OK -> $DEST_FILE"
  else
    RETRY_COUNT=$(get_retry_count "$TARGET_FUNC")
    log "continuing a previous attempt on $TARGET_FUNC (retry $((RETRY_COUNT+1))/$MAX_RETRIES_PER_FUNC) -- already extracted, in $DEST_FILE"
  fi

  # Does the whole translation unit compile under NONMATCHING=1 as one
  # unit, or are there other not-started #error siblings blocking it (see
  # CLAUDE.md's title_screen.c / heap.c landmines)? Tested for real
  # instead of relying on a hardcoded file list, so this generalizes to
  # files nobody's explicitly flagged yet.
  rm -f "build/${DEST_FILE%.c}.o" "build/${DEST_FILE%.c}.i" "build/${DEST_FILE%.c}.s" 2>/dev/null
  NEEDS_PERMUTE=""
  # Capture into a variable first, then grep it separately -- with
  # pipefail (set at the top of this script) a direct
  # `if cmd | tail | grep -q; then` is broken exactly when it matters
  # here: `make` legitimately exiting non-zero on a real #error (the
  # signal this check exists to catch) poisons the whole pipeline's exit
  # status ahead of grep's own success, so the `if` reads as false even
  # when grep DID match. Verified this is real, not theoretical: it's why
  # NEEDS_PERMUTE never got set for heap.c despite its #error siblings
  # being right there -- Qwen was told to use plain asm-differ on a file
  # that genuinely needs permute.py, and burned two 20-minute timeouts
  # hitting the same compile failure asm-differ can't work around.
  PERMUTE_TEST_OUT=$(./container.sh make NONMATCHING=1 2>&1 | tail -30)
  if echo "$PERMUTE_TEST_OUT" | grep -qE "^agbcc:|Error|error:"; then
    NEEDS_PERMUTE=1
  fi
  rm -f "build/${DEST_FILE%.c}.o" "build/${DEST_FILE%.c}.i" "build/${DEST_FILE%.c}.s" 2>/dev/null

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

  HAS_REAL_ATTEMPT=0
  if [[ "$IS_CONTINUATION" == "1" ]] && ! grep -q "#error \"TODO: write $TARGET_FUNC to match" "$DEST_FILE" 2>/dev/null; then
    HAS_REAL_ATTEMPT=1
  fi

  if [[ "$HAS_REAL_ATTEMPT" == "1" ]]; then
    STAGE_TEXT="A PREVIOUS attempt on $TARGET_FUNC ran out of time. It's already extracted (asm/nonmatching/${TARGET_FUNC}.s, read-only reference) and $DEST_FILE already has a real C attempt in its #ifndef NONMATCHING / #else block (not the #error placeholder anymore) -- READ IT FIRST. Continue refining that existing attempt rather than starting over from scratch, unless you're confident it's fundamentally wrong, in which case explain why before rewriting it."
  else
    STAGE_TEXT="The function $TARGET_FUNC has ALREADY been extracted for you: the raw assembly reference is at asm/nonmatching/${TARGET_FUNC}.s (read-only, never edit it), and the C goes in $DEST_FILE, in its #ifndef NONMATCHING / #else / #error block -- replace the #error line with real C. Do not run split_func.py again, it's already done."
  fi

  PROMPT="This repo is already built (mlss.gba: OK confirmed). $STAGE_TEXT

Reuse existing types/structs/prototypes from include/common.h and relevant src/*.h wherever the function touches something already named -- grep before inventing new declarations.

$( [[ -n "$NEEDS_PERMUTE" ]] && echo "This translation unit does NOT compile under NONMATCHING=1 as a whole (other not-started #error siblings block it) -- use ./container.sh tools/permute.py $TARGET_FUNC to isolate just this function, then ./container.sh tools/decomp-permuter/permuter.py nonmatchings/$TARGET_FUNC to search for an exact match. Let the search actually run for a real amount of time before concluding it's stuck -- register-allocation gaps often need many iterations, not a handful." || echo "Iterate with ./container.sh asm-differ -mwo $TARGET_FUNC." )

If you reach an exact match (score 0 / 100%): remove the #ifndef NONMATCHING/#else/#endif wrapper (leave just the plain function), delete asm/nonmatching/${TARGET_FUNC}.s, then run: rm -rf build/ && ./container.sh make -- must say mlss.gba: OK. The rm -rf build/ matters: a plain make can report OK against a stale cached object even when the real result is broken (see CLAUDE.md's landmines if curious why) -- only a from-scratch build is real proof. Do NOT commit -- leave the working tree as-is once you've confirmed this and stop. A supervisor process handles committing after its own independent check.

If you do NOT reach an exact match after a genuine effort: leave the guard in place, confirm a plain ./container.sh make still says mlss.gba: OK, and write a clear description of what you tried and exactly where you got stuck to $MAILBOX/requests/${TARGET_FUNC}.md (what the remaining diff looks like, what you already tried, what specifically would help) -- then stop. Do not loop trying the same thing repeatedly. Do NOT commit either way -- never run git commit yourself.

If any step fails with an error you did not expect, explain what the error actually said rather than guessing or silently skipping ahead to a later step. If you make an editing mistake partway through (e.g. edit the wrong file, or accidentally delete something you needed), explicitly undo that specific mistake by restoring what you deleted or changed -- do not paper over it by leaving things in whatever partial state the mistake left, and do not delete a fragment file until you are certain you have a real match confirmed by a from-scratch build.$EXTRA_CONTEXT"

  HEAD_BEFORE=$(git rev-parse HEAD)

  ITER_LOG="$LOG_DIR/$(date +%Y%m%d-%H%M%S)-${TARGET_FUNC}.jsonl"
  log "invoking qwen-code (timeout ${PER_FUNCTION_TIMEOUT}s, log: $ITER_LOG)"
  timeout "$PER_FUNCTION_TIMEOUT" ~/.local/bin/qwen-code --bare --dangerously-skip-permissions \
    --output-format stream-json --verbose -p "$PROMPT" \
    > "$ITER_LOG" 2>&1
  QWEN_EXIT=$?
  log "qwen-code exited with code $QWEN_EXIT"

  # --- Independent verification -- never trust the model's self-report,
  # and never trust a non-from-scratch build. See the file header comment
  # for why both of these matter; they're real bugs that really happened.
  MATCHED=0
  IN_PROGRESS_SALVAGEABLE=0
  HEAD_AFTER=$(git rev-parse HEAD)
  if [[ "$HEAD_AFTER" != "$HEAD_BEFORE" ]] || git status --short | grep -q .; then
    rm -rf build/
    BUILD_OUT=$(./container.sh make 2>&1)
    if echo "$BUILD_OUT" | grep -q "mlss.gba: OK"; then
      if ! grep -rq "asm/nonmatching/${TARGET_FUNC}\.s" src/*.c 2>/dev/null; then
        MATCHED=1
      elif ! grep -rq "#error \"TODO: write $TARGET_FUNC" src/*.c 2>/dev/null; then
        # Still guarded, but the #error is gone -- a real (if unmatched)
        # C attempt exists and the tree builds clean. Worth preserving.
        IN_PROGRESS_SALVAGEABLE=1
      fi
    fi
  fi

  if [[ "$MATCHED" == "1" ]]; then
    log "verified match: $TARGET_FUNC (from-scratch build confirmed) -- committing and merging to master"
    if [[ "$HEAD_AFTER" == "$HEAD_BEFORE" ]]; then
      git add -A && git commit -m "Match $TARGET_FUNC"
    else
      # A WIP checkpoint or the model's own commit sits between HEAD_BEFORE
      # and here -- squash down to one clean "Match X" commit on top of
      # HEAD_BEFORE rather than merging WIP history into master.
      git reset --soft "$HEAD_BEFORE"
      git commit -m "Match $TARGET_FUNC"
    fi
    cd "$REPO_ROOT"
    git merge --no-ff -m "Merge autopilot match: $TARGET_FUNC" "$BRANCH" 2>&1
    rm -rf build/
    ./container.sh make 2>&1 | tail -3
    cd "$WORKTREE"
    git merge --ff-only master 2>&1
    log "done: $TARGET_FUNC MATCHED and merged"
  elif [[ "$IN_PROGRESS_SALVAGEABLE" == "1" && "$QWEN_EXIT" == "124" ]]; then
    log "$TARGET_FUNC not matched yet but a real, clean-building attempt exists -- checkpointing as WIP for the next attempt instead of discarding"
    git add -A && git commit -m "WIP: $TARGET_FUNC (autopilot: in-progress attempt, not yet matching)" >/dev/null
    bump_retry_count "$TARGET_FUNC"
    if [[ -f "$MAILBOX/requests/${TARGET_FUNC}.md" ]]; then
      log "  -> a help request was also written for $TARGET_FUNC -- check $MAILBOX/requests/"
    fi
  else
    log "no verified match for $TARGET_FUNC this attempt -- resetting worktree to $HEAD_BEFORE (undoes any commit too), leaving any mailbox request in place"
    git reset --hard "$HEAD_BEFORE" 2>&1 >/dev/null
    git clean -fd 2>&1 >/dev/null
    # nonmatchings/ and tools/permute-work/ are gitignored (decomp-permuter
    # scratch state), so `git clean -fd` alone never touches them -- an
    # interrupted run leaves a stale nonmatchings/<name>/ behind that makes
    # permute.py refuse to re-import next time ("already exists"), and the
    # error it prints is a container-internal /workspace/... path that
    # doesn't exist on the host, so even a careful recovery attempt copying
    # that path verbatim silently no-ops. Found live watching a real run.
    rm -rf "nonmatchings/${TARGET_FUNC}" "tools/permute-work/${TARGET_FUNC}"*
    bump_retry_count "$TARGET_FUNC"
    if [[ -f "$MAILBOX/requests/${TARGET_FUNC}.md" ]]; then
      log "  -> a help request was written for $TARGET_FUNC -- check $MAILBOX/requests/"
    fi
  fi
  unset TARGET_FUNC
done

log "=== autopilot run finished ($MAX_ITER iterations attempted) ==="
log "progress snapshot:"
cd "$REPO_ROOT" && python3 tools/progress.py 2>&1 | head -8
PENDING=$(ls "$MAILBOX/requests/" 2>/dev/null | wc -l)
if [[ "$PENDING" -gt 0 ]]; then
  log "$PENDING pending help request(s) in $MAILBOX/requests/ -- needs review"
fi
