#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80883F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80883F0.s\"");
#else
s32 sub_80883F0(void *arg0) {
    s32 var_r0_16;
    u16 temp_r0_23;

    var_r0_16 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    temp_r0_23 = (var_r0_16 >> 8) + (*(u16 *)((s8 *)(arg0) + (0x7E)));
    (*(u16 *)((s8 *)(arg0) + (0x7E))) = temp_r0_23;
    if ((s32) (temp_r0_23 << 0x10) > 0x3FFF0000) {
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808842C.s\"");
#else
s32 sub_8088164();                              /* extern */

void sub_808842C(void *arg0, s16 arg2) {
    (*(s16 *)((s8 *)(arg0) + (0x92))) = arg2;
    sub_8088164();
}
#endif
