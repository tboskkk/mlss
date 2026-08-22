#!/usr/bin/env bash
# Apply the local m2c patches. Idempotent; safe to re-run.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
cd "$here/../m2c"
for p in "$here"/*.patch; do
    [ -e "$p" ] || continue
    if git apply --reverse --check "$p" 2>/dev/null; then
        echo "already applied: $(basename "$p")"
    elif git apply --check "$p" 2>/dev/null; then
        git apply "$p"; echo "applied: $(basename "$p")"
    else
        echo "FAILED (does not apply cleanly): $(basename "$p")" >&2; exit 1
    fi
done
