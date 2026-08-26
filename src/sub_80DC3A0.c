#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DC3A0 needs.

asm_unified(".include \"asm/macros.inc\"");






void sub_80DDABC(struct Entity *arg0);

void sub_80DDA78(void *arg0);
s32 sub_8082E1C();
void sub_80DC638(void *arg0);
int sub_8087540();

extern s32 sub_808750C;

void sub_80DC3A0(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        arg0->handler = &sub_808750C;
    }
}

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C();                                  /* extern */

s32 sub_80DC3B8(void) {
    s32 temp_r4_8;

    temp_r4_8 = sub_810DD7C();
    stop_sfx_80195A8(0x81);
    return temp_r4_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC3D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082B00();                                  /* extern */
extern s32 sub_80DC4F4;

void sub_80DC4A4(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = &sub_80DC4F4;
    }
}

void sub_80DC4C0(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8087540(arg0);
    }
}

extern s32 sub_80DC554;

void sub_80DC4D8(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = &sub_80DC554;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC4F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC554.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80DC5CC(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0x07, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        arg0->handler = (s32 *) &sub_80DC638;
    }
}

s32 sub_807F4FC(void *);                        /* extern */
extern s32 sub_80DC668;
void sub_80DC5FC(void *arg0)
{
  void *temp_r2_17;
  s8 *new_var;
  int new_var2;
  new_var2 = -7;
  if ((*((s32 *) (((s8 *) arg0) + 0x80))) == 0)
  {
    sub_8082E1C(arg0, 3, 0, 0);
    temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_17) + 0x12)))) | 2);
    sub_807F4FC(arg0);
    new_var = (s8 *) arg0;
    *((s32 **) (new_var + 0x4C)) = &sub_80DC668;
  }
}

extern s32 sub_80DC27C;
void sub_80DC638(void *arg0)
{
  int temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (0 > ((s32) (temp_r0_11 << 0x10)))
  {
    sub_8082E1C(arg0, 8, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DC27C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC668.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC71C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80DC7C4(void *arg0) {
    s32 temp_r0_60;
    s32 temp_r1_64;
    s32 var_r0_16;
    s32 var_r0_31;

    var_r0_16 = (*(s16 *)((s8 *)(arg0) + (0xAE))) * 0xFD;
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_16 >> 8);
    var_r0_31 = (*(s16 *)((s8 *)(arg0) + (0xB0))) * 0xFD;
    if (var_r0_31 < 0) {
        var_r0_31 += 0xFF;
    }
    (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_31 >> 8);
    (*(u16 *)((s8 *)(arg0) + (0xB2))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xB2))) + (*(s32 *)((s8 *)(arg0) + (0x94))));
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + (*(s16 *)((s8 *)(arg0) + (0xAE))));
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s16 *)((s8 *)(arg0) + (0xB0))));
    temp_r0_60 = (*(s32 *)((s8 *)(arg0) + (0x40))) + (s16) (*(u16 *)((s8 *)(arg0) + (0xB2)));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r0_60;
    temp_r1_64 = (*(s32 *)((s8 *)(arg0) + (0x98)));
    if (temp_r0_60 <= temp_r1_64) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = temp_r1_64;
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC854.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC9C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCB3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCC00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCDA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCE44.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DCF7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD0CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD294.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD40C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD430.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD478.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD4EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80DD560(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD588.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD600.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80DD740(void *arg0);
void sub_80DD6D0(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80DD740;
    }
}

void sub_80DD76C(void *arg0);
void sub_80DD6EC(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        arg0->handler = (s32 *) &sub_80DD76C;
    }
}

void sub_80DD798(void *arg0);
void sub_80DD708(void *arg0) {
    if (sub_8082B00() == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80DD798;
    }
}

void sub_80DD7C4(void *arg0);
void sub_80DD724(void *arg0) {
    if (sub_8082B00() == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_80DD7C4;
    }
}

void sub_80DD7F0(void *arg0);
void sub_80DD740(void *arg0)
{
  void *temp_r2_12;
  s8 *new_var;
  sub_8082E1C(arg0, 0xD, 0, 0);
  new_var = (s8 *) arg0;
  temp_r2_12 = *((void **) (new_var + 8));
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_12) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DD7F0;
}

void sub_80DD878(void *arg0);
void sub_80DD76C(void *arg0)
{
  void *temp_r2_12;
  s32 **new_var;
  s8 *new_var3;
  int new_var2;
  sub_8082E1C(arg0, 0xD, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var2 = 0x4C;
  new_var = (s32 **) (((s8 *) arg0) + new_var2);
  new_var3 = (s8 *) temp_r2_12;
  *((u8 *) (new_var3 + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_12) + 0x12))) | 2);
  *new_var = (s32 *) &sub_80DD878;
}

