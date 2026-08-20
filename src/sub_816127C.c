#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816127C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816127C.s\"");
#else
void sub_816127C(void *arg0, void *arg1) {
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) - (*(s32 *)((s8 *)(arg1) + (0)))) >> 8);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg1) + (4)))) >> 8);
}
#endif
