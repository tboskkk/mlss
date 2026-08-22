#!/usr/bin/env bash
# tools/qwen_pilot.sh - drives the local Qwen3-Coder agent through this
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
# 35 min, not 20. Auto-compact keeps firing early (~12k tokens, well under
# any configured window) despite two real, verified-reaching-the-process
# fix attempts -- CLAUDE_CODE_AUTO_COMPACT_WINDOW (env var) and --autocompact
# (the documented CLI flag), both confirmed present in the actual running
# process's own args/environ, neither actually preventing it. Root cause
# still genuinely unknown after checking the obvious levers (env var, CLI
# flag, settings.json, the model server's own reported n_ctx -- all
# consistent, none explain it). What IS known: compaction itself now
# succeeds (not the earlier "aborted, stuck forever" bug from earlier this
# session) but costs a real, consistent ~7 minutes, which is over a third
# of a 20-minute budget -- so a run was regularly getting cut off right
# after paying that tax, before any of the remaining time could go to real
# work. This doesn't fix WHY it compacts early; it just stops that being
# fatal to a whole attempt by giving real working time a chance to happen
# after the tax is paid instead of ending right when it's paid.
PER_FUNCTION_TIMEOUT="${QWEN_PILOT_TIMEOUT:-2100}"
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

pick_target_func() {
  # Ask tools/triage.py for the most tractable unmatched function, rather
  # than the old heuristic (smallest remaining raw blob, take whatever's at
  # its front). That heuristic was actively harmful once measured: every
  # front-of-blob function scores as hard (best 231.5, where <50 is
  # 'tractable'; AgbMain is 943), so the autopilot was being handed nothing
  # but the worst available problems by construction -- which is the real
  # reason it ground through an entire overnight run without a single
  # match, on functions whose callees were themselves undecompiled.
  #
  # triage.py ranks by what actually makes matching hard: unmatched callees
  # first (dominant), then indirect calls, size, r8-r11 pressure, stack
  # frame. Combined with split_func.py's mid-file extraction, that means
  # this can now pick genuinely easy work (4-line `bx lr` stubs and other
  # leaf functions) from anywhere in any blob.
  #
  # $SKIP_FUNCS holds functions to pass over (retry budget exhausted this
  # run). ESCALATED_FUNCS is deliberately separate: those keep their WIP
  # commit for a human/Claude, and are filtered the same way.
  python3 tools/triage.py --json --limit 60 2>/dev/null \
    | SKIP="$SKIP_FUNCS $ESCALATED_FUNCS" python3 -c '
import json, os, sys
skip = set(os.environ.get("SKIP", "").split())
try:
    rows = json.load(sys.stdin)
except Exception:
    sys.exit(1)
for r in rows:
    if r["name"] in skip:
        continue
    # Never hand the local model something with unmatched dependencies --
    # it cannot read what those callees do, so it ends up guessing at
    # parameter semantics. That exact situation burned an entire overnight
    # run on option_screens.s functions whose three helpers are all still
    # raw assembly.
    if r["unknown_callees"]:
        continue
    print(r["name"])
    break
'
}

# Functions to pass over for the rest of this run. Replaces the old
# SKIP_FILES: targets are chosen per-function by triage.py now, not by
# picking a file and taking whatever sits at its front.
SKIP_FUNCS=""
# ESCALATED_FUNCS/FUNC_RETRY_COUNT used to live only in this process's own
# memory -- meaning a supervisor that relaunches this script in fresh
# batches (needed for genuine unattended overnight operation: nothing else
# restarts qwen_pilot.sh once its own MAX_ITER runs out) would silently
# reset every function's retry count back to 0 on each relaunch. A function
# that's genuinely stuck could then eat an entire unattended run hammering
# the same target forever, never actually hitting MAX_RETRIES_PER_FUNC and
# escalating to the mailbox the way it's supposed to. Persisted to a small
# state file so the count survives across relaunches; only reset by
# deleting the file by hand.
STATE_FILE="$LOG_DIR/retry_state.txt"
ESCALATED_FUNCS=""  # functions that hit MAX_RETRIES_PER_FUNC -- don't auto-continue them even if their WIP checkpoint is still at the branch tip
FUNC_RETRY_COUNT=""  # "func1:count1 func2:count2 ..." poor-man's assoc array, bash 3-compatible

