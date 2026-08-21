#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9C4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9C4C.s\"");
#else
s32 sub_80E9958(s32, s32, u16, u8);             /* extern */
s32 sub_80E9A6C(u16, u16);                      /* extern */
s32 sub_80E9BD8(s32);                           /* extern */

void sub_80E9C4C(s32 arg0, s32 arg2, s32 arg3, s32 arg4, s32 arg5) {
    s16 temp_r0_21;
    s16 temp_r1_23;
    s16 temp_r2_13;

    temp_r2_13 = (s16) arg4;
    if ((s32) temp_r2_13 <= 0x3C) {
        sub_80E9BD8(arg0);
        return;
    }
    temp_r0_21 = temp_r2_13 - 0x3D;
    temp_r1_23 = temp_r0_21;
    if ((s32) temp_r1_23 <= 0x1B8F) {
        sub_80E9958(arg2, arg3, (u16) temp_r0_21, (u8) arg5);
        return;
    }
    if ((s32) temp_r1_23 <= 0x1D17) {
        sub_80E9A6C((u16) temp_r0_21, (u16) arg5);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9CA8.s\"");
#else
u8 sub_80E98C0(s32, s32, u16);                      /* extern */
u16 sub_80E99E0(u16);                               /* extern */
u8 sub_80E9C14(s32);                                /* extern */

u8 sub_80E9CA8(s32 arg0, s32 arg2, s32 arg3, s32 arg4) {
    s16 temp_r0_19;
    s16 temp_r1_21;
    s16 temp_r2_11;

    temp_r2_11 = (s16) arg4;
    if ((s32) temp_r2_11 <= 0x3C) {
        return sub_80E9C14(arg0);
    }
    temp_r0_19 = temp_r2_11 - 0x3D;
    temp_r1_21 = temp_r0_19;
    if ((s32) temp_r1_21 <= 0x1B8F) {
        return sub_80E98C0(arg2, arg3, (u16) temp_r0_19);
    }
    if ((s32) temp_r1_21 > 0x1D17) {
        return 0U;
    }
    return (u8) sub_80E99E0((u16) temp_r0_19);
}
#endif
