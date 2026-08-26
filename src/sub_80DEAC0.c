#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DEAC0 needs.

asm_unified(".include \"asm/macros.inc\"");








void sub_80DEDB0(void *arg0);

void sub_80DEE80(struct Entity *arg0);

s32 stop_sfx_80195A8();

s32 sub_8082B00();
s32 sub_8087540();
s32 sub_8082E1C();
extern s32 sub_80DE4A4;

int sub_807C298();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEAC0.s\"");
#else
void sub_80DEAC0(void *arg0) {
    s32 temp_r2_8;
    s32 var_r0_14;

    temp_r2_8 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (temp_r2_8 > 0x200) {
        var_r0_14 = temp_r2_8 + 0xFFFFFE00;
    } else {
        var_r0_14 = 0;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = var_r0_14;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEAE0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087540(void *);                        /* extern */

void sub_80DEAE0(void *arg0) {
    u8 temp_r2_18;
    void *temp_r3_17;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0, 0, 0);
        temp_r3_17 = (*(void **)((s8 *)(arg0) + (8)));
        temp_r2_18 = (*(u8 *)((s8 *)(temp_r3_17) + (0x11)));
        (*(u8 *)((s8 *)(temp_r3_17) + (0x11))) = (u8) ((-0x41 & temp_r2_18) | ((((u32) (temp_r2_18 << 0x19) >> 0x1F) ^ 1) << 6));
        sub_8087540(arg0);
    }
}
#endif

extern s32 sub_80DDC8C;

void sub_80DEB1C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 8, 0, 0);
        play_sfx_80195B4(0x126, -1);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x30;
        arg0->handler = &sub_80DDC8C;
    }
}

s32 sub_8087124(s32, s32, s32);                 /* extern */
unsigned int sub_80DEB58(s32 arg0, s32 arg1, s32 arg2)
{
  stop_sfx_80195A8(0x11C);
  sub_8087124(arg0, arg1, arg2);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEB78.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80DDBF4;

void sub_80DEB78(void *arg0) {
    s32 var_r2_19;

    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        var_r2_19 = 4;
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) != -1) {
            var_r2_19 = 6;
        }
        sub_8082E1C(arg0, var_r2_19, 0, 0);
        stop_sfx_80195A8(0x11C);
        (*(s16 *)((s8 *)((arg0 + 0x9C)) + (0x10))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x9C)));
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DDBF4;
    }
}
#endif

extern s32 sub_80DE670;

void sub_80DEC44(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = &sub_80DE670;
    }
}

void sub_80DEC60(void) {
    sub_807C298();
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEC6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DECC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_80DDAE4;

void sub_80DED30(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = &sub_80DDAE4;
    }
}

void sub_80DED4C(void *arg0)
{
  int new_var;
  void *temp_r2_16;
  if (sub_8082B00() == 0)
  {
    sub_8082E1C(arg0, 0xA, 0, 0);
    temp_r2_16 = *((void **) (((s8 *) arg0) + 8));
    new_var = *((u8 *) (((s8 *) temp_r2_16) + 0x12));
    new_var = ((-7) & new_var) | 2;
    *((u8 *) (((s8 *) temp_r2_16) + 0x12)) = (u8) new_var;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80DEDB0);
  }
}

void sub_80DEDEC(void *arg0);
void sub_80DED84(void *arg0)
{
  void *temp_r2_12;
  sub_8082E1C(arg0, 0xA, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_12) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DEDEC;
}

void sub_80DEDB0(void *arg0)
{
  int new_var;
  void *temp_r2_19;
  new_var = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0x0B, 0, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_19) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DE4A4;
  }
}

void sub_80DEE34(void *arg0);
void sub_80DEDEC(void *arg0)
{
  void *temp_r2_19;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0xB, 0, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_19) + 0x12))) | 2);
    play_sfx_80195B4(0x128, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DEE34;
  }
}

