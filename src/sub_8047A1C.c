#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047A1C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047A1C.s\"");
#else
s32 sub_8047A1C(void *arg0) {
    s32 temp_r0_11;
    s32 var_r1_12;

    temp_r0_11 = 0xC0 & (*(u8 *)((s8 *)(arg0) + (0x2B5)));
    var_r1_12 = temp_r0_11;
    if (temp_r0_11 != 0) {
        var_r1_12 = 1;
    }
    return var_r1_12;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047A3C.s\"");
#else
s32 sub_8047A3C(void *arg0) {
    s32 temp_r0_11;
    s32 var_r1_12;

    temp_r0_11 = 0x30 & (*(u8 *)((s8 *)(arg0) + (0x2B5)));
    var_r1_12 = temp_r0_11;
    if (temp_r0_11 != 0) {
        var_r1_12 = 1;
    }
    return var_r1_12;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047A5C.s\"");
#else
#error "TODO: write sub_8047A5C to match asm/nonmatching/sub_8047A5C.s, then delete this #error"
#endif
