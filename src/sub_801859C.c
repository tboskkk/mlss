#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801859C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801859C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80187A8.s\"");
#else
void sub_80187A8(void) {
    void *temp_r0_12;
    void *temp_r0_16;
    void *temp_r0_18;
    void *temp_r0_20;
    void *temp_r0_22;
    void *temp_r0_24;
    void *temp_r0_26;
    void *temp_r0_28;
    void *temp_r0_30;
    void *temp_r0_32;
    void *temp_r0_34;
    void *temp_r0_36;
    void *temp_r0_38;
    void *temp_r0_40;
    void *temp_r0_42;
    void *temp_r0_44;
    void *temp_r0_46;
    void *temp_r0_48;
    void *temp_r0_50;
    void *temp_r1_13;
    void *temp_r1_17;
    void *temp_r1_19;
    void *temp_r1_21;
    void *temp_r1_23;
    void *temp_r1_25;
    void *temp_r1_27;
    void *temp_r1_29;
    void *temp_r1_31;
    void *temp_r1_33;
    void *temp_r1_35;
    void *temp_r1_37;
    void *temp_r1_39;
    void *temp_r1_41;
    void *temp_r1_43;
    void *temp_r1_45;
    void *temp_r1_47;
    void *temp_r1_49;
    void *temp_r1_51;

    (*(u16 *)((s8 *)((void *)0x04000000) + (0))) = (u16) (*(u16 *)((s8 *)((void *)0x02000000) + (0)));
    temp_r0_12 = (void *)0x02000000 + 4;
    temp_r1_13 = (void *)0x04000000 + 4;
    (*(u16 *)((s8 *)((void *)0x04000000) + (4))) = (u16) (*(u16 *)((s8 *)((void *)0x02000000) + (4)));
    temp_r0_16 = temp_r0_12 + 4;
    temp_r1_17 = temp_r1_13 + 4;
    temp_r0_18 = temp_r0_16 + 4;
    (*(s32 *)((s8 *)(temp_r1_13) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_12) + (4)));
    temp_r1_19 = temp_r1_17 + 4;
    temp_r0_20 = temp_r0_18 + 4;
    (*(s32 *)((s8 *)(temp_r1_17) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_16) + (4)));
    temp_r1_21 = temp_r1_19 + 4;
    temp_r0_22 = temp_r0_20 + 4;
    (*(s32 *)((s8 *)(temp_r1_19) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_18) + (4)));
    temp_r1_23 = temp_r1_21 + 4;
    temp_r0_24 = temp_r0_22 + 4;
    (*(s32 *)((s8 *)(temp_r1_21) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_20) + (4)));
    temp_r1_25 = temp_r1_23 + 4;
    temp_r0_26 = temp_r0_24 + 4;
    (*(s32 *)((s8 *)(temp_r1_23) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_22) + (4)));
    temp_r1_27 = temp_r1_25 + 4;
    temp_r0_28 = temp_r0_26 + 4;
    (*(s32 *)((s8 *)(temp_r1_25) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_24) + (4)));
    temp_r1_29 = temp_r1_27 + 4;
    temp_r0_30 = temp_r0_28 + 4;
    (*(s32 *)((s8 *)(temp_r1_27) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_26) + (4)));
    temp_r1_31 = temp_r1_29 + 4;
    temp_r0_32 = temp_r0_30 + 4;
    (*(s32 *)((s8 *)(temp_r1_29) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_28) + (4)));
    temp_r1_33 = temp_r1_31 + 4;
    temp_r0_34 = temp_r0_32 + 4;
    (*(s32 *)((s8 *)(temp_r1_31) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_30) + (4)));
    temp_r1_35 = temp_r1_33 + 4;
    temp_r0_36 = temp_r0_34 + 4;
    (*(s32 *)((s8 *)(temp_r1_33) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_32) + (4)));
    temp_r1_37 = temp_r1_35 + 4;
    temp_r0_38 = temp_r0_36 + 4;
    (*(s32 *)((s8 *)(temp_r1_35) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_34) + (4)));
    temp_r1_39 = temp_r1_37 + 4;
    temp_r0_40 = temp_r0_38 + 4;
    (*(s32 *)((s8 *)(temp_r1_37) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_36) + (4)));
    temp_r1_41 = temp_r1_39 + 4;
    temp_r0_42 = temp_r0_40 + 4;
    (*(s32 *)((s8 *)(temp_r1_39) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_38) + (4)));
    temp_r1_43 = temp_r1_41 + 4;
    temp_r0_44 = temp_r0_42 + 4;
    (*(s32 *)((s8 *)(temp_r1_41) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_40) + (4)));
    temp_r1_45 = temp_r1_43 + 4;
    temp_r0_46 = temp_r0_44 + 4;
    (*(s32 *)((s8 *)(temp_r1_43) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_42) + (4)));
    temp_r1_47 = temp_r1_45 + 4;
    temp_r0_48 = temp_r0_46 + 4;
    (*(s32 *)((s8 *)(temp_r1_45) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_44) + (4)));
    temp_r1_49 = temp_r1_47 + 4;
    temp_r0_50 = temp_r0_48 + 4;
    (*(s32 *)((s8 *)(temp_r1_47) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_46) + (4)));
    temp_r1_51 = temp_r1_49 + 4;
    (*(u16 *)((s8 *)(temp_r1_49) + (4))) = (u16) (*(u16 *)((s8 *)(temp_r0_48) + (4)));
    (*(s32 *)((s8 *)(temp_r1_51) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_50) + (4)));
    (*(u16 *)((s8 *)((temp_r1_51 + 4)) + (4))) = (u16) (*(u16 *)((s8 *)((temp_r0_50 + 4)) + (4)));
}
#endif
