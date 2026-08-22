#!/usr/bin/env bash
# tools/qwen_supervisor.sh - keeps qwen_pilot.sh actually running unattended
# overnight, not just for one batch.
#
# qwen_pilot.sh on its own has two real gaps for genuine "walk away and
# come back in the morning" operation: nothing restarts llama-server if it
# crashes or hangs, and nothing relaunches qwen_pilot.sh once its own
# --max-iterations batch runs out. This script is that missing layer: it
# health-checks the server before every batch (restarting it if needed),
# runs one batch of qwen_pilot.sh, and repeats -- for real, not just once
# -- until a wall-clock budget runs out or it's told to stop.
#
# Usage (note systemd-inhibit wraps the WHOLE supervisor, not each batch --
# see the sleep-inhibit comment further down for why):
#   systemd-inhibit --what=sleep:idle --why="qwen decomp autopilot" \
#     ./tools/qwen_supervisor.sh [max_hours] [iterations_per_batch]
#   (defaults: 10 hours, 6 iterations per batch)
#
# Logs to .claude/qwen-autopilot-logs/supervisor-<timestamp>.log - check
# that in the morning for a full run history, or tools/progress.py for the
# bottom line.
set -uo pipefail

cd "$(dirname "$0")/.."
REPO_ROOT="$PWD"
LOG_DIR="$REPO_ROOT/.claude/qwen-autopilot-logs"
mkdir -p "$LOG_DIR"
SUPERVISOR_LOG="$LOG_DIR/supervisor-$(date +%Y%m%d-%H%M%S).log"

MAX_HOURS="${1:-10}"
ITERS_PER_BATCH="${2:-6}"
SERVE_SCRIPT="$HOME/Desktop/ai-training/qwen-coder/serve.sh"
HEALTH_URL="http://127.0.0.1:8080/health"

log() { echo "[$(date +%H:%M:%S)] $*" | tee -a "$SUPERVISOR_LOG"; }

log "=== supervisor starting: max ${MAX_HOURS}h wall clock, ${ITERS_PER_BATCH} iterations/batch ==="
DEADLINE=$(( $(date +%s) + MAX_HOURS * 3600 ))

ensure_server_healthy() {
  if curl -sf --max-time 3 "$HEALTH_URL" >/dev/null 2>&1; then
    return 0
  fi
  log "!! server not responding -- restarting it"
  # Kill anything holding the real binary (not just any process whose
  # command line happens to mention the string "llama-server" -- e.g. this
  # very script's own invocation text would false-match a looser pgrep).
  pkill -KILL -f "bin/llama-server" 2>/dev/null
  sleep 2
  ( cd "$(dirname "$SERVE_SCRIPT")" && nohup ./serve.sh > "$LOG_DIR/serve-$(date +%Y%m%d-%H%M%S).log" 2>&1 & disown )
  for i in $(seq 1 60); do
    if curl -sf --max-time 2 "$HEALTH_URL" >/dev/null 2>&1; then
      log "server back up (check $i)"
      return 0
    fi
    sleep 3
  done
  log "!! server still not responding after 3 minutes -- giving up this cycle, will retry next loop"
  return 1
}

BATCH=0
while [[ $(date +%s) -lt $DEADLINE ]]; do
  BATCH=$((BATCH+1))
  log "--- batch $BATCH ---"

  if ! ensure_server_healthy; then
    sleep 30
    continue
  fi

  log "launching qwen_pilot.sh $ITERS_PER_BATCH"
  # Sleep-inhibit is held for this WHOLE script's lifetime by whoever
  # launches it (see the header/launch instructions), not re-acquired per
  # batch here -- wrapping it per-batch would leave a real gap between
  # batches (server health check + cleanup) with no active inhibit lock,
  # during which systemd could still decide to sleep the machine.
  ./tools/qwen_pilot.sh "$ITERS_PER_BATCH" >> "$SUPERVISOR_LOG" 2>&1
  EXIT_CODE=$?
  log "batch $BATCH finished (qwen_pilot.sh exit code $EXIT_CODE)"

  # Clean up any leftover client process qwen_pilot.sh's own timeout/-k
  # didn't manage to fully reap before we loop back and health-check again.
  pkill -TERM -f "qwen-code --bare" 2>/dev/null
  pkill -TERM -f "web-mcp.py" 2>/dev/null
  sleep 2
  pkill -KILL -f "qwen-code --bare" 2>/dev/null
  pkill -KILL -f "web-mcp.py" 2>/dev/null

  REMAINING=$(( (DEADLINE - $(date +%s)) / 60 ))
  log "~${REMAINING} minutes left in this supervisor run"
done

log "=== supervisor stopping: wall-clock budget exhausted ==="
log "final progress snapshot:"
python3 tools/progress.py 2>&1 | tee -a "$SUPERVISOR_LOG"
PENDING=$(ls "$HOME/Desktop/ai-training/qwen-coder/mailbox/requests/" 2>/dev/null | wc -l)
log "$PENDING pending mailbox request(s) -- check $HOME/Desktop/ai-training/qwen-coder/mailbox/requests/"
