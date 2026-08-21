#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D2D28 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D28.s\"");
#else
s32 sub_807C298();                              /* extern */

void sub_80D2D28(void) {
    sub_807C298();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D34.s\"");
#else
s32 sub_807C298(s32);                           /* extern */

void sub_80D2D34(void) {
    sub_807C298((*(s32 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)))) + (0x38))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D4C.s\"");
#else
s32 sub_80884AC();                              /* extern */

void sub_80D2D4C(void *arg0) {
    sub_80884AC();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D6C.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80D2D6C(void *arg0) {
    void *temp_r2_22;
    void *temp_r2_8;

    temp_r2_8 = (*(void **)((s8 *)(arg0) + (8)));
    if (8 & (*(u8 *)((s8 *)(temp_r2_8) + (0x12)))) {
        sub_8082E1C(arg0, (*(u8 *)((s8 *)(temp_r2_8) + (0x21))) + 1, 0, 0);
        temp_r2_22 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_22) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_22) + (0x12))));
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2DA4.s\"");
#else
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80CFB38;

void sub_80D2DA4(void *arg0) {
    s32 temp_r3_16;
    s32 temp_r5_13;
    void *temp_r1_10;
    void *temp_r2_12;

    temp_r1_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    temp_r2_12 = temp_r1_10 + 8;
    temp_r5_13 = (*(s32 *)((s8 *)(temp_r2_12) + (0x10)));
    temp_r3_16 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if ((temp_r3_16 < (s32) (temp_r5_13 + 0xFFFFF800)) || (((s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x18))) + ((s8) (*(u8 *)((s8 *)(temp_r1_10) + (0xCD))) << 8)) < (s32) (*(s32 *)((s8 *)(arg0) + (0x18)))) && ((s32) (temp_r5_13 + 0x800) < temp_r3_16))) {
        sub_8087CE4(arg0);
        return;
    }
    play_sfx_80195B4(0x9C, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80CFB38;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2E08.s\"");
#else
s32 sub_807C298(s32);                           /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80CEDC0;

void sub_80D2E08(void *arg0) {
    s32 temp_r1_32;
    void *temp_r1_9;
    void *temp_r2_43;
    void *temp_r4_15;
    void *temp_r5_13;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r5_13 = (*(void **)((s8 *)(temp_r1_9) + (0x74)));
    temp_r4_15 = temp_r5_13 + 8;
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_15) + (8)))) + (0x12)))) {
        sub_807C298((*(s32 *)((s8 *)(((*(s32 *)((s8 *)(temp_r1_9) + (0x70))) + 8)) + (0x30))));
        play_sfx_80195B4(0x38, -1);
        temp_r1_32 = 6 & (*(u8 *)((s8 *)(temp_r5_13) + (0x7E)));
        if ((temp_r1_32 == 2) || (temp_r1_32 == 4)) {
            sub_8082E1C(temp_r4_15, 0, 0x2009, 0);
            temp_r2_43 = (*(void **)((s8 *)(temp_r4_15) + (8)));
            (*(u8 *)((s8 *)(temp_r2_43) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_43) + (0x12)))) | 2);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80CEDC0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2E7C.s\"");
#else
s32 sub_807C298(s32);                           /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80CDFBC;

void sub_80D2E7C(void *arg0) {
    s32 temp_r1_32;
    void *temp_r1_9;
    void *temp_r2_43;
    void *temp_r4_15;
    void *temp_r5_13;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r5_13 = (*(void **)((s8 *)(temp_r1_9) + (0x74)));
    temp_r4_15 = temp_r5_13 + 8;
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_15) + (8)))) + (0x12)))) {
        sub_807C298((*(s32 *)((s8 *)(((*(s32 *)((s8 *)(temp_r1_9) + (0x70))) + 8)) + (0x30))));
        play_sfx_80195B4(0x38, -1);
        temp_r1_32 = 6 & (*(u8 *)((s8 *)(temp_r5_13) + (0x7E)));
        if ((temp_r1_32 == 2) || (temp_r1_32 == 4)) {
            sub_8082E1C(temp_r4_15, 0, 0x2009, 0);
            temp_r2_43 = (*(void **)((s8 *)(temp_r4_15) + (8)));
            (*(u8 *)((s8 *)(temp_r2_43) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_43) + (0x12)))) | 2);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80CDFBC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2EF0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4(void *);                        /* extern */
extern s32 sub_80CD18C;

void sub_80D2EF0(void *arg0) {
    s32 temp_r1_26;
    void *temp_r2_38;
    void *temp_r2_44;
    void *temp_r4_10;
    void *temp_r5_12;

    temp_r4_10 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    temp_r5_12 = temp_r4_10 + 8;
    sub_8087CE4(temp_r5_12);
    if (0x20 & (*(u8 *)((s8 *)(temp_r4_10) + (0x81)))) {
        temp_r1_26 = 6 & (*(u8 *)((s8 *)(temp_r4_10) + (0x7E)));
        if ((temp_r1_26 == 2) || (temp_r1_26 == 4)) {
            sub_8082E1C(temp_r5_12, 0, -1, 0);
            temp_r2_38 = (*(void **)((s8 *)(temp_r5_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_38) + (0x11))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_38) + (0x11))));
            temp_r2_44 = (*(void **)((s8 *)(temp_r5_12) + (8)));
            (*(u8 *)((s8 *)(temp_r2_44) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_44) + (0x12))));
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80CD18C;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2FF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