s32 sub_80DE020(void *);                        /* extern */
void sub_80DEE34(void *arg0)
{
  s32 temp_r0_14;
  void *temp_r2_26;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_14 = sub_8082B00();
    if (temp_r0_14 == 0)
    {
      sub_80DE020(arg0);
      *((s32 *) (((s8 *) arg0) + 0x6C)) = temp_r0_14;
      sub_8082E1C(arg0, 0xC, 0, 0);
      temp_r2_26 = *((void **) (((s8 *) arg0) + 8));
      *((u8 *) (((s8 *) temp_r2_26) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_26) + 0x12))) | 2);
      *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80DEE80);
    }
  }
}

void sub_80DEE80(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DEEA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF024.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF2B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF5EC.s\"");
#else
s32 sub_80DF024(u16, s32, s32, s32, void *);    /* extern */

void sub_80DF5EC(void *arg0) {
    s32 temp_r5_35;
    s32 var_r5_47;
    u16 temp_r1_69;
    u16 temp_r2_15;
    void *temp_r4_14;
    void *temp_r7_36;

    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == 0) {
        do {
            temp_r4_14 = (*(void **)((s8 *)(arg0) + (0xC)));
            temp_r2_15 = (*(u16 *)((s8 *)(temp_r4_14) + (0)));
            if (temp_r2_15 == 0xFFFD) {
                sub_80DF024(temp_r2_15, M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */), NULL);
            } else {
                temp_r5_35 = M2C_ERROR(/* unknown instruction: ldsh $r5, ($mem_loc_fictive_) */);
                temp_r7_36 = (*(void **)((s8 *)(arg0) + (8)));
                if ((temp_r7_36 != NULL) && (0x40 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r7_36) + (8)))) + (0x11))))) {
                    var_r5_47 = temp_r5_35 - M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
                } else {
                    var_r5_47 = temp_r5_35 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
                }
                sub_80DF024(temp_r2_15, var_r5_47, M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), temp_r7_36);
            }
            temp_r1_69 = (*(u16 *)((s8 *)(temp_r4_14) + (8)));
            (*(u16 *)((s8 *)(arg0) + (0x10))) = temp_r1_69;
            (*(void **)((s8 *)(arg0) + (0xC))) = (void *) (temp_r4_14 + 0xA);
        } while ((temp_r1_69 << 0x10) == 0);
    }
    if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        return;
    }
    (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF694.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF808.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF8F0.s\"");
#else
u8 sub_8199F30();                                   /* extern */

s32 sub_80DF8F0(void *arg0, s32 arg1) {
    s32 var_r0_44;
    s32 var_r0_50;
    s32 var_r0_60;
    s32 var_r0_66;
    u32 temp_r1_38;
    u8 temp_r0_14;

    (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0xFFFFFC00;
    temp_r0_14 = sub_8199F30();
    (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) ((u32) (((u32) (0 - (temp_r0_14 + 0x300)) >> 2) * M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */)) >> 8);
    temp_r1_38 = (u32) (((u32) ((u8) ((u32) (temp_r0_14 >> 8) >> 8) + 0x300) >> 2) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) >> 8;
    var_r0_44 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_44 < 0) {
        var_r0_44 += 0x3F;
    }
    var_r0_50 = (var_r0_44 >> 6) * temp_r1_38;
    if (var_r0_50 < 0) {
        var_r0_50 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x10))) = (s16) (var_r0_50 >> 8);
    var_r0_60 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_60 < 0) {
        var_r0_60 += 0x3F;
    }
    var_r0_66 = (var_r0_60 >> 6) * temp_r1_38;
    if (var_r0_66 < 0) {
        var_r0_66 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (var_r0_66 >> 8);
    (*(s16 *)((s8 *)(arg0) + (0x16))) = 1;
    return 5;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DF988.s\"");