extern s32 sub_80DD8C8;
void sub_80DD798(void *arg0)
{
  void *temp_r2_12;
  unsigned long long new_var;
  temp_r2_12 = arg0;
  sub_8082E1C(temp_r2_12, 9, 0, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var = -7;
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_12) + 0x12)))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DD8C8;
}

extern s32 sub_80DD944;
void sub_80DD7C4(void *arg0)
{
  s8 *new_var;
  unsigned long long new_var2;
  void *temp_r2_12;
  sub_8082E1C(arg0, 9, 0, 0);
  new_var = (s8 *) arg0;
  new_var2 = -7;
  temp_r2_12 = *((void **) (new_var + 8));
  *((u8 *) (temp_r2_12 + 0x12)) = (u8) ((new_var2 & (*((u8 *) (((s8 *) temp_r2_12) + 0x12)))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DD944;
}

s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_80DCC00;
void sub_80DD7F0(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    void *temp_r2_46;
    *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, arg0 + 0xB0, arg0 + 0xB2, 0, 0, 0, 0x1400, 0x4CC, 0xFD, 0);
    play_sfx_80195B4(0x69, -1);
    sub_8082E1C(arg0, 0xE, 0, 0);
    temp_r2_46 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_46) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_46) + 0x12))) | 2);
    play_sfx_80195B4(0x117, -1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DCC00;
  }
}

extern s32 sub_80DC854;
void sub_80DD878(void *arg0)
{
  void *temp_r2_19;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0xE, 0, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_19) + 0x12))) | 2);
    play_sfx_80195B4(0x117, -1);
    *((s32 *) (((s8 *) arg0) + 0xA8)) = 2;
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DC854;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD8C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DD944.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_80DC71C;
void sub_80DD9C0(void *arg0)
{
  void *temp_r2_47;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    *((s32 *) (((s8 *) arg0) + 0x98)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, (arg0 + 0x98) + 0x18, arg0 + 0xB2, 0, 0, 0, 0x1400, 0x4CC, 0xFD, 0);
    sub_8082E1C(arg0, 0xB, 0, 0);
    temp_r2_47 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_47) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_47) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80DC71C;
  }
}

void sub_80DDA3C(void *arg0)
{
  int new_var;
  void *temp_r2_19;
  new_var = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0x0B, 0, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_19) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_80DDA78;
  }
}

s32 sub_80DD0CC(void *);                        /* extern */
void sub_80DDA78(void *arg0)
{
  void *temp_r2_23;
  unsigned int new_var;
  new_var = -7;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_80DD0CC(arg0);
    *((s32 *) (((s8 *) arg0) + 0x6C)) = 0;
    sub_8082E1C(arg0, 0xC, 0, 0);
    temp_r2_23 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_23) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_23) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80DDABC);
  }
}

void sub_80DDABC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        sub_8087540(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDAE4.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DEB78;

void sub_80DDAE4(void *arg0) {
    s32 *var_r1_77;
    s32 *var_r2_71;
    s32 *var_r3_42;
    u32 temp_r0_49;
    u32 temp_r0_62;
    void *temp_r2_9;
    void *var_r0_78;
    void *var_r12_18;
    void *var_r5_21;

    temp_r2_9 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r12_18 = temp_r2_9;
        var_r5_21 = var_r12_18 + 0x130;
    } else {
        var_r12_18 = temp_r2_9 + 0xFFFFFED0;
        var_r5_21 = temp_r2_9;
    }
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
            var_r3_42 = arg0 + 0x84;
            temp_r0_49 = (*(s32 *)((s8 *)(var_r12_18) + (0xD8))) + (*(s32 *)((s8 *)(var_r5_21) + (0xD8)));
            (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((s32) (temp_r0_49 + (temp_r0_49 >> 0x1F)) >> 1);
            temp_r0_62 = (*(s32 *)((s8 *)(var_r12_18) + (0xDC))) + (*(s32 *)((s8 *)(var_r5_21) + (0xDC)));
            (*(s32 *)((s8 *)(arg0) + (0x88))) = (s32) ((s32) (temp_r0_62 + (temp_r0_62 >> 0x1F)) >> 1);
        } else {
            var_r2_71 = arg0 + 0x84;
            (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(var_r12_18) + (0xD8)));
            var_r1_77 = arg0 + 0x88;
            var_r0_78 = var_r12_18;
            goto block_8;
        }
    } else {
        var_r2_71 = arg0 + 0x84;
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(var_r5_21) + (0xD8)));
        var_r1_77 = arg0 + 0x88;
        var_r0_78 = var_r5_21;
