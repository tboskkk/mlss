#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AE3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AE3C.s\"");
#else
void sub_801AE3C(void) {
    *(s16 *)0x04000208 = 0;
    *(u16 *)0x04000200 &= 0xFFBF;
    *(s16 *)0x04000208 = 1;
    *(s16 *)0x04000208 = 0;
    *(u16 *)0x04000128 &= 0xFF7F;
    *(s16 *)0x04000208 = 1;
    *(s16 *)0x0400010E = 0;
    *(s16 *)0x0400010C = 0x8000;
    *(u8 *)0x03000D18 = (-0xF & *(u8 *)0x03000D18) | 0xC;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AEA0.s\"");
#else
s32 sub_801AEA0(s32 arg0, s32 arg2) {
    s32 var_r2_0;
    u32 temp_r0_10;

    var_r2_0 = arg2;
    temp_r0_10 = (u8) *(u8 *)0x03000D18 >> 6;
    switch (temp_r0_10) {                           /* irregular */
    case 0:
        var_r2_0 = arg0;
        break;
    case 1:
        var_r2_0 = arg0 * 4;
        break;
    case 2:
        var_r2_0 = arg0 * 0x10;
        break;
    case 3:
        var_r2_0 = arg0 << 6;
        break;
    }
    return var_r2_0;
}
#endif
