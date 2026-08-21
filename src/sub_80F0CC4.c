#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0CC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0CC4.s\"");
#else
s32 get_fobj_screen_pos(void *, u32, s32 *, s32 *); /* extern */
s32 sub_8028AFC(void *, s32, s32, s32, s32, s32); /* extern */

s32 sub_80F0CC4(void *arg0, void *arg1, void *arg2) {
    s32 sp8;
    s32 spC;
    s32 temp_r1_14;
    s32 var_r0_21;
    void *temp_r0_28;

    if ((*(s32 *)((s8 *)(arg2) + (0))) == 0) {
        temp_r1_14 = (*(s32 *)((s8 *)(arg2) + (4)));
        if (0x40 & temp_r1_14) {
            var_r0_21 = (temp_r1_14 & 0xF) * 0x10;
        } else {
            var_r0_21 = temp_r1_14 << 8;
        }
        (*(s32 *)((s8 *)(arg2) + (4))) = var_r0_21;
    }
    temp_r0_28 = (*(void **)((s8 *)(arg0) + (0x14)));
    get_fobj_screen_pos(temp_r0_28, (u32) ((*(u8 *)((s8 *)(temp_r0_28) + (0x208))) << 0x1D) >> 0x1F, &sp8, &spC);
    sub_8028AFC((*(void **)((s8 *)(arg0) + (0x14))), (*(s32 *)((s8 *)(arg2) + (0))) + 1, 1, sp8 - 0x78, spC - 0x64, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0x100 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif
