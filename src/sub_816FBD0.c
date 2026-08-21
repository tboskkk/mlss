#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816FBD0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816FBD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816FE48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81700E4.s\"");
#else
void *sub_8161C28(void *, s32);                     /* extern */
s32 sub_8163ADC(void *, s32, s32, s32, s32, s32); /* extern */
s32 sub_8163CD4(s32);                       /* extern */
s32 sub_8171BF0(void *);                        /* extern */

void *sub_81700E4(void *arg0, s32 arg1) {
    void *temp_r1_39;
    void *temp_r1_43;
    void *temp_r1_67;
    void *temp_r1_71;

    sub_8161C28(arg0, 0xA);
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD2A8;
    (*(void **)((s8 *)(arg0) + (0x6C))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08218ED8, 0U), 0xB);
    sub_8163CD4(arg1);
    sub_8163ADC((*(void **)((s8 *)(arg0) + (0x6C))), 4, 0x5009, 0, 0x11, 2);
    temp_r1_39 = (*(void **)((s8 *)(arg0) + (0x6C)));
    (*(s32 *)((s8 *)(temp_r1_39) + (0x18))) = 0x6E00;
    temp_r1_43 = (*(void **)((s8 *)(temp_r1_39) + (0x10)));
    (*(u8 *)((s8 *)(temp_r1_43) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_43) + (0x12))) | 0x10);
    (*(void **)((s8 *)(arg0) + (0x70))) = sub_8161C28(alloc_Zero(0x6CU, 0U, (s8 *)0x08218EE0, 0U), 0xC);
    sub_8163CD4(arg1);
    sub_8163ADC((*(void **)((s8 *)(arg0) + (0x70))), 4, 0x5009, 0, 0x10, 2);
    temp_r1_67 = (*(void **)((s8 *)(arg0) + (0x70)));
    (*(s32 *)((s8 *)(temp_r1_67) + (0x20))) = 0x5C00;
    temp_r1_71 = (*(void **)((s8 *)(temp_r1_67) + (0x10)));
    (*(u8 *)((s8 *)(temp_r1_71) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_71) + (0x12))) | 0x10);
    sub_8171BF0(arg0);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81701A8.s\"");
#else
s32 sub_8163A6C();                              /* extern */

void sub_81701A8(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    s8 var_r1_71;
    u16 *var_r1_26;
    u16 temp_r1_42;
    u16 var_r0_27;
    void *temp_r2_56;
    void *temp_r3_48;
    void *temp_r3_61;
    void *temp_r3_75;
    void *var_r2_69;

    sub_8163A6C();
    if ((1 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x28)))) && !(0x80 & (*(u16 *)((s8 *)(arg1) + (0xE8))))) {
        var_r1_26 = arg0 + 0x56;
        var_r0_27 = 5;
    } else {
        var_r1_26 = arg0 + 0x56;
        var_r0_27 = 0;
    }
    *var_r1_26 = var_r0_27;
    if ((*(u16 *)((s8 *)(arg0) + (0x58))) != *var_r1_26) {
        temp_r1_42 = *var_r1_26;
        if (temp_r1_42 != 0) {
            if (temp_r1_42 == 5) {
                temp_r3_48 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0x10)));
                (*(u8 *)((s8 *)(temp_r3_48) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r3_48) + (0x12))));
                temp_r2_56 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x70)))) + (0x10)));
                (*(u8 *)((s8 *)(temp_r2_56) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r2_56) + (0x12))));
                temp_r3_61 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0x10)));
                (*(u8 *)((s8 *)(temp_r3_61) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r3_61) + (0x12))));
                var_r2_69 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x70)))) + (0x10)));
                var_r1_71 = -7 & (*(u8 *)((s8 *)(var_r2_69) + (0x12)));
                goto block_9;
            }
        } else {
            temp_r3_75 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0x10)));
            (*(u8 *)((s8 *)(temp_r3_75) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r3_75) + (0x12)))) | 2);
            var_r2_69 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x70)))) + (0x10)));
            var_r1_71 = (-7 & (*(u8 *)((s8 *)(var_r2_69) + (0x12)))) | 2;
block_9:
            (*(s8 *)((s8 *)(var_r2_69) + (0x12))) = var_r1_71;
        }
    }
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x70)))) + (0x18))) = arg2;
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (0x20))) = (s32) (arg3 + 0xFFFFFB00);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8170264.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8170718.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81707FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8170BD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171298.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8171AFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
