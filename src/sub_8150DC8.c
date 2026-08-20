#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150DC8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150DC8.s\"");
#else
void sub_8150DC8(void *arg0, s32 arg1) {
    u16 var_r0_13;

    if (arg1 == 0) {
        var_r0_13 = -9 & (*(u16 *)((s8 *)(arg0) + (0x2C)));
    } else {
        var_r0_13 = 8 | (*(u16 *)((s8 *)(arg0) + (0x2C)));
    }
    (*(u16 *)((s8 *)(arg0) + (0x2C))) = var_r0_13;
}
#endif
