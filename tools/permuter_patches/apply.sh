#!/usr/bin/env bash
# Apply the local decomp-permuter patches. Idempotent; safe to re-run.
set -euo pipefail
here="$(cd "$(dirname "$0")" && pwd)"
cd "$here/../decomp-permuter"
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
