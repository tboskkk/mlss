#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EB048 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EB048.s\"");
#else
s32 sub_80EB048(s32 *arg2) {
    (*(s8 *)((s8 *)(*(void **)0x03000FB8) + (0x32))) = (s8) *arg2;
    return 1;
}
#endif
