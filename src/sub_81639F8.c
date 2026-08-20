#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81639F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81639F8.s\"");
#else
u32* sub_81639F8(u32* param_1, u32 param_2) {
    param_1[0x11] = param_2;
    param_1[0x10] = 0;
    param_1[0x12] = 0;
    return param_1;
}
#endif

s32 sub_8163A08(void *arg0) {
    if (((*(s32 *)((s8 *)(arg0) + (0x44))) != 0) && ((*(s32 *)((s8 *)(arg0) + (0x40))) != 1)) {
        return 0;
    }
    return 1;
}
