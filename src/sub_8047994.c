#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047994 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8047994(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x2B5))) = (u8) (0x3F & (*(u8 *)((s8 *)(arg0) + (0x2B5))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479A8.s\"");
#else
u32 sub_80479A8(u32 param_1) {
    u32* ptr = (u32*)((u8*)param_1 + 0x2B5);
    *ptr = (*ptr & 0xFFFFFFCF);
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80479BC.s\"");
#else
s32 sub_80479BC(void *arg0) {
    s32 temp_r0_11;
    s32 var_r1_12;

    temp_r0_11 = 0x30 & (*(u8 *)((s8 *)(arg0) + (0x2B6)));
    var_r1_12 = temp_r0_11;
    if (temp_r0_11 != 0) {
        var_r1_12 = 1;
    }
    return var_r1_12;
}
#endif
