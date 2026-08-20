#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8171F44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171F44.s\"");
#else
void sub_8171F44(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x6C))) = 0xB4;
    (*(s32 *)((s8 *)(arg0) + (0x70))) = 0;
}
#endif
