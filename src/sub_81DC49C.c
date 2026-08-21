#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DC49C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC49C.s\"");
#else
s32 sub_81DC49C(void) {
    return *(s32 (**)())0x08CDB630() + 8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC4B0.s\"");
#else
s32 sub_81DC4C8();                              /* extern */

void sub_81DC4B0(void) {
    *(s32 (**)())0x08CDB630 = sub_81DC4C8;
    sub_81DC4C8();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC4C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC50C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/_lshrdi3.s\"");
#else
u32 _lshrdi3(u32 arg0, u32 arg1, s32 arg2) {
    s32 temp_r0_12;
    u32 var_r0_0;
    u32 var_r3_18;

    var_r0_0 = arg0;
    if (arg2 != 0) {
        temp_r0_12 = 0x20 - arg2;
        if (temp_r0_12 <= 0) {
            var_r3_18 = arg1 >> (0 - temp_r0_12);
        } else {
            var_r3_18 = (var_r0_0 >> arg2) | (arg1 << temp_r0_12);
        }
        var_r0_0 = var_r3_18;
    }
    return var_r0_0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/_muldi3.s\"");
#else
s32 _muldi3(u32 arg0, s32 arg1, u32 arg2, s32 arg3) {
    u32 sp0;
    s32 sp4;
    u32 sp8;
    s32 spC;
    u16 temp_r5_24;
    u32 temp_r2_28;
    u32 temp_r4_32;

    sp0 = arg0;
    sp4 = arg1;
    sp8 = arg2;
    spC = arg3;
    temp_r5_24 = (u16) sp0 * (u16) sp8;
    temp_r2_28 = (sp0 >> 0x10) * (u16) sp8;
    temp_r4_32 = ((u16) sp0 * (sp8 >> 0x10)) + (temp_r5_24 >> 0x10) + temp_r2_28;
    if (temp_r4_32 < temp_r2_28) {

    }
    return ((u16) temp_r4_32 << 0x10) | temp_r5_24;
}
#endif