load_state() {
  [[ -f "$STATE_FILE" ]] || return
  while IFS= read -r line; do
    case "$line" in
      RETRY:*) FUNC_RETRY_COUNT="${line#RETRY:}" ;;
      ESCALATED:*) ESCALATED_FUNCS="${line#ESCALATED:}" ;;
    esac
  done < "$STATE_FILE"
}

save_state() {
  { echo "RETRY:$FUNC_RETRY_COUNT"; echo "ESCALATED:$ESCALATED_FUNCS"; } > "$STATE_FILE"
}

load_state

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
  save_state
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
    TARGET_FUNC=$(pick_target_func)
    if [[ -z "$TARGET_FUNC" ]]; then
      log "triage.py offered no eligible target (everything tractable is either done, skipped, or escalated) -- stopping"
      break
    fi
    # Which blob it lives in, for logging only -- extraction itself resolves
    # the symbol through mlss.map and no longer cares about file ordering
    # (split_func.py handles mid-file extraction now).
    TARGET_FILE=$(grep -l "func_start $TARGET_FUNC\$" asm/*.s 2>/dev/null | head -1)
    TARGET_FILE="${TARGET_FILE#asm/}"
    TARGET_FILE="${TARGET_FILE:-unknown}"
  fi

  RETRY_COUNT=$(get_retry_count "$TARGET_FUNC")
  if [[ "$RETRY_COUNT" -ge "$MAX_RETRIES_PER_FUNC" ]]; then
    log "$TARGET_FUNC has failed $RETRY_COUNT times already -- auto-escalating to mailbox and moving on"
    # Deliberately NOT resetting: if a real, clean-building WIP checkpoint
    # exists (IS_CONTINUATION=1 got this far, meaning it survived every
    # prior timeout), it stays at the tip of the branch as a genuine
    # handoff for a human or Claude to read and finish, rather than
    # discarding however many attempts' worth of real progress just because
    # the retry budget ran out. It doesn't block anything else: triage.py
    # picks targets per-function from anywhere in any blob, and both the
    # picker and the continuation-detector filter on ESCALATED_FUNCS, so an
    # escalated function simply stops being offered.
    if [[ ! -f "$MAILBOX/requests/${TARGET_FUNC}.md" ]]; then
      cat > "$MAILBOX/requests/${TARGET_FUNC}.md" <<EOF
Auto-escalated by qwen_pilot.sh after $RETRY_COUNT unsuccessful attempts (timeouts or genuine non-matches), not written by the model itself. Check .claude/qwen-autopilot-logs/ for this function's transcripts to see what was actually tried.
$( [[ "$IS_CONTINUATION" == "1" ]] && echo "A real, clean-building (but not yet matching) attempt survived every attempt and is preserved at the tip of the ${BRANCH} branch, in ${DEST_FILE:-the destination file} -- read that before starting over, it may just need finishing rather than redoing." || echo "No in-progress C attempt survived to hand off -- every attempt either timed out before producing anything salvageable, or was a genuine non-match reset back to a clean state." )
EOF
    fi
    ESCALATED_FUNCS="$ESCALATED_FUNCS $TARGET_FUNC"
    save_state
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
  # files nobody's explicitly flagged yet. Targets the exact object
  # (`make ... build/src/heap.o`, not a bare whole-project `make`) --
  # confirmed this project's Makefile supports that directly via its
  # normal pattern rule. Two real reasons this matters, not just neatness:
  # a whole-project build could pick up an UNRELATED file's own #error
  # elsewhere in the codebase (there are usually a few "extracted, still
  # #error" functions scattered around at any given time) and falsely
  # blame it on THIS file; and a whole-project build is dramatically
  # slower whenever it actually succeeds and has to walk the entire
  # dependency graph, including the ~1.6MB text08057568.s blob, every
  # single iteration just to answer a yes/no question about one object.
  DEST_OBJ="build/${DEST_FILE%.c}.o"
  rm -f "$DEST_OBJ" "build/${DEST_FILE%.c}.i" "build/${DEST_FILE%.c}.s" 2>/dev/null
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
  PERMUTE_TEST_OUT=$(./container.sh make NONMATCHING=1 "$DEST_OBJ" 2>&1 | tail -30)
  if echo "$PERMUTE_TEST_OUT" | grep -qE "^agbcc:|Error|error:"; then
    NEEDS_PERMUTE=1
  fi
  rm -f "$DEST_OBJ" "build/${DEST_FILE%.c}.i" "build/${DEST_FILE%.c}.s" 2>/dev/null

  # --- Surgical-context setup: the actual dominant cost found by analyzing
  # a full night's transcripts + the server's own log wasn't decompilation
  # difficulty -- it was that most attempts spent their whole budget on
  # full-file reads (a 545-line src/*.c, a 426-line common.h) that took
  # 4-5 minutes EACH to re-prefill (no KV cache reuse across turns once the
  # cache-ram budget was oversubscribed -- see serve.sh's own fix for that
  # half of it). At ~5 min/turn against a 35-min budget that's ~7 turns
  # total, nowhere near enough to reach permute.py, let alone converge it.
  # Bigger the context, bigger the KV entry, more turns get spent building
  # it, more eviction pressure, more compactions -- all four costs share
  # the same root, so cutting context size hard attacks all of them at
  # once. The orchestrator already knows exactly where this function's
  # guard block lives (it just extracted it, or read DEST_FILE at
  # continuation-detection time) -- handing over that exact line number
  # means the model never has to read the whole file to find it.
  # Matches the .include reference line (always present, guard open or not)
  # and, for a not-yet-attempted function, also its #error line -- head -1
  # takes whichever comes first, which is always the .include line, i.e.
  # the actual start of the guard block. Verified this exact pattern
  # against real file content before trusting it: an earlier version tried
  # to also match the line's trailing escaped quote and silently matched
  # nothing at all (grep exit 1, TARGET_LINE always empty) because the
  # quote-escaping logic through two layers of interpretation -- this
  # script's own bash double-quotes, then grep's regex -- didn't produce
  # what it looked like it would on paper. This simpler pattern doesn't
  # need to match the trailing quote at all to be unique enough.
  TARGET_LINE=$(grep -n "asm/nonmatching/${TARGET_FUNC}\.s" "$DEST_FILE" 2>/dev/null | head -1 | cut -d: -f1)

  # Persistent working notes, kept OUTSIDE the tracked tree (.claude/ is
  # gitignored specifically for this -- see .gitignore) so it survives
  # both a full worktree reset (git clean -fd skips ignored paths, same
  # reason nonmatchings/ needs its own explicit rm -rf below) and doesn't
  # ever risk getting swept into a WIP commit's `git add -A`. The point:
  # if a compaction wipes the model's conversation, re-reading this one
  # small file is enough to reorient -- cheap -- instead of re-reading the
  # whole codebase from scratch, which is what was actually happening.
  # Only created fresh on a genuinely new attempt; left untouched on a
  # continuation so whatever the model itself appended survives.
  NOTES_DIR="$WORKTREE/.claude/pilot-notes"
  NOTES_FILE="$NOTES_DIR/${TARGET_FUNC}.md"
  mkdir -p "$NOTES_DIR"
  if [[ ! -f "$NOTES_FILE" ]]; then
    cat > "$NOTES_FILE" <<EOF
# Working notes: $TARGET_FUNC

- Destination: $DEST_FILE, guard block starts at line ${TARGET_LINE:-unknown}
- Raw assembly reference (read-only): asm/nonmatching/${TARGET_FUNC}.s
- Needs permute.py isolation: $( [[ -n "$NEEDS_PERMUTE" ]] && echo yes || echo no )

## Scratchpad
(Append your own brief notes here as you learn things or make progress --
what the function does, what you've tried, current diff score if you have
one. If your context ever gets compacted or you're unsure where you left
off, re-read THIS file first instead of re-reading the whole codebase --
it's small and has everything you need to reorient.)
EOF
  fi

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

  PROMPT="Your working directory for every single command, Read/Edit path, and Bash \`cd\`, with no exceptions, is exactly: $WORKTREE -- this is a git worktree, a separate real checkout, not the same directory as /home/tyler/Desktop/mlss (that's a DIFFERENT checkout of the same repo that other work happens in; it does NOT have this function extracted and reading or cd-ing there will show you stale or missing files that look like errors but aren't). Use paths relative to $WORKTREE, or the exact absolute prefix $WORKTREE/... -- never /home/tyler/Desktop/mlss/... on its own. If a file ever looks missing or a command's own output claims something isn't extracted yet, check you're actually operating under $WORKTREE before concluding anything is wrong.

FIRST, before anything else: read $NOTES_FILE. It's small and has exactly what you need to get oriented -- where the code goes, whether you need permute.py, and (if this is a retry) what a previous attempt already found. If you ever feel unsure where you left off later in this session -- especially right after anything resembling a context/conversation summary -- re-read that same small file again before re-reading anything else. It is much cheaper than rediscovering things from the full codebase.

CONTEXT BUDGET MATTERS A LOT HERE -- this model runs locally on CPU, and a single full-file Read of a few hundred lines can cost several minutes to process. Follow this or you will run out of time before writing any code:
- To read $DEST_FILE: do NOT read the whole file. Use Read with offset=$(( ${TARGET_LINE:-1} > 5 ? ${TARGET_LINE:-1} - 5 : 1 )) and limit=60 -- that's exactly where this function's guard block starts. Only widen it if the function genuinely runs longer than that.
- To use anything from another file (a header, a struct definition, a constant): grep -n for the specific identifier first, then Read just a small window (~20-30 lines) around the line grep finds. Do not open a whole header file end to end looking for something.
- Append a short note to $NOTES_FILE whenever you learn or decide something worth remembering (what the function does, what you tried, a diff score) -- cheap insurance against losing that if your context gets summarized later.

This repo is already built (mlss.gba: OK confirmed). $STAGE_TEXT

Reuse existing types/structs/prototypes from include/common.h and relevant src/*.h wherever the function touches something already named -- grep before inventing new declarations (grep + a small windowed Read, per above -- not a full read of the header).

$( [[ -n "$NEEDS_PERMUTE" ]] && echo "This translation unit does NOT compile under NONMATCHING=1 as a whole (other not-started #error siblings block it) -- use ./container.sh tools/permute.py $TARGET_FUNC to isolate just this function, then ./container.sh tools/decomp-permuter/permuter.py nonmatchings/$TARGET_FUNC to search for an exact match. Let the search actually run for a real amount of time before concluding it's stuck -- register-allocation gaps often need many iterations, not a handful." || echo "Iterate with ./container.sh asm-differ -mwo $TARGET_FUNC." )

If you reach an exact match (score 0 / 100%): remove the #ifndef NONMATCHING/#else/#endif wrapper (leave just the plain function), delete asm/nonmatching/${TARGET_FUNC}.s, then run: rm -rf build/ && ./container.sh make -- must say mlss.gba: OK. The rm -rf build/ matters: a plain make can report OK against a stale cached object even when the real result is broken (see CLAUDE.md's landmines if curious why) -- only a from-scratch build is real proof. Do NOT commit -- leave the working tree as-is once you've confirmed this and stop. A supervisor process handles committing after its own independent check.

If you do NOT reach an exact match after a genuine effort: leave the guard in place, confirm a plain ./container.sh make still says mlss.gba: OK, and write a clear description of what you tried and exactly where you got stuck to $MAILBOX/requests/${TARGET_FUNC}.md (what the remaining diff looks like, what you already tried, what specifically would help) -- then stop. Do not loop trying the same thing repeatedly. Do NOT commit either way -- never run git commit yourself.

If any step fails with an error you did not expect, explain what the error actually said rather than guessing or silently skipping ahead to a later step. If you make an editing mistake partway through (e.g. edit the wrong file, or accidentally delete something you needed), explicitly undo that specific mistake by restoring what you deleted or changed -- do not paper over it by leaving things in whatever partial state the mistake left, and do not delete a fragment file until you are certain you have a real match confirmed by a from-scratch build.$EXTRA_CONTEXT"

  HEAD_BEFORE=$(git rev-parse HEAD)

  ITER_LOG="$LOG_DIR/$(date +%Y%m%d-%H%M%S)-${TARGET_FUNC}.jsonl"
  log "invoking qwen-code (timeout ${PER_FUNCTION_TIMEOUT}s, log: $ITER_LOG)"
  # -k 30: without a kill-after grace period, `timeout` sends TERM once the
  # clock expires and then just WAITS for the child to actually exit -- it
  # does not return control on its own. Found for real: manually killing a
  # qwen-code process stuck inside a synchronous compaction call, TERM
  # didn't take effect promptly and a follow-up KILL was needed. If that
  # happens on a genuine, unattended timeout (not a manual kill) instead,
  # a bare `timeout N` here would leave the whole orchestrator hung well
  # past the configured budget, possibly indefinitely. -k 30 escalates to
  # KILL 30s after TERM if the child hasn't exited by then, so this call
  # always returns in a bounded time no matter what state the child is in.
  timeout -k 30 "$PER_FUNCTION_TIMEOUT" ~/.local/bin/qwen-code --bare --dangerously-skip-permissions \
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
    # Everything from here on used to run unchecked -- log a cheerful
    # "done: MATCHED and merged" regardless of whether the merge, the
    # post-merge build, or the worktree re-sync actually succeeded. Real
    # risk, not theoretical: REPO_ROOT is the same checkout other work
    # (including editing this very script) happens in directly, so a
    # match landing while REPO_ROOT has uncommitted changes sitting in it
    # is a genuinely plausible collision, not an edge case invented for
    # its own sake. The verified match itself is never at risk either way
    # -- it's already a real commit on $BRANCH -- only whether it actually
    # made it to master gets checked now instead of assumed.
    cd "$REPO_ROOT"
    if [[ -n "$(git status --short)" ]]; then
      log "!! $REPO_ROOT has uncommitted changes right now -- not safe to merge there automatically. The verified match is safe on $BRANCH (commit $(cd "$WORKTREE" && git rev-parse --short HEAD)) -- merge it to master by hand once $REPO_ROOT is clean."
      cd "$WORKTREE"
    elif ! git merge --no-ff -m "Merge autopilot match: $TARGET_FUNC" "$BRANCH" 2>&1; then
      log "!! merge into master failed -- the verified match is still safe on $BRANCH (commit $(cd "$WORKTREE" && git rev-parse --short HEAD)), just not merged. Resolve by hand."
      cd "$WORKTREE"
    else
      rm -rf build/
      MERGE_BUILD_OUT=$(./container.sh make 2>&1)
      if ! echo "$MERGE_BUILD_OUT" | grep -q "mlss.gba: OK"; then
        log "!! merged $TARGET_FUNC to master but the post-merge from-scratch build did NOT say mlss.gba: OK -- master may be broken right now, investigate immediately:"
        echo "$MERGE_BUILD_OUT" | tail -10
        cd "$WORKTREE"
      else
        cd "$WORKTREE"
        if git merge --ff-only master 2>&1 >/dev/null; then
          log "done: $TARGET_FUNC MATCHED and merged to master, worktree back in sync"
        else
          log "!! $TARGET_FUNC matched and merged to master fine, but the worktree branch failed to fast-forward back in sync afterward -- master itself is fine, investigate the worktree by hand"
        fi
      fi
    fi
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
