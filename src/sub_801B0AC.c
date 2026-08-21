#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B0AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B0AC.s\"");
#else
void sub_801B0AC(s16 arg0) {
    *(s16 *)0x03000D3C = arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B1C8.s\"");
#else
s32 sub_801B1C8(void *arg0, s32 *arg1, s32 *arg2, s32 arg3) {
    s32 *sp0;
    s32 *sp4;
    s32 sp8;
    s32 temp_r0_127;
    s32 temp_r0_79;
    s32 temp_r1_130;
    s32 temp_r2_28;
    s32 temp_r2_55;
    s32 var_r0_108;
    s32 var_r0_116;
    s32 var_r10_22;
    s32 var_r2_47;
    s32 var_r2_70;
    s32 var_r5_24;
    s32 var_r9_21;
    u16 temp_r0_25;

    sp0 = arg1;
    sp4 = arg2;
    if ((*(s32 *)((s8 *)(arg0) + (0))) == 0) {
        return 0;
    }
    var_r9_21 = 0;
    var_r10_22 = 0;
    var_r5_24 = -2;
    temp_r0_25 = (*(u16 *)((s8 *)(arg0) + (4)));
    temp_r2_28 = (*(s32 *)((s8 *)(arg0) + (0xC)));
    sp8 = (*(s32 *)((s8 *)(arg0) + (8)));
    if ((s32) (temp_r0_25 + 1) >= -2) {
        do {
            if (var_r5_24 < 0) {

            }
            if (var_r5_24 > (s32) (temp_r0_25 - 1)) {

            }
            var_r2_47 = temp_r2_28 - (var_r5_24 << 0x10);
            if (var_r2_47 < 0) {
                var_r2_47 = 0 - var_r2_47;
            }
            if (var_r2_47 <= 0xFFFF) {
                temp_r2_55 = var_r2_47 >> 8;
                var_r2_70 = (s32) ((((s32) (temp_r2_55 * (temp_r2_55 * 3) * temp_r2_55) >> 8) - (temp_r2_55 * 6 * temp_r2_55)) + 0x40000) / 6;
            } else if (var_r2_47 <= 0x1FFFF) {
                temp_r0_79 = (s32) (var_r2_47 + 0xFFFE0000) >> 8;
                var_r2_70 = (s32) (temp_r0_79 * ((0 - temp_r0_79) * temp_r0_79)) / 1536;
            } else {
                var_r2_70 = 0;
            }
            var_r9_21 += M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * var_r2_70;
            var_r10_22 += M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * var_r2_70;
            var_r5_24 += 1;
        } while (var_r5_24 <= (s32) (temp_r0_25 + 1));
    }
    var_r0_108 = var_r9_21;
    if (var_r0_108 < 0) {
        var_r0_108 += 0xFF;
    }
    *sp0 = var_r0_108 >> 8;
    var_r0_116 = var_r10_22;
    if (var_r0_116 < 0) {
        var_r0_116 += 0xFF;
    }
    *sp4 = var_r0_116 >> 8;
    temp_r0_127 = (temp_r0_25 * sp8) + temp_r2_28;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r0_127;
    temp_r1_130 = (*(u16 *)((s8 *)(arg0) + (4))) << 0x10;
    if (temp_r0_127 >= temp_r1_130) {
        (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r1_130;
        *sp0 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
        *sp4 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8;
        (*(s32 *)((s8 *)(arg0) + (0))) = 0;
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B390.s\"");
#else
#error "TODO: write sub_801B390 to match asm/nonmatching/sub_801B390.s, then delete this #error"
#endif
