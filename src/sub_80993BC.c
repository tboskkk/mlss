#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80993BC needs.

asm_unified(".include \"asm/macros.inc\"");







void sub_809A14C(void *arg0);

int sub_807C298();

extern s32 sub_809A808;

void sub_809A120(void *arg0);
s32 sub_8082E1C();
extern s32 sub_809A09C;

int sub_8087540();

extern s32 sub_80993C8;

s32 sub_80993BC(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80993C8;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099448.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80994F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099624.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80997E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099890.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80999C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099AB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099BE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099D28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099F10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8099F7C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8099FC4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8087540(arg0);
    }
}

void sub_8099FE0(void *arg0) {
    sub_8082E1C(arg0, 0x06, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809A09C;
}

extern s32 sub_80997E4;
void sub_8099FFC(void *arg0)
{
  void *temp_r1_16;
  sub_8082E1C(arg0, 2, 0, 0);
  if (1)
  {
    *((s16 *) (((s8 *) arg0) + 0xAC)) = 0;
    ;
    *((s32 *) (((s8 *) ((arg0 + 0xAC) - 0x28)) + 0)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x38)));
  }
  *((s32 *) (((s8 *) ((arg0 + 0xAC) - 0x28)) + 4)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x3C)));
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80997E4;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A02C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8099448;
void sub_809A06C(void *arg0)
{
  s8 *new_var;
  void *temp_r1_16;
  sub_8082E1C(arg0, 2, 0, 0);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = 0;
  temp_r1_16 = (arg0 + 0xAC) - 0x28;
  *((s32 *) (((s8 *) temp_r1_16) + 0)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x38)));
  new_var = ((s8 *) temp_r1_16) + 4;
  *((s32 *) new_var) = (s32) (*((s32 *) (((s8 *) arg0) + 0x3C)));
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8099448;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A09C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_809A0F4(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 8, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809A120;
  }
}

void sub_809A120(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 9, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_809A14C;
    }
}

extern s32 sub_8099BE4;

void sub_809A14C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xA, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8099BE4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A178.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A364.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A560.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A630.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A670.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A6CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A76C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_809A7EC(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809A808;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A808.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_809A178;

void sub_809A858(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if (!((*(s32 *)((s8 *)(arg0) + (0x98))) & 2)) {
            sub_8082E1C(arg0, 5, 0, 0);
        } else {
            sub_8082E1C(arg0, 7, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809A178;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A8A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809A9A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
extern s32 sub_809AF60;
void sub_809AAF4(void *arg0)
{
  int new_var;
  void *temp_r2_17;
  *((s32 *) (((s8 *) arg0) + 0x2C)) = 0;
  *((s32 *) (((s8 *) arg0) + 0xA8)) = 0;
  sub_8082E1C(arg0, 0, 0x40C0, 0);
  temp_r2_17 = *((void **) (((s8 *) arg0) + 8));
  new_var = (u8) (((-7) & (*(((s8 *) temp_r2_17) + 0x12))) | 2);
  *((u8 *) (((s8 *) temp_r2_17) + 0x12)) = new_var;
  *((s16 *) (((s8 *) arg0) + 0x1C)) = (s16) (sub_81DD77C(0, sub_8199F30()) + 0x14);
  *((s16 *) (((s8 *) arg0) + 0x1E)) = 0;
  *((s8 *) (((s8 *) arg0) + 0x74)) = 0x7F;
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809AF60;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AB48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AD30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809ADC0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8087EFC();                              /* extern */
s32 sub_810DD7C(s32, void *, s32);              /* extern */

void sub_809AE80(void *arg0) {
    s32 temp_r5_8;

    temp_r5_8 = (*(s32 *)((s8 *)(arg0) + (0x2C)));
    sub_8087EFC();
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        sub_810DD7C(temp_r5_8, arg0, 0xFF);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0x0809B031;
    }
}

void sub_809AEB0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_807C298(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AECC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AF60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809AFB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_809B068(void *arg0);
void sub_809B038(void *arg0)
{
  void *temp_r2_12;
  unsigned long long new_var;
  sub_8082E1C(arg0, 2, 0x40BE, 0);
  temp_r2_12 = *((void **) (((s8 *) arg0) + 8));
  new_var = -7;
  *((u8 *) (((s8 *) temp_r2_12) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_12) + 0x12)))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_809B068;
}

extern s32 sub_809B0A8;
void sub_809B068(void *arg0)
{
  void *temp_r2_19;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 3, 0x40BE, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_19) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_809B0A8;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B0A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B114.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_809B478;

void sub_809B114(void *arg0) {
    s32 var_r1_24;
    s32 var_r1_44;
    s32 var_r2_50;
    s32 var_r3_56;
    void *temp_r2_35;

    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) != 0) {
        if ((*(s32 *)((s8 *)(arg0) + (0x2C))) == ((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x70))) + 8)) {
            var_r1_24 = 2;
        } else {
            var_r1_24 = 5;
        }
        sub_8082E1C(arg0, var_r1_24, 0x40BF, 0);
        temp_r2_35 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_35) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_35) + (0x12)))) | 2);
    }
    var_r1_44 = (*(s32 *)((s8 *)(arg0) + (0x10)));
    if (var_r1_44 < 0) {
        var_r1_44 += 0xFF;
    }
    var_r2_50 = (*(s32 *)((s8 *)(arg0) + (0x14)));
    if (var_r2_50 < 0) {
        var_r2_50 += 0xFF;
    }
    var_r3_56 = (*(s32 *)((s8 *)(arg0) + (0x18)));
    if (var_r3_56 < 0) {
        var_r3_56 += 0xFF;
    }
    sub_80DF024(0x11E6, var_r1_44 >> 8, var_r2_50 >> 8, var_r3_56 >> 8, arg0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_809B478;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B1A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B228.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B2C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B370.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
