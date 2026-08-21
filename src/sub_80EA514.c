#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA514 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA514.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA530.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA550.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA584.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA5C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA60C.s\"");
#else
s32 sub_80EA60C(s32 arg0, void *arg1, void *arg2, u8 arg3, s32 arg4) {
    s32 var_r0_51;
    u8 temp_r2_14;
    u8 temp_r3_11;
    u8 var_r0_42;

    temp_r3_11 = arg3;
    temp_r2_14 = (*(u8 *)((s8 *)(arg2) + (0x11)));
    (*(u8 *)((s8 *)(arg2) + (0x11))) = (u8) ((-0x41 & temp_r2_14) | (((((u32) (temp_r2_14 << 0x19) >> 0x1F) ^ (u8) arg4) & 1) << 6));
    if (temp_r3_11 != 0) {
        (*(s32 *)((s8 *)(arg1) + (0x9C))) = (s32) temp_r3_11;
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0x20 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
        var_r0_42 = (-7 & (*(u8 *)((s8 *)(arg2) + (0x12)))) | 2;
    } else {
        var_r0_42 = -7 & (*(u8 *)((s8 *)(arg2) + (0x12)));
    }
    (*(u8 *)((s8 *)(arg2) + (0x12))) = var_r0_42;
    var_r0_51 = 0;
    if (temp_r3_11 == 0) {
        var_r0_51 = 1;
    }
    return var_r0_51;
}
#endif
