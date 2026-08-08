#!/bin/sh
# Thin wrapper around the toolchain container. Builds the image once (cheap
# after the first run — layers cache), then runs whatever command you pass
# inside it, with the repo mounted at /workspace.
#
#   ./container.sh              # == make
#   ./container.sh make clean
#   ./container.sh bash         # interactive shell inside the toolchain
#
# Works with either podman or docker, whichever is installed.
set -e

cd "$(dirname "$0")"

if command -v podman >/dev/null 2>&1; then
    ENGINE=podman
    MOUNT_FLAGS=":Z"
elif command -v docker >/dev/null 2>&1; then
    ENGINE=docker
    MOUNT_FLAGS=""
else
    echo "error: neither podman nor docker found on PATH" >&2
    exit 1
fi

IMAGE=localhost/mlss-toolchain:latest

# Rebuild if the image is missing or the Containerfile/entrypoint changed.
NEEDS_BUILD=0
"$ENGINE" image exists "$IMAGE" 2>/dev/null || NEEDS_BUILD=1
if [ "$NEEDS_BUILD" = "0" ] && command -v git >/dev/null 2>&1; then
    if ! git diff --quiet -- Containerfile docker-entrypoint.sh 2>/dev/null; then
        : # local edits present; let the engine's layer cache decide, don't force
    fi
fi

if [ "$NEEDS_BUILD" = "1" ]; then
    echo "container.sh: building $IMAGE (first run only, ~1-2 min)..." >&2
    "$ENGINE" build -t "$IMAGE" -f Containerfile .
fi

TTY_FLAGS=""
if [ -t 0 ] && [ -t 1 ]; then
    TTY_FLAGS="-it"
fi

# shellcheck disable=SC2086
exec "$ENGINE" run --rm $TTY_FLAGS -v "$PWD:/workspace$MOUNT_FLAGS" "$IMAGE" "$@"
