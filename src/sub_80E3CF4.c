#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E3CF4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3CF4.s\"");
#else
s32 sub_8116620(s32);                               /* extern */

s32 sub_80E3CF4(void) {
    if ((sub_8116620((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248)))) << 0x18) == 0) {
        return 0;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3D1C.s\"");
#else
s32 sub_81151E4(s32, s32, u16, s32, s32, s32, s32, s32); /* extern */

void sub_80E3D1C(void) {
    u16 var_r2_14;
    void *temp_r0_13;
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r0_13 = (*(void **)((s8 *)(temp_r1_9) + (0x2D8)));
    var_r2_14 = 0;
    if (temp_r0_13 != NULL) {
        var_r2_14 = (*(u16 *)((s8 *)(temp_r0_13) + (0xA)));
    }
    sub_81151E4((*(s32 *)((s8 *)(temp_r1_9) + (0x248))), 0, var_r2_14, 0x10, 0xFFFF, 0xFFFF, 0, 0);
    *(s32 *)0x03000BD0 = -1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3D70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
