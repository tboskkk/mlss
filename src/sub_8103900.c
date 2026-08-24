#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8103900 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 stop_sfx_80195A8();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8103900.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8103B6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8103D74.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082C58(s32, s32 *, s32 *, s32 *, s32); /* extern */
s32 sub_8082D50(s32);                               /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8106AC8;

void sub_81040DC(void *arg0) {
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 temp_r0_23;
    s32 temp_r0_58;
    s32 var_r0_26;
    void *temp_r1_12;
    void *temp_r4_16;
    void *temp_r5_20;

    temp_r1_12 = *(void **)0x03000FD8;
    temp_r4_16 = (*(void **)((s8 *)(temp_r1_12) + (0x37C)));
    temp_r5_20 = (*(void **)((s8 *)(temp_r1_12) + (0x278)));
    temp_r0_23 = (*(s32 *)((s8 *)(temp_r4_16) + (0x10))) + 0xFFFFFF00;
    (*(s32 *)((s8 *)(temp_r4_16) + (0x10))) = temp_r0_23;
    (*(s32 *)((s8 *)(temp_r5_20) + (0x10))) = temp_r0_23;
    var_r0_26 = (*(s32 *)((s8 *)(temp_r4_16) + (0x10)));
    if (var_r0_26 < 0) {
        var_r0_26 += 0xFF;
    }
    sp4 = var_r0_26 >> 8;
    sp8 = 0;
    spC = 0;
    sub_8082C58((*(s32 *)((s8 *)(temp_r1_12) + (0x24C))), &sp4, &sp8, &spC, 0);
    if (sp4 <= 0xD0) {
        temp_r0_58 = ((s32) (sub_8082D50((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x24C)))) << 0x10) >> 8) + 0xD000;
        (*(s32 *)((s8 *)(temp_r4_16) + (0x10))) = temp_r0_58;
        (*(s32 *)((s8 *)(temp_r5_20) + (0x10))) = temp_r0_58;
        sub_8082E1C(temp_r5_20, 4, 0, 0);
        (*(s8 *)((s8 *)(*(void **)0x03000FD8) + (0x342))) = 0;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8106AC8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104184.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104350.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8104350(s32, u8, s32, s32, s32, s32);   /* extern */
