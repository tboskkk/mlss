#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8106A10 needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_8082B00();
extern s32 sub_8100E5C;

s32 sub_80F7538();

extern s32 sub_8104D14;

void sub_8106A10(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0x10)))) + (0x12)))) {
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8104D14;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106A30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106A88.s\"");
#else
s16 sub_810489C(void *, s32);                       /* extern */
extern s32 sub_8104A00;

void sub_8106A88(void *arg0) {
    s16 temp_r0_13;
    s16 temp_r2_16;
    u16 temp_r0_19;

    temp_r0_13 = sub_810489C(arg0, M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 3);
    (*(s16 *)((s8 *)(arg0) + (0x10))) = temp_r0_13;
    temp_r2_16 = 0x7FF & temp_r0_13;
    if (temp_r2_16 == 0) {
        temp_r0_19 = (*(u16 *)((s8 *)(arg0) + (0x14)));
        (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) (temp_r0_19 + 1);
        if ((s32) (s16) temp_r0_19 > 7) {
            (*(s16 *)((s8 *)(arg0) + (0x10))) = temp_r2_16;
            (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8104A00;
        }
    }
}
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8104184;

void sub_8106AC8(void *arg0) {
    void *temp_r4_13;

    temp_r4_13 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x278)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_13) + (8)))) + (0x12)))) {
        sub_8082E1C(temp_r4_13, 5, 0, 0);
        (*(s8 *)((s8 *)((*(void **)((s8 *)(temp_r4_13) + (8)))) + (0x20))) = 0x10;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8104184;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106B0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106B90.s\"");
#else
s32 sub_810D3B8(s32, s32, s32, s32);            /* extern */

void sub_8106B90(s32 arg0) {
    sub_810D3B8(M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) + 8, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) - 8, 0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106BB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106BEC.s\"");
#else
s32 sub_810D3B8(s32, s32, s32, s32);    /* extern */

void sub_8106BEC(void *arg0) {
    sub_810D3B8((*(s32 *)((s8 *)(arg0) + (0xC))), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), ((s32) ((*(u16 *)((s8 *)(arg0) + (0x10))) << 0x10) >> 0x1C) & 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106C10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106C64.s\"");
#else
s32 sub_8081E74();                              /* extern */
s32 sub_80F7538(s32);                           /* extern */
extern s32 sub_81072A8;

void sub_8106C64(void *arg0) {
    void *temp_r1_78;
    void *temp_r2_29;
    void *temp_r2_36;
    void *temp_r2_43;
    void *temp_r2_50;
    void *temp_r2_57;
    void *temp_r2_64;
    void *temp_r2_71;
    void *temp_r3_14;

    temp_r3_14 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x2D8)));
    (*(u8 *)((s8 *)(temp_r3_14) + (5))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r3_14) + (5)))) | 1);
    temp_r2_29 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x58)));
    (*(u8 *)((s8 *)(temp_r2_29) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_29) + (0x122))));
    temp_r2_36 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x5C)));
    (*(u8 *)((s8 *)(temp_r2_36) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_36) + (0x122))));
    temp_r2_43 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x60)));
    (*(u8 *)((s8 *)(temp_r2_43) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_43) + (0x122))));
    temp_r2_50 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x64)));
    (*(u8 *)((s8 *)(temp_r2_50) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_50) + (0x122))));
    temp_r2_57 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x68)));
    (*(u8 *)((s8 *)(temp_r2_57) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_57) + (0x122))));
    temp_r2_64 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x6C)));
    (*(u8 *)((s8 *)(temp_r2_64) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_64) + (0x122))));
    temp_r2_71 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x70)));
    (*(u8 *)((s8 *)(temp_r2_71) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_71) + (0x122))));
    temp_r1_78 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x74)));
    (*(u8 *)((s8 *)(temp_r1_78) + (0x122))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r1_78) + (0x122))));
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_81072A8;
    sub_80F7538(0x20000000);
    sub_8081E74();
}
#endif

extern s32 sub_81054D4;
void sub_8106D20(void *arg0)
{
  void *temp_r3_12;
  temp_r3_12 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x2D8));
  *((u8 *) (((s8 *) temp_r3_12) + 5)) = (u8) (((-4) & (*(((s8 *) temp_r3_12) + 5))) | 2);
  *((s32 **) (((s8 *) arg0) + 4)) = &sub_81054D4;
  sub_80F7538(0x200000);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106D54.s\"");
