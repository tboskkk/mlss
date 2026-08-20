#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8066540 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066540.s\"");
#else
void sub_8066540(void *arg0, s32 arg1, s32 arg2, s32 arg3) {
    void *temp_r0_7;

    temp_r0_7 = arg0 + 0x84;
    (*(s32 *)((s8 *)(arg0) + (0x84))) = arg1;
    (*(s32 *)((s8 *)(temp_r0_7) + (4))) = arg2;
    (*(s32 *)((s8 *)((temp_r0_7 + 4)) + (4))) = arg3;
}
#endif
