#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FBDE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBDE0.s\"");
#else
s32 sub_80FBDE0(s32 arg0, void *arg1, u16 arg2, u16 arg3) {
    s16 temp_r4_37;
    s16 temp_r4_47;
    s32 var_r0_13;
    s32 var_r0_20;
    s32 var_r0_29;
    u32 temp_r1_35;

    var_r0_13 = (*(s32 *)((s8 *)(arg1) + (0xC)));
    if (var_r0_13 < 0) {
        var_r0_13 += 0xFF;
    }
    var_r0_20 = (*(s32 *)((s8 *)(arg1) + (0x10)));
    if (var_r0_20 < 0) {
        var_r0_20 += 0xFF;
    }
    var_r0_29 = (*(s32 *)((s8 *)(arg1) + (0x14))) + (*(s32 *)((s8 *)(arg1) + (0x18)));
    if (var_r0_29 < 0) {
        var_r0_29 += 0xFF;
    }
    temp_r1_35 = (u32) (var_r0_29 << 8) >> 0x10;
    temp_r4_37 = (s16) ((u32) (var_r0_13 << 8) >> 0x10);
    if (((s32) temp_r4_37 >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) && ((s32) temp_r4_37 <= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */))) {
        temp_r4_47 = (s16) ((u32) (var_r0_20 << 8) >> 0x10);
        if (((s32) temp_r4_47 >= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) && ((s32) temp_r4_47 <= (s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */)) && ((s32) (temp_r1_35 << 0x10) >= (s32) (arg3 << 0x10)) && ((s32) (s16) temp_r1_35 <= (s32) (s16) arg2)) {
            return 1;
        }
    }
    return 0;
}
#endif
