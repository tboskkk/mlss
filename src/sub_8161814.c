#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161814 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161814.s\"");
#else
s32 sub_8161814(void *arg0) {
    s32 temp_r0_9;
    s32 temp_r1_33;
    u16 temp_r0_19;
    u16 temp_r0_55;

    temp_r0_9 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    switch (temp_r0_9) {                            /* irregular */
    case 1:
        temp_r0_19 = (*(u16 *)((s8 *)(arg0) + (0))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0))) = temp_r0_19;
        if ((s32) (temp_r0_19 << 0x10) < 0) {
            (*(u16 *)((s8 *)(arg0) + (0))) = 0x50U;
            (*(u16 *)((s8 *)(arg0) + (2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (2))) + 1);
        }
        temp_r1_33 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0x3E8;
        (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r1_33;
        (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + 0xFFFFFC18);
        *(*(s16 **)((s8 *)(arg0) + (8))) = (temp_r1_33 >> 8) + (*(u16 *)((s8 *)(arg0) + (4)));
        *(*(s16 **)((s8 *)(arg0) + (0xC))) = ((s32) (*(s32 *)((s8 *)(arg0) + (0x14))) >> 8) + (*(u16 *)((s8 *)(arg0) + (6)));
block_9:
    default:
        return 0;
    case 2:
        temp_r0_55 = (*(u16 *)((s8 *)(arg0) + (0))) - 1;
        (*(u16 *)((s8 *)(arg0) + (0))) = temp_r0_55;
        if ((s32) (temp_r0_55 << 0x10) <= 0) {
            return 1;
        }
        goto block_9;
    }
}
#endif
