#!/bin/sh
# Extracts .text bytes from every object in our pinned agbcc's libgcc.a and
# libc.a into .libsig-tmp/{gcc,libc}/*.textbin, for tools/find_library_code.py
# to search the retail ROM against. Gitignored, cheap to regenerate - not
# meant to be committed.
#
#   ./container.sh tools/extract_lib_signatures.sh
set -e
cd "$(dirname "$0")/.."

if [ ! -f tools/agbcc/lib/libgcc.a ]; then
    echo "tools/agbcc/lib/libgcc.a not found - build first (./container.sh make)." >&2
    exit 1
fi

rm -rf .libsig-tmp
mkdir -p .libsig-tmp/gcc .libsig-tmp/libc

(cd .libsig-tmp/gcc && arm-none-eabi-ar x ../../tools/agbcc/lib/libgcc.a)
(cd .libsig-tmp/libc && arm-none-eabi-ar x ../../tools/agbcc/lib/libc.a)

count=0
for f in .libsig-tmp/gcc/*.o .libsig-tmp/libc/*.o; do
    [ -e "$f" ] || continue
    size_line=$(arm-none-eabi-size "$f" 2>/dev/null | tail -1)
    text_size=$(echo "$size_line" | awk '{print $1}')
    if [ -n "$text_size" ] && [ "$text_size" != "0" ]; then
        arm-none-eabi-objcopy -O binary --only-section=.text "$f" "${f%.o}.textbin" 2>/dev/null && count=$((count + 1))
    fi
done

echo "extracted $count non-empty .text signatures into .libsig-tmp/"
