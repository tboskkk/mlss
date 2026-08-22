#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8145B00 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145B00.s\"");
#else
s32 sub_8145AB0();                              /* extern */

void sub_8145B00(s32 arg0, void *arg1) {
    void *temp_r3_16;

    (*(u8 *)((s8 *)(arg1) + (0x33E))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33E))) | 0x10);
    temp_r3_16 = (*(void **)((s8 *)(arg1) + (0x344)));
    (*(u8 *)((s8 *)(temp_r3_16) + (0x20D))) = (u8) (-5 & (*(u8 *)((s8 *)(temp_r3_16) + (0x20D))));
    (*(u8 *)((s8 *)(arg1) + (0x2B6))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x2B6))) | 0x40);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x344)))) + (0x1A0))) = 0;
    (*(u8 *)((s8 *)(arg1) + (0x33D))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x33D))) | 8);
    sub_8145AB0();
}
#endif

s32 sub_813B5B4(void *);                            /* extern */

void sub_8145B64(s32 arg0, void *arg1, s32 *arg2) {
    if ((sub_813B5B4(arg1) << 0x18) == 0) {
        *arg2 = (*(s32 *)((s8 *)(arg1) + (0x1A4)));
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145B88.s\"");
#else
s32 sub_80FBD44(void *, u8 *);                      /* extern */
s32 sub_80FBDE0(s32 *, s32, s32, s32);          /* extern */
s32 sub_8139BB0(s32 *, void *, s32, s32);   /* extern */
s32 sub_8139FB0(void *, void *, s32, s32, s32);     /* extern */
s32 sub_813B564(void *);                            /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_813B1E8;
extern s32 sub_8146F2C;
extern s32 sub_8146FAC;

void sub_8145B88(void *arg0, void *arg1, void *arg2) {
    s32 sp4;
    u8 sp14;
    s32 temp_r4_44;
    s32 var_r0_54;
    u8 var_r0_32;

    if ((*(u16 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x1B4)))) + (8))) != 0) {
        if ((sub_80FBD44(arg0, &sp14) << 0x18) != 0) {
            var_r0_32 = sp14;
        } else {
            var_r0_32 = (u8) ((u32) ((*(u8 *)((s8 *)(arg0) + (0x208))) << 0x1E) >> 0x1F);
        }
        temp_r4_44 = (*(s32 *)((s8 *)(((var_r0_32 * 4) + arg0)) + (0x28)));
        sub_8139BB0(&sp4, arg1, 0x22, 0xA);
        var_r0_54 = sub_80FBDE0(&sp4, temp_r4_44, 0x7FFF, 0);
    } else {
        var_r0_54 = sub_8139FB0(arg0, arg1, 0x11, 0x18, 3);
    }
    if ((var_r0_54 << 0x18) != 0) {
        (*(s32 **)((s8 *)(arg2) + (0))) = &sub_8146F2C;
        return;
    }
    if ((sub_813B564(arg1) << 0x18) == 0) {
        (*(u16 *)((s8 *)((arg1 + 0x58)) + (0x17A))) = (u16) (*(u16 *)((s8 *)(((sub_81DD77C(4, sub_8199F30()) * 2) + (arg1 + 0x100))) + (0x28)));
        (*(s32 **)((s8 *)(arg2) + (0))) = &sub_813B1E8;
        (*(s32 **)((s8 *)(arg2) + (0xC))) = &sub_8146FAC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145C58.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145DD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145E8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146004.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814608C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814616C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146498.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81465B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81466A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146AFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8146C78.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
