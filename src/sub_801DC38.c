#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801DC38 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801DC38(void *arg0) {
    (*(s32 (**)(s32, s32))((s8 *)(arg0) + (0x14)))((*(s32 *)((s8 *)(arg0) + (0))), (*(s32 *)((s8 *)(arg0) + (4))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DC4C.s\"");
#else
s32 sub_801D680(void *, s16, s16, s16, s32);    /* extern */
s32 sub_801DA4C(void *, s32);                   /* extern */

void sub_801DC4C(void *arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, s32 arg8, s32 arg9, u8 argA) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    s32 sp24;
    s16 temp_r0_58;
    s16 temp_r0_99;
    s16 temp_r2_115;
    s16 temp_r2_95;
    s16 temp_r4_106;
    s16 temp_r4_130;
    s16 temp_r4_67;
    s16 temp_r5_103;
    s16 temp_r5_127;
    s16 temp_r6_118;
    u16 temp_r0_33;
    u16 temp_r1_23;
    u16 temp_r2_26;
    u16 temp_r3_30;
    u16 temp_r4_37;
    u16 temp_r5_40;

    temp_r1_23 = arg1;
    sp4 = (s32) temp_r1_23;
    temp_r2_26 = arg2;
    spC = (s32) temp_r2_26;
    sp8 = (s32) temp_r2_26;
    temp_r3_30 = arg3;
    sp10 = (s32) temp_r3_30;
    temp_r0_33 = (u16) arg4;
    sp14 = (s32) temp_r0_33;
    temp_r4_37 = (u16) arg5;
    sp18 = (s32) temp_r4_37;
    temp_r5_40 = (u16) arg6;
    sp1C = (s32) temp_r5_40;
    sp20 = (s32) (u16) arg7;
    sp24 = (s32) (u8) arg9;
    if ((argA == 0) || (temp_r0_58 = (s16) temp_r3_30, temp_r4_67 = (s16) temp_r0_33, ((s32) (((s16) (temp_r0_58 - (s16) temp_r1_23) * (s16) ((s16) temp_r5_40 - temp_r4_67)) - ((s16) (temp_r4_67 - (s16) spC) * (s16) ((s16) temp_r4_37 - temp_r0_58))) >= 0))) {
        (*(s32 (**)(s32))((s8 *)(arg0) + (0x18)))((*(s32 *)((s8 *)(arg0) + (8))));
        temp_r2_95 = (s16) sp4;
        temp_r0_99 = (s16) sp8;
        temp_r5_103 = (s16) sp10;
        temp_r4_106 = (s16) sp14;
        sub_801D680(arg0, temp_r2_95, temp_r0_99, temp_r5_103, (s32) temp_r4_106);
        temp_r2_115 = (s16) sp20;
        temp_r6_118 = (s16) (u16) arg8;
        sub_801D680(arg0, temp_r5_103, temp_r4_106, temp_r2_115, (s32) temp_r6_118);
        temp_r5_127 = (s16) sp18;
        temp_r4_130 = (s16) sp1C;
        sub_801D680(arg0, temp_r2_115, temp_r6_118, temp_r5_127, (s32) temp_r4_130);
        sub_801D680(arg0, temp_r5_127, temp_r4_130, temp_r2_95, (s32) temp_r0_99);
        sub_801DA4C(arg0, sp24);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DD80.s\"");
#else
s32 sub_801D680(void *, s16, s16, s16, s32);    /* extern */
s32 sub_801DA4C(void *, s32);                   /* extern */

void sub_801DD80(void *arg0, u16 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7, u8 arg8) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    s16 temp_r0_50;
    s16 temp_r0_95;
    s16 temp_r2_87;
    s16 temp_r4_111;
    s16 temp_r4_59;
    s16 temp_r5_108;
    s16 temp_r6_91;
    s16 temp_r6_99;
    u16 temp_r0_31;
    u16 temp_r1_21;
    u16 temp_r2_24;
    u16 temp_r3_28;
    u16 temp_r4_36;
    u16 temp_r5_39;

    temp_r1_21 = arg1;
    sp4 = (s32) temp_r1_21;
    temp_r2_24 = arg2;
    sp8 = (s32) temp_r2_24;
    temp_r3_28 = arg3;
    spC = (s32) temp_r3_28;
    temp_r0_31 = (u16) arg4;
    sp10 = (s32) temp_r0_31;
    temp_r4_36 = (u16) arg5;
    sp14 = (s32) temp_r4_36;
    temp_r5_39 = (u16) arg6;
    sp18 = (s32) temp_r5_39;
    sp1C = (s32) (u8) arg7;
    if ((arg8 == 0) || (temp_r0_50 = (s16) temp_r3_28, temp_r4_59 = (s16) temp_r0_31, ((s32) (((s16) (temp_r0_50 - (s16) temp_r1_21) * (s16) ((s16) temp_r5_39 - temp_r4_59)) - ((s16) (temp_r4_59 - (s16) temp_r2_24) * (s16) ((s16) temp_r4_36 - temp_r0_50))) >= 0))) {
        (*(s32 (**)(s32))((s8 *)(arg0) + (0x18)))((*(s32 *)((s8 *)(arg0) + (8))));
        temp_r2_87 = (s16) sp4;
        temp_r6_91 = (s16) sp8;
        temp_r0_95 = (s16) spC;
        temp_r6_99 = (s16) sp10;
        sub_801D680(arg0, temp_r2_87, temp_r6_91, temp_r0_95, (s32) temp_r6_99);
        temp_r5_108 = (s16) sp14;
        temp_r4_111 = (s16) sp18;
        sub_801D680(arg0, temp_r0_95, temp_r6_99, temp_r5_108, (s32) temp_r4_111);
        sub_801D680(arg0, temp_r5_108, temp_r4_111, temp_r2_87, (s32) temp_r6_91);
        sub_801DA4C(arg0, sp1C);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DE8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DF14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DFB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801E150.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
