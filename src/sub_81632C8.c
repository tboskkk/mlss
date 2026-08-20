#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81632C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81632C8.s\"");
#else
s32 sub_81632C8(void *arg0) {
    u16 temp_r0_12;
    u16 temp_r0_8;
    u16 temp_r2_9;

    temp_r0_8 = (*(u16 *)((s8 *)(arg0) + (2)));
    temp_r2_9 = (*(u16 *)((s8 *)(arg0) + (0)));
    if ((u32) temp_r0_8 < (u32) temp_r2_9) {
        temp_r0_12 = temp_r0_8 + 1;
        (*(u16 *)((s8 *)(arg0) + (2))) = temp_r0_12;
        if ((u32) temp_r0_12 < (u32) temp_r2_9) {
            return 0;
        }
    }
    return 1;
}
#endif