block_8:
        *var_r1_77 = (*(s32 *)((s8 *)(var_r0_78) + (0xDC)));
        var_r3_42 = var_r2_71;
    }
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0xE0)));
    *var_r3_42 += 0x4000;
    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)(arg0) + (0x7C))) = (s16) ((*(s32 *)((s8 *)(arg0) + (0xA0))) << 8);
    (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
    sub_8085B38(arg0);
    play_sfx_80195B4(0x11C, -1);
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DEB78;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDBF4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDC8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDE04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDED0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DDF50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE020.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE164.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE4A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807C298(void *);                        /* extern */
void sub_80DE5E4(void *arg0)
{
  s32 temp_r0_68;
  s32 temp_r1_60;
  s32 var_r0_16;
  int new_var;
  s32 var_r0_31;
  var_r0_16 = (*((s16 *) (((s8 *) arg0) + 0xAE))) * 0xFD;
  new_var = 0;
  if (var_r0_16 < new_var)
  {
    var_r0_16 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xAE)) = (s16) (var_r0_16 >> 8);
  var_r0_31 = (*((s16 *) (((s8 *) arg0) + 0xB0))) * 0xFD;
  if (var_r0_31 < new_var)
  {
    var_r0_31 += 0xFF;
  }
  *((s16 *) (((s8 *) arg0) + 0xB0)) = (s16) (var_r0_31 >> 8);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  *((s32 *) (((s8 *) arg0) + 0x10)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + (*((s16 *) (((s8 *) arg0) + 0xAE))));
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x3C))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  temp_r1_60 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_60;
  if (((s32) ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))))) <= new_var)
  {
    temp_r0_68 = *((s32 *) (((s8 *) arg0) + 0x98));
    if (temp_r1_60 <= temp_r0_68)
    {
      *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r0_68;
      sub_807C298(arg0);
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE670.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_80DE9A0;

void sub_80DE670(void *arg0) {
    s32 *var_r1_77;
    s32 *var_r2_71;
    s32 *var_r3_42;
    u32 temp_r0_49;
    u32 temp_r0_62;
    void *temp_r2_9;
    void *var_r0_78;
    void *var_r12_18;
    void *var_r5_21;

    temp_r2_9 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)));
    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r12_18 = temp_r2_9;
        var_r5_21 = var_r12_18 + 0x130;
    } else {
        var_r12_18 = temp_r2_9 + 0xFFFFFED0;
        var_r5_21 = temp_r2_9;
    }
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
            var_r3_42 = arg0 + 0x84;
            temp_r0_49 = (*(s32 *)((s8 *)(var_r12_18) + (0xD8))) + (*(s32 *)((s8 *)(var_r5_21) + (0xD8)));
            (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((s32) (temp_r0_49 + (temp_r0_49 >> 0x1F)) >> 1);
            temp_r0_62 = (*(s32 *)((s8 *)(var_r12_18) + (0xDC))) + (*(s32 *)((s8 *)(var_r5_21) + (0xDC)));
            (*(s32 *)((s8 *)(arg0) + (0x88))) = (s32) ((s32) (temp_r0_62 + (temp_r0_62 >> 0x1F)) >> 1);
        } else {
            var_r2_71 = arg0 + 0x84;
            (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(var_r12_18) + (0xD8)));
            var_r1_77 = arg0 + 0x88;
            var_r0_78 = var_r12_18;
            goto block_8;
        }
    } else {
        var_r2_71 = arg0 + 0x84;
        (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) (*(s32 *)((s8 *)(var_r5_21) + (0xD8)));
        var_r1_77 = arg0 + 0x88;
        var_r0_78 = var_r5_21;
block_8:
        *var_r1_77 = (*(s32 *)((s8 *)(var_r0_78) + (0xDC)));
        var_r3_42 = var_r2_71;
    }
    (*(s32 *)((s8 *)(arg0) + (0x8C))) = (s32) (*(s32 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x28)))) + (0xE0)));
    *var_r3_42 += 0x4000;
    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)(arg0) + (0x7C))) = (s16) ((*(s32 *)((s8 *)(arg0) + (0xA0))) << 8);
    (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
    sub_8085B38(arg0);
    play_sfx_80195B4(0x11C, -1);
    sub_8082E1C(arg0, 0xD, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DE9A0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE780.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE81C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
