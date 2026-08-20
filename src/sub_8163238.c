#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163238 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163238.s\"");
#else
void sub_8163238(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s32 var_r0_20;

    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0)));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (4)));
    (*(s32 *)((s8 *)(arg0) + (8))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (0x28))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0x2C))) = 0;
    if (arg4 == 0) {
        var_r0_20 = 1;
    } else {
        var_r0_20 = 2;
    }
    (*(s32 *)((s8 *)(arg0) + (0x24))) = var_r0_20;
}
#endif