#else
s32 sub_80F7538(s32);                           /* extern */
s32 sub_810C950();                              /* extern */
s32 sub_810CAD0();                              /* extern */
extern s32 sub_81015E4;

void sub_8106D54(void *arg0) {
    void *temp_r2_13;

    temp_r2_13 = (*(void **)((s8 *)(*(void **)0x03000FD8) + (0x2D8)));
    (*(u8 *)((s8 *)(temp_r2_13) + (5))) = (u8) (-4 & (*(u8 *)((s8 *)(temp_r2_13) + (5))));
    sub_810CAD0();
    sub_810C950();
    sub_8019308(1, 0xB, -1);
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_81015E4;
    sub_80F7538(0x400000);
}
#endif

s32 sub_810591C();                                  /* extern */
s32 sub_810CB04(s32, s32);                      /* extern */
extern s32 sub_80FCC78;

void sub_8106D9C(void *arg0) {
    void *temp_r2_13;

    if ((sub_810591C() << 0x18) != 0) {
        temp_r2_13 = *(void **)0x03000FD8;
        if (!(4 & (*(u8 *)((s8 *)(temp_r2_13) + (0x2BF))))) {
            if ((*(u8 *)((s8 *)(temp_r2_13) + (0x346))) == 2) {
                sub_810CB04(0, 0);
                sub_810CB04(1, 0);
            }
            (*(s32 **)((s8 *)(arg0) + (4))) = &sub_80FCC78;
        }
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106DF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 nullsub_4();                                /* extern */
s32 sub_8081E2C(s32);                           /* extern */
s32 sub_80F75D8(s32);                           /* extern */
extern s32 sub_8100D18;

void sub_8106E1C(void *arg0) {
    s32 temp_r4_16;
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r1_9) + (0x310))) == 0) {
        temp_r4_16 = (*(s32 *)((s8 *)(temp_r1_9) + (0x7C)));
        nullsub_4();
        sub_8081E2C(temp_r4_16 + 8);
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8100D18;
        sub_80F75D8(4);
    }
}

s32 sub_8082B00();                                  /* extern */
s32 sub_8095584(s32);                           /* extern */
s32 sub_80F7068(u8, s32);                       /* extern */
s32 sub_80F75B4(s32);                           /* extern */
extern s32 sub_8100E5C;

void sub_8106E58(void *arg0) {
    void *temp_r2_13;

    if ((sub_8082B00() << 0x18) == 0) {
        temp_r2_13 = *(void **)0x03000FD8;
        if (!(4 & (*(u8 *)((s8 *)(temp_r2_13) + (0xB))))) {
            sub_8095584((*(s32 *)((s8 *)(temp_r2_13) + (0x7C))) + 8);
            sub_80F7068((*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0x349))), -1);
            (*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0x349))) = 0xFFU;
            (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8100E5C;
            sub_80F75B4(8);
        }
    }
}

s32 sub_8081EAC(u8);                            /* extern */
void sub_8106EB0(void *arg0) {
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000FD8;
    if ((*(s32 *)((s8 *)(temp_r1_9) + (0x310))) == 0) {
        sub_8081EAC((*(u8 *)((s8 *)(temp_r1_9) + (0x349))));
        (*(s32 **)((s8 *)(arg0) + (4))) = (s32 *) &sub_8106E58;
        sub_80F75D8(4);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106EE8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106F34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106F8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106FFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107040.s\"");
#else
void sub_8107040(void *arg0) {
    s32 (*temp_r1_12)();
    s32 (*temp_r1_23)(void *);

    temp_r1_12 = (*(s32 (**)())((s8 *)(((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x7C))) + 8)) + (0x4C)));
    if (temp_r1_12 != NULL) {
        temp_r1_12();
        return;
    }
    temp_r1_23 = (*(s32 (**)(void *))((s8 *)(*(void **)0x03000FDC) + (0x8E58)));
    (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = temp_r1_23;
    temp_r1_23(arg0);
}
#endif

void sub_810707C(void *arg0) {
    s32 (*temp_r1_23)(void *);

    if (!(0x20 & (*(u8 *)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x7C)))) + (0x122))))) {
        temp_r1_23 = (*(s32 (**)(void *))((s8 *)(*(void **)0x03000FDC) + (0x8E58)));
        (*(s32 (**)(void *))((s8 *)(arg0) + (4))) = temp_r1_23;
        temp_r1_23(arg0);
    }
}
