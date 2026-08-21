#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AEDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AEDC.s\"");
#else
u32 sub_801AEDC(void) {
    s32 temp_r1_27;
    u32 temp_r0_8;
    u32 temp_r4_9;
    u32 var_r3_12;
    u8 temp_r0_16;
    u8 var_r0_13;

    temp_r0_8 = (*(u32 *)((s8 *)((void *)0x03000D18) + (8)));
    temp_r4_9 = temp_r0_8 >> 4;
    var_r3_12 = temp_r4_9 >> 0x18;
    var_r0_13 = 6;
    do {
        temp_r0_16 = var_r0_13 - 1;
        var_r3_12 ^= (temp_r4_9 >> (temp_r0_16 * 4)) & 0xF;
        var_r0_13 = temp_r0_16;
    } while (var_r0_13 != 0);
    temp_r1_27 = var_r3_12 ^ (0xF & temp_r0_8);
    return (u32) ((0 - temp_r1_27) | temp_r1_27) >> 0x1F;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AF50.s\"");
#else
#error "TODO: write sub_801AF50 to match asm/nonmatching/sub_801AF50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/make_fldm_801AF5C.s\"");
#else
#error "TODO: write make_fldm_801AF5C to match asm/nonmatching/make_fldm_801AF5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AFA0.s\"");
#else
#error "TODO: write sub_801AFA0 to match asm/nonmatching/sub_801AFA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AFE4.s\"");
#else
#error "TODO: write sub_801AFE4 to match asm/nonmatching/sub_801AFE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B034.s\"");
#else
#error "TODO: write sub_801B034 to match asm/nonmatching/sub_801B034.s, then delete this #error"
#endif
