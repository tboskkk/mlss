#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816F8D8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816F8D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816FADC.s\"");
#else
void sub_816FADC(void *arg0) {
    u16 temp_r2_18;
    u16 temp_r2_21;
    u16 temp_r2_24;
    u16 temp_r2_43;
    u16 temp_r3_39;
    u16 temp_r4_35;
    u16 temp_r5_31;
    u16 temp_r6_27;
    void *temp_r0_101;
    void *temp_r0_103;
    void *temp_r0_30;
    void *temp_r0_34;
    void *temp_r0_53;
    void *temp_r0_55;
    void *temp_r0_57;
    void *temp_r0_59;
    void *temp_r0_61;
    void *temp_r0_69;
    void *temp_r0_71;
    void *temp_r0_85;
    void *temp_r0_87;
    void *temp_r1_29;
    void *temp_r1_33;

    (*(u16 *)((s8 *)(arg0) + (0xE8))) = (u16) (0xEFFF & (*(u16 *)((s8 *)(arg0) + (0xE8))));
    temp_r2_18 = (*(u16 *)((s8 *)((void *)0x0600700C) + (0)));
    (*(u16 *)((s8 *)((void *)0x060070C0) + (0))) = temp_r2_18;
    temp_r2_21 = (*(u16 *)((s8 *)((void *)0x0600700C) + (2)));
    (*(u16 *)((s8 *)((void *)0x060070C0) + (2))) = temp_r2_21;
    temp_r2_24 = (*(u16 *)((s8 *)((void *)0x0600700C) + (4)));
    (*(u16 *)((s8 *)((void *)0x060070C0) + (4))) = temp_r2_24;
    temp_r6_27 = (*(u16 *)((s8 *)((void *)0x0600700C) + (6)));
    (*(u16 *)((s8 *)((void *)0x060070C0) + (6))) = temp_r6_27;
    temp_r1_29 = (void *)0x060070C0 + 0x40;
    temp_r0_30 = (void *)0x0600700C + 0x40;
    temp_r5_31 = (*(u16 *)((s8 *)((void *)0x0600700C) + (0x40)));
    (*(u16 *)((s8 *)((void *)0x060070C0) + (0x40))) = temp_r5_31;
    temp_r1_33 = temp_r1_29 + 2;
    temp_r0_34 = temp_r0_30 + 2;
    temp_r4_35 = (*(u16 *)((s8 *)(temp_r0_30) + (2)));
    (*(u16 *)((s8 *)(temp_r1_29) + (2))) = temp_r4_35;
    temp_r3_39 = (*(u16 *)((s8 *)(temp_r0_34) + (2)));
    (*(u16 *)((s8 *)(temp_r1_33) + (2))) = temp_r3_39;
    temp_r2_43 = (*(u16 *)((s8 *)((temp_r0_34 + 2)) + (2)));
    (*(u16 *)((s8 *)((temp_r1_33 + 2)) + (2))) = temp_r2_43;
    (*(u16 *)((s8 *)((void *)0x060072C0) + (0))) = temp_r2_18;
    (*(u16 *)((s8 *)((void *)0x060072C0) + (2))) = temp_r2_21;
    (*(u16 *)((s8 *)((void *)0x060072C0) + (4))) = temp_r2_24;
    (*(u16 *)((s8 *)((void *)0x060072C0) + (6))) = temp_r6_27;
    temp_r0_53 = (void *)0x060072C0 + 0x40;
    (*(u16 *)((s8 *)((void *)0x060072C0) + (0x40))) = temp_r5_31;
    temp_r0_55 = temp_r0_53 + 2;
    (*(u16 *)((s8 *)(temp_r0_53) + (2))) = temp_r4_35;
    temp_r0_57 = temp_r0_55 + 2;
    (*(u16 *)((s8 *)(temp_r0_55) + (2))) = temp_r3_39;
    temp_r0_59 = temp_r0_57 + 2;
    (*(u16 *)((s8 *)(temp_r0_57) + (2))) = temp_r2_43;
    temp_r0_61 = temp_r0_59 + 0x3A;
    (*(u16 *)((s8 *)(temp_r0_59) + (0x3A))) = temp_r2_18;
    (*(u16 *)((s8 *)(temp_r0_61) + (2))) = temp_r2_21;
    (*(u16 *)((s8 *)(temp_r0_61) + (4))) = temp_r2_24;
    (*(u16 *)((s8 *)(temp_r0_61) + (6))) = temp_r6_27;
    temp_r0_69 = temp_r0_61 + 0x40;
    (*(u16 *)((s8 *)(temp_r0_61) + (0x40))) = temp_r5_31;
    temp_r0_71 = temp_r0_69 + 2;
    (*(u16 *)((s8 *)(temp_r0_69) + (2))) = temp_r4_35;
    (*(u16 *)((s8 *)(temp_r0_71) + (2))) = temp_r3_39;
    (*(u16 *)((s8 *)((temp_r0_71 + 2)) + (2))) = temp_r2_43;
    (*(u16 *)((s8 *)((void *)0x06007144) + (0))) = temp_r2_18;
    (*(u16 *)((s8 *)((void *)0x06007144) + (2))) = temp_r2_21;
    (*(u16 *)((s8 *)((void *)0x06007144) + (4))) = temp_r2_24;
    (*(u16 *)((s8 *)((void *)0x06007144) + (6))) = temp_r6_27;
    temp_r0_85 = (void *)0x06007144 + 0x40;
    (*(u16 *)((s8 *)((void *)0x06007144) + (0x40))) = temp_r5_31;
    temp_r0_87 = temp_r0_85 + 2;
    (*(u16 *)((s8 *)(temp_r0_85) + (2))) = temp_r4_35;
    (*(u16 *)((s8 *)(temp_r0_87) + (2))) = temp_r3_39;
    (*(u16 *)((s8 *)((temp_r0_87 + 2)) + (2))) = temp_r2_43;
    (*(u16 *)((s8 *)((void *)0x060073C4) + (0))) = temp_r2_18;
    (*(u16 *)((s8 *)((void *)0x060073C4) + (2))) = temp_r2_21;
    (*(u16 *)((s8 *)((void *)0x060073C4) + (4))) = temp_r2_24;
    (*(u16 *)((s8 *)((void *)0x060073C4) + (6))) = temp_r6_27;
    temp_r0_101 = (void *)0x060073C4 + 0x40;
    (*(u16 *)((s8 *)((void *)0x060073C4) + (0x40))) = temp_r5_31;
    temp_r0_103 = temp_r0_101 + 2;
    (*(u16 *)((s8 *)(temp_r0_101) + (2))) = temp_r4_35;
    (*(u16 *)((s8 *)(temp_r0_103) + (2))) = temp_r3_39;
    (*(u16 *)((s8 *)((temp_r0_103 + 2)) + (2))) = temp_r2_43;
}
#endif
