# Reproducible build environment for the MLSS decompilation.
#
# Bundles devkitARM (ARM binutils + arm-none-eabi-gcc, used only for
# assembling/linking) with a from-source build of agbcc (the actual
# 1990s-vintage compiler that must be used to match the retail ROM's
# codegen). Building this image is the *entire* toolchain install -
# no host setup, no sudo, no "works on my machine".
#
# Usage:
#   podman build -t mlss-toolchain -f Containerfile .
#   podman run --rm -v "$PWD":/workspace:Z mlss-toolchain make
#
# (swap `podman` for `docker` anywhere above - both work identically)
FROM docker.io/devkitpro/devkitarm:latest

# devkitARM's cross toolchain (arm-none-eabi-*) isn't on PATH in the base
# image - only devkitPro's generic tools/bin is. asm-differ, decomp-permuter,
# and our own tools/ scripts all shell out to objdump/as/nm by bare name.
ENV PATH="${DEVKITARM}/bin:${PATH}"

# Extra tooling used by matching/decomp scripts (asm-differ, decomp-permuter,
# our own tools/ scripts). devkitarm's base image already ships build-essential,
# git and python3 for building agbcc itself.
RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-pip \
        python3-venv \
        less \
    && rm -rf /var/lib/apt/lists/*

# Pinned to the exact commit this project is verified to build a matching
# ROM against (see INSTALL.md). Bump deliberately, not casually - a newer
# agbcc can silently change codegen and break byte-identical matches.
ARG AGBCC_REPO=https://github.com/jiangzhengwenjz/agbcc
ARG AGBCC_REF=59b966ed1b8f371856dcf99f1546c2fe89c678ca

RUN git clone --quiet "${AGBCC_REPO}" /opt/agbcc-src \
    && cd /opt/agbcc-src \
    && git checkout --quiet "${AGBCC_REF}" \
    && ./build.sh \
    && mkdir -p /opt/agbcc/bin /opt/agbcc/include /opt/agbcc/lib \
    && cp agbcc old_agbcc agbcc_arm /opt/agbcc/bin/ \
    && cp -R libc/include/. /opt/agbcc/include/ \
    && cp ginclude/* /opt/agbcc/include/ \
    && cp libgcc.a libc.a /opt/agbcc/lib/ \
    && cd / && rm -rf /opt/agbcc-src

# python deps for matching tools (installed in Phase 2); harmless no-op
# until requirements.txt exists.
COPY tools/requirements.txt /tmp/requirements.txt
RUN if [ -s /tmp/requirements.txt ]; then \
        pip3 install --break-system-packages --no-cache-dir -r /tmp/requirements.txt; \
    fi

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

WORKDIR /workspace
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["make"]
