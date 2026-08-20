#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087BA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087BA4.s\"");
#else
void sub_8087BA4(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (s16) temp_r0_11 <= 1) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x50)));
        (*(s32 *)((s8 *)(arg0) + (0x50))) = 0;
    }
}
#endif
