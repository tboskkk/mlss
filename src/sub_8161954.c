#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161954 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161954.s\"");
#else
void *sub_8161954(void *arg0) {
    void *temp_r2_9;

    temp_r2_9 = arg0 + 8;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(temp_r2_9) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)((temp_r2_9 + 4)) + (8))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0))) = 0;
    (*(s16 *)((s8 *)(arg0) + (2))) = 0;
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
    (*(s16 *)((s8 *)(arg0) + (6))) = 0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161974.s\"");
#else
s32 sub_8161974(void *arg0) {
    s32 temp_r0_100;
    s32 temp_r0_10;
    s32 temp_r4_9;
    s32 var_r0_30;
    s32 var_r0_40;
    s32 var_r0_65;
    s32 var_r0_75;

    temp_r4_9 = (s32) (*(s32 *)((s8 *)(arg0) + (4))) >> 8;
    temp_r0_10 = (*(s32 *)((s8 *)(arg0) + (8)));
    switch (temp_r0_10) {                           /* irregular */
    case 0:
        var_r0_30 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_30 < 0) {
            var_r0_30 += 0x3F;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (4))) = (s16) ((var_r0_30 >> 6) * 2);
        var_r0_40 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_40 < 0) {
            var_r0_40 += 0x3F;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (6))) = (s16) ((var_r0_40 >> 6) * 2);
        (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + 0x200);
        if (temp_r4_9 > 0x40) {
block_18:
            (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + 1);
        }
block_21:
    default:
        return 0;
    case 1:
        var_r0_65 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_65 < 0) {
            var_r0_65 += 0x3F;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (4))) = (s16) ((var_r0_65 >> 6) * 2);
        var_r0_75 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_75 < 0) {
            var_r0_75 += 0x3F;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (6))) = (s16) ((var_r0_75 >> 6) * 2);
        (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + 0x400);
        if (temp_r4_9 > 0x60) {
            (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x50;
            goto block_18;
        }
        goto block_21;
    case 2:
        temp_r0_100 = (*(s32 *)((s8 *)(arg0) + (0xC))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_100;
        if (temp_r0_100 <= 0) {
            return 1;
        }
        goto block_21;
    }
}
#endif
