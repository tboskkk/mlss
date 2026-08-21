#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81548A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81548A0.s\"");
#else
s32 sub_81548A0(void *arg0, u16 arg2, s32 arg4) {
    s32 temp_r0_77;
    u8 temp_r0_12;

    temp_r0_12 = (u8) arg4;
    switch (temp_r0_12) {                           /* irregular */
    case 5:
        break;
    case 3:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x34)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u16 *)((s8 *)(arg0) + (0x18))) = 0xFE0CU;
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 1U;
        break;
    case 4:
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x3C)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */));
        (*(u8 *)((s8 *)(arg0) + (0x24))) = 2U;
        break;
    default:
        if ((*(u8 *)((s8 *)(arg0) + (0x24))) == 1) {
            (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x1C))) + (*(u16 *)((s8 *)(arg0) + (0x14))));
            (*(u16 *)((s8 *)(arg0) + (0x18))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x18))) + ((s16) arg2 + (*(u16 *)((s8 *)(arg0) + (0x20)))));
            (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
            temp_r0_77 = (*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
            (*(s32 *)((s8 *)(arg0) + (8))) = temp_r0_77;
            if (temp_r0_77 > (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)))) {
                (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x38)));
                (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
                (*(u16 *)((s8 *)(arg0) + (0x18))) = 0xFE0CU;
            }
        }
        break;
    }
    return 0;
}
#endif
