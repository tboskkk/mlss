#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81385A8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81385A8.s\"");
#else
s32 sub_8138F1C(s32, s32, s32, s32);            /* extern */

void sub_81385A8(void *arg0) {
    s32 temp_r0_11;
    s32 temp_r0_16;
    s32 temp_r0_38;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x25C)));
    if (temp_r0_11 != -1) {
        temp_r0_16 = temp_r0_11 + 1;
        (*(s32 *)((s8 *)(arg0) + (0x25C))) = temp_r0_16;
        temp_r0_38 = (sub_8138F1C(temp_r0_16, (*(s32 *)((s8 *)(arg0) + (0x1C0))), M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), (*(s32 *)((s8 *)(arg0) + (0x254)))) + (*(s32 *)((s8 *)(arg0) + (0x24C)))) - (*(s32 *)((s8 *)(arg0) + (0x14)));
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_38;
        if (temp_r0_38 <= 0) {
            (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
            (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
            (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8138610.s\"");
#else
void sub_8138610(void *arg0) {
    s32 var_r0_22;
    s32 var_r0_46;

    var_r0_22 = (*(s32 *)((s8 *)(arg0) + (0x2CC))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_22 < 0) {
        var_r0_22 += 0x3F;
    }
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) ((var_r0_22 >> 6) + ((*(s32 *)((s8 *)(arg0) + (0x2BC))) << 8));
    var_r0_46 = (*(s32 *)((s8 *)(arg0) + (0x2D0))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_46 < 0) {
        var_r0_46 += 0x3F;
    }
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((var_r0_46 >> 6) + ((*(s32 *)((s8 *)(arg0) + (0x2C0))) << 8));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0x2C8))) << 8) - (*(s32 *)((s8 *)(arg0) + (0x14))));
    (*(u8 *)((s8 *)(arg0) + (0x2F4))) = (s32) (u8) ((s32) (*(u8 *)((s8 *)(arg0) + (0x2F4))) + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(s16 *)((s8 *)(arg0) + (0x242))) = (s16) ((*(s32 *)((s8 *)(arg0) + (0xC))) - (*(s32 *)((s8 *)(arg0) + (0x34))));
    (*(s16 *)((s8 *)(arg0) + (0x244))) = (s16) ((*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x38))));
}
#endif