void sub_8104980(void *arg0);
void sub_8104800(void *arg0)
{
  unsigned int temp_r5_25;
  s32 temp_r3_33;
  s8 *new_var;
  void *temp_r0_16;
  void *temp_r4_12;
  temp_r4_12 = *((void **) 0x03000FD8);
  temp_r0_16 = *((void **) (((s8 *) temp_r4_12) + 0x278));
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) temp_r0_16) + 8)))) + 0x12))))
  {
    temp_r5_25 = *((s16 *) (((s8 *) arg0) + 0x12));
    new_var = (s8 *) ((*((s32 *) 0x03000FF4)) + (temp_r5_25 * 0x3C));
    temp_r3_33 = *((s32 *) 0x03000FDC);
    sub_8104350(temp_r3_33 + 0x8E34, *((u8 *) (new_var + 0x30)), temp_r3_33 + 0x8E1C, temp_r3_33 + 0x8E28, (s32) (*((u8 *) (((s8 *) temp_r4_12) + 0x342))), (s32) temp_r5_25);
    sub_8082E1C(temp_r0_16, 7, 0, 0);
    *((s16 *) (((s8 *) arg0) + 0x10)) = 0;
    *((s32 **) (((s8 *) arg0) + 4)) = (s32 *) &sub_8104980;
    play_sfx_80195B4(0x123, -1);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810489C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s16 sub_810489C(void *, s32);                       /* extern */
extern s32 sub_8106A88;
void sub_8104980(void *arg0)
{
  u16 temp_r1_18;
  void *temp_r5_16;
  s8 *new_var2;
  int new_var;
  *((s16 *) (((s8 *) arg0) + 0x10)) = sub_810489C(arg0, 3);
  temp_r5_16 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x278));
  temp_r1_18 = *((u16 *) (((s8 *) ((void *) 0x0300034C)) + 0x3E));
  new_var2 = (s8 *) ((void *) 0x0300034C);
  if ((1 & (*((u16 *) (new_var2 + 0x3E)))) != 0)
  {
    *((s16 *) (((s8 *) arg0) + 0x14)) = 1;
    play_sfx_80195B4(0x60, -1);
    *((s32 **) (((s8 *) arg0) + 4)) = &sub_8106A88;
    return;
  }
  new_var = 0xF0;
  if (2 & (*((u16 *) (new_var2 + 0x3E))))
  {
    sub_8082E1C(temp_r5_16, 6, 0, 0xB);
    *((s8 *) (((s8 *) (*((void **) (((s8 *) temp_r5_16) + 8)))) + 0x20)) = new_var;
 do { play_sfx_80195B4(0x61, -1); *((s32 **) (((s8 *) arg0) + 4)) = &sub_8106AC8; stop_sfx_80195A8(0x123); } while ((*((u16 *) (new_var2 + 0x3E))) * 0);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104A00.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_807BC90();                              /* extern */
void *sub_8084338(s32, s32, s32, s32);              /* extern */
s32 sub_810D260(s32, s32);                          /* extern */
s32 sub_810D34C(s32, s32, s32, s32);            /* extern */
extern s32 sub_8106A30;

void sub_8104A00(void *arg0) {
    s32 temp_r4_17;
    s32 temp_r6_15;
    u16 temp_r0_27;
    void *temp_r4_39;

    temp_r6_15 = ((*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0x342))) * 0x10) + 0x28;
    temp_r4_17 = M2C_ERROR(/* unknown instruction: ldsh $r4, ($mem_loc_fictive_) */);
    sub_810D34C(temp_r4_17, sub_810D260(temp_r4_17, 0xB8), temp_r6_15, 0);
    temp_r0_27 = (*(u16 *)((s8 *)(arg0) + (0x10))) + 1;
    (*(u16 *)((s8 *)(arg0) + (0x10))) = temp_r0_27;
    if ((s32) (s16) temp_r0_27 > 9) {
        temp_r4_39 = sub_8084338(0x7003, 8, 0, 1);
        sub_807BC90();
        (*(s16 *)((s8 *)(temp_r4_39) + (0))) = 0xB8;
        (*(s16 *)((s8 *)(temp_r4_39) + (2))) = (s16) (temp_r6_15 + 0xA);
        (*(s16 *)((s8 *)(temp_r4_39) + (0xE))) = 0;
        (*(void **)((s8 *)(arg0) + (8))) = temp_r4_39;
        (*(u16 *)((s8 *)(arg0) + (0x10))) = 0U;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8106A30;
        stop_sfx_80195A8(0x123);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104A84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104C6C.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8106A10;

void sub_8104C6C(void *arg0) {
    s32 temp_r0_9;
    void *temp_r2_60;
    void *temp_r2_66;
    void *temp_r2_73;
    void *temp_r4_26;

    temp_r0_9 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_9 <= 0x2B) {
        if (temp_r0_9 == 0x20) {
            play_sfx_80195B4(0x79, -1);
        }
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) + 1);
        return;
    }
    stop_sfx_80195A8(0x79);
    temp_r4_26 = (*(void **)((s8 *)(arg0) + (0xC)));
    if ((temp_r4_26 != NULL) && ((6 & (*(u8 *)((s8 *)(temp_r4_26) + (0x7E)))) == 2)) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(temp_r4_26 + 8, 6, 0x2003, 0);
        } else {
            sub_8082E1C(temp_r4_26 + 8, 6, 0x2050, 0);
        }
        temp_r2_60 = (*(void **)((s8 *)(temp_r4_26) + (0x10)));
        (*(u8 *)((s8 *)(temp_r2_60) + (0x12))) = (u8) (-0x11 & (*(u8 *)((s8 *)(temp_r2_60) + (0x12))));
        temp_r2_66 = (*(void **)((s8 *)(temp_r4_26) + (0x10)));
        (*(u8 *)((s8 *)(temp_r2_66) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_66) + (0x12))));
    }
    temp_r2_73 = (*(void **)((s8 *)(temp_r4_26) + (0x10)));
    (*(u8 *)((s8 *)(temp_r2_73) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_73) + (0x12)))) | 2);
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8106A10;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104D14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104DB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104E58.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104F10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8104FEC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8105110.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81053E0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81054D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810567C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8105790.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8105858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810591C.s\"");
#else
s32 sub_810591C(void) {
    s32 var_r7_29;
    u8 temp_r2_15;
    void *temp_r1_8;
    void *temp_r2_35;
    void *temp_r2_50;
    void *temp_r2_64;
    void *temp_r2_78;
    void *var_r3_31;

    temp_r1_8 = *(void **)0x03000FD8;
    if (((*(s32 *)((s8 *)(temp_r1_8) + (0x40))) == 0) && ((*(s32 *)((s8 *)(temp_r1_8) + (0x44))) == 0)) {
        temp_r2_15 = (*(u8 *)((s8 *)(temp_r1_8) + (0xB)));
        if (2 & temp_r2_15) {
            (*(u8 *)((s8 *)(temp_r1_8) + (0xB))) = (u8) (-3 & temp_r2_15);
            goto block_4;
        }
        var_r7_29 = 0;
        var_r3_31 = temp_r1_8 + 0x58;
loop_6:
        temp_r2_35 = (*(void **)((s8 *)(var_r3_31) + (0)));
        if (!(1 & (*(u8 *)((s8 *)(temp_r2_35) + (0x111)))) && !(0x38 & (*(u8 *)((s8 *)(temp_r2_35) + (0x7E))))) {
            temp_r2_50 = (*(void **)((s8 *)(var_r3_31) + (4)));
            if (!(1 & (*(u8 *)((s8 *)(temp_r2_50) + (0x111)))) && !(0x38 & (*(u8 *)((s8 *)(temp_r2_50) + (0x7E))))) {
                temp_r2_64 = (*(void **)((s8 *)(var_r3_31) + (8)));
                if (!(1 & (*(u8 *)((s8 *)(temp_r2_64) + (0x111)))) && !(0x38 & (*(u8 *)((s8 *)(temp_r2_64) + (0x7E))))) {
                    temp_r2_78 = (*(void **)((s8 *)(var_r3_31) + (0xC)));
                    if (!(1 & (*(u8 *)((s8 *)(temp_r2_78) + (0x111)))) && !(0x38 & (*(u8 *)((s8 *)(temp_r2_78) + (0x7E))))) {
                        var_r3_31 += 0x10;
                        var_r7_29 += 4;
                        if (var_r7_29 > 7) {
                            return 1;
                        }
                        goto loop_6;
                    }
                }
            }
        }
        goto block_4;
    }
block_4:
    return 0;
}
#endif
