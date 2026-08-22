#!/bin/sh
# tools/agbcc is gitignored (it's a from-source build of a 1990s compiler,
# not something that belongs in version control) and is normally produced
# by agbcc's own install.sh. This image bakes that build into /opt/agbcc,
# so on first run against a freshly-cloned worktree we just drop it into
# place - same end state as running install.sh by hand, zero extra steps.
set -e

if [ ! -x tools/agbcc/bin/agbcc ]; then
    mkdir -p tools/agbcc
    cp -a /opt/agbcc/. tools/agbcc/
fi

exec "$@"
