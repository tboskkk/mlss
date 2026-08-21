#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808843C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808843C.s\"");
#else
void sub_808843C(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    s16 *temp_r0_54;
    s32 var_r0_14;
    s32 var_r0_28;
    s32 var_r0_41;

    var_r0_14 = (*(s32 *)((s8 *)(arg0) + (0x38)));
    if (var_r0_14 < 0) {
        var_r0_14 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((arg1 << 0x10) | (u16) (var_r0_14 >> 8));
    var_r0_28 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
    if (var_r0_28 < 0) {
        var_r0_28 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (0x88))) = (s32) ((arg2 << 0x10) | (u16) (var_r0_28 >> 8));
    var_r0_41 = (*(s32 *)((s8 *)(arg0) + (0x40)));
    if (var_r0_41 < 0) {
        var_r0_41 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) ((arg3 << 0x10) | (u16) (var_r0_41 >> 8));
    (*(s32 *)((s8 *)(arg0) + (0x98))) = 0;
    temp_r0_54 = (arg0 + 0x98) - 0x1A;
    *temp_r0_54 = 0;
    if (arg4 > 0) {
        *(temp_r0_54 - 2) = (s16) arg4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80884AC.s\"");
#else
#error "TODO: write sub_80884AC to match asm/nonmatching/sub_80884AC.s, then delete this #error"
#endif
