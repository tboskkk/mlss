#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8068818 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068818.s\"");
#else
void sub_8068818(void *arg0) {
    s32 temp_r0_16;

    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0) {
        temp_r0_16 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFE00;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r0_16;
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x84))) >= temp_r0_16) {
            (*(s16 *)((s8 *)(arg0) + (0xAC))) = 1;
        }
    }
}
#endif
