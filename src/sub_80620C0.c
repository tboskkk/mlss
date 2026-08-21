#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80620C0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80620C0.s\"");
#else
extern s32 sub_8062188;

s32 sub_80620C0(void *arg0) {
    u32 temp_r0_10;
    u32 var_r0_13;

    temp_r0_10 = (*(u32 *)((s8 *)(arg0) + (0x9C)));
    if (temp_r0_10 > 2U) {
        var_r0_13 = 2;
    } else {
        var_r0_13 = temp_r0_10 + 2;
    }
    (*(u32 *)((s8 *)(arg0) + (0x9C))) = var_r0_13;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8062188;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80620F8.s\"");
#else
extern s32 sub_8062188;

s32 sub_80620F8(void *arg0) {
    s32 *var_r1_18;
    s32 var_r0_19;

    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r1_18 = arg0 + 0x9C;
        var_r0_19 = 0;
    } else {
        var_r1_18 = arg0 + 0x9C;
        var_r0_19 = 1;
    }
    *var_r1_18 = var_r0_19;
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = 0;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8062188;
    return 1;
}
#endif
