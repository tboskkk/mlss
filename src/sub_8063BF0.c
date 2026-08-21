#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8063BF0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063BF0.s\"");
#else
extern s32 sub_808750C;

void sub_8063BF0(void *arg0) {
    s32 temp_r1_8;
    s32 var_r0_10;

    temp_r1_8 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    var_r0_10 = temp_r1_8 + 0xFFFFFE00;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = var_r0_10;
    if (var_r0_10 < 0) {
        var_r0_10 = temp_r1_8 + 0xFFFFFEFF;
    }
    if ((s32) (var_r0_10 >> 8) < -0x20) {
        (*(s32 *)((s8 *)(arg0) + (0x10))) = 0x10000;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8063C24.s\"");
#else
#error "TODO: write sub_8063C24 to match asm/nonmatching/sub_8063C24.s, then delete this #error"
#endif