#else
void sub_80DF988(void *arg0, void *arg1) {
    s32 temp_r3_45;
    s32 var_r0_26;
    s32 var_r0_37;
    s32 var_r0_51;
    s32 var_r0_57;
    s32 var_r0_67;
    s32 var_r0_73;

    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) - M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x18))) + (*(u16 *)((s8 *)(arg0) + (0x10))));
    (*(u16 *)((s8 *)(arg0) + (0x14))) = (u16) ((*(u16 *)((s8 *)(arg1) + (6))) + (*(u16 *)((s8 *)(arg0) + (0x14))));
    var_r0_26 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_26 < 0) {
        var_r0_26 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) (var_r0_26 >> 8);
    var_r0_37 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r0_37 < 0) {
        var_r0_37 += 0xFF;
    }
    (*(u16 *)((s8 *)(arg0) + (0x18))) = (u16) (var_r0_37 >> 8);
    temp_r3_45 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
    var_r0_51 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_51 < 0) {
        var_r0_51 += 0x3F;
    }
    var_r0_57 = (var_r0_51 >> 6) * temp_r3_45;
    if (var_r0_57 < 0) {
        var_r0_57 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (var_r0_57 >> 8);
    var_r0_67 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_67 < 0) {
        var_r0_67 += 0x3F;
    }
    var_r0_73 = (var_r0_67 >> 6) * temp_r3_45;
    if (var_r0_73 < 0) {
        var_r0_73 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) (var_r0_73 >> 8);
    (*(u16 *)((s8 *)(arg0) + (0x16))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x16))) - 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DFA24.s\"");
#else
void sub_80DFA24(void *arg0) {
    s32 temp_r0_26;
    s32 temp_r1_87;
    s32 temp_r4_44;
    s32 temp_r5_75;
    s32 temp_r6_56;
    s32 temp_r7_65;
    s32 var_r0_102;
    s32 var_r0_21;
    s32 var_r0_37;
    s32 var_r0_49;
    s32 var_r0_60;
    s32 var_r0_67;
    s32 var_r0_82;
    s32 var_r0_92;
    s32 var_r1_70;

    var_r0_21 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0xFE;
    if (var_r0_21 < 0) {
        var_r0_21 += 0xFF;
    }
    temp_r0_26 = var_r0_21 >> 8;
    var_r0_37 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_37 < 0) {
        var_r0_37 += 0x3F;
    }
    temp_r4_44 = temp_r0_26 * (var_r0_37 >> 6);
    var_r0_49 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_49 < 0) {
        var_r0_49 += 0x3F;
    }
    temp_r6_56 = temp_r0_26 * (var_r0_49 >> 6);
    var_r0_60 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
    if (var_r0_60 < 0) {
        var_r0_60 += 0x3F;
    }
    temp_r7_65 = var_r0_60 >> 6;
    var_r0_67 = temp_r6_56 * temp_r7_65;
    var_r1_70 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
    if (var_r1_70 < 0) {
        var_r1_70 += 0x3F;
    }
    temp_r5_75 = var_r1_70 >> 6;
    if (var_r0_67 < 0) {
        var_r0_67 += 0xFF;
    }
    var_r0_82 = temp_r6_56 * temp_r5_75;
    if (var_r0_82 < 0) {
        var_r0_82 += 0xFF;
    }
    temp_r1_87 = var_r0_82 >> 8;
    var_r0_92 = (temp_r1_87 * temp_r7_65) - (temp_r4_44 * temp_r5_75);
    if (var_r0_92 < 0) {
        var_r0_92 += 0xFF;
    }
    var_r0_102 = (temp_r4_44 * temp_r7_65) + (temp_r1_87 * temp_r5_75);
    if (var_r0_102 < 0) {
        var_r0_102 += 0xFF;
    }
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) (var_r0_102 >> 8);
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) (var_r0_67 >> 8);
    (*(s32 *)((s8 *)(arg0) + (0xC))) = (s32) (var_r0_92 >> 8);
    (*(s16 *)((s8 *)(arg0) + (0x10))) = (s16) temp_r0_26;
    (*(s16 *)((s8 *)(arg0) + (0x12))) = (s16) (M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */) + 4);
    (*(u16 *)((s8 *)(arg0) + (0x16))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x16))) - 1);
}
#endif
