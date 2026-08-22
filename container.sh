#!/bin/sh
# Thin wrapper around the toolchain container. Builds the image once (cheap
# after the first run - layers cache), then runs whatever command you pass
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

# Optional hard CPU isolation for batch/CPU-bound container invocations
# (compiles, decomp-permuter searches) so they can never bleed onto cores
# reserved for something latency-sensitive running on the host, like
# llama-server's own --cpu-strict pinning. Declarative pinning on ONE side
# only isn't real isolation -- found the hard way when abandoned permuter
# containers with no cpuset of their own drove load average to 26.5 on a
# 12-core box and starved a --cpu-strict-pinned llama-server down to
# ~0.1 tok/s anyway (the kernel scheduler doesn't treat one process's
# affinity as an exclusion zone for everyone else's unpinned threads).
#
# podman's own --cpuset-cpus goes through the cgroup `cpuset` controller,
# which isn't delegated to this user's rootless cgroup slice here
# ("controller `cpuset` is not available" - a real environment limit, not
# a typo) so that flag hard-fails on this box. `taskset` sidesteps it
# entirely: it calls sched_setaffinity() directly on the process, no
# cgroup involved, so it works the same rootless or not. Applied INSIDE
# the container (wrapping the command) rather than via a run flag.
#
# Unset by default -- zero behavior change unless a caller opts in:
#   CONTAINER_CPUSET=6-11 ./container.sh ...
if [ -n "${CONTAINER_CPUSET:-}" ]; then
    set -- taskset -c "$CONTAINER_CPUSET" "$@"
fi

# shellcheck disable=SC2086
exec "$ENGINE" run --rm $TTY_FLAGS -v "$PWD:/workspace$MOUNT_FLAGS" "$IMAGE" "$@"
