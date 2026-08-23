#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8091C74 needs.

asm_unified(".include \"asm/macros.inc\"");



s32 sub_8082E1C();
void sub_8091FB0(void *arg0);

s32 sub_808DD2C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091C74.s\"");
#else
s32 sub_808DD2C(void *);
void sub_8091DD8(void *arg0);
s32 sub_8091C74(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8091DD8;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = (s32 *) &sub_808DD2C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091CC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8091CC8(void *);                        /* extern */

void sub_8091D10(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        sub_8091CC8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091D34.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8091D34(void *);                        /* extern */

void sub_8091D78(void *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x20))) = 0x10;
        sub_8091D34(arg0);
    }
}

s32 sub_8090E74(void *);                        /* extern */
s32 sub_8090F14(void *);                        /* extern */
extern s32 sub_8087540;

s32 sub_8091D9C(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8090E74(arg0);
    } else if (temp_r1_11 == -2) {
        sub_8090F14(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

s32 sub_8090FB8(void *);                        /* extern */
s32 sub_8091548(void *);                        /* extern */

void sub_8091DD8(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC))) == -1) {
        sub_8090FB8(arg0);
        return;
    }
    sub_8091548(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091E00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091E70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8091EE0(void *arg0)
{
  s32 temp_r1_18;
  u8 *temp_r2_25;
  void *temp_r2_40;
  int new_var;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  new_var = -8;
  temp_r1_18 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x204D, 0);
    temp_r2_40 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_40) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_40) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8091FB0);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091F48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8091FB0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8091FDC(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092004.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80920A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092148.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092220.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092304.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092404.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092534.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80926D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80927B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092898.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092998.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092AC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8092C70(void *arg0)
{
  int new_var;
  u16 temp_r1_34;
  void *temp_r1_8;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  new_var = -5;
  if (temp_r1_8 != ((void *) 0))
  {
    *((u8 *) (((s8 *) temp_r1_8) + 0x111)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r1_8) + 0x111))));
  }
  if (0x38 & (*((u8 *) (((s8 *) arg0) + 0x76))))
  {
    sub_808DD2C(arg0);
    return;
  }
  temp_r1_34 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) (temp_r1_34 + 1);
  if (((s32) ((s16) temp_r1_34)) > 0x17)
  {
    sub_808DD2C(arg0);
  }
}

extern s32 sub_8092AC8;

void sub_8092CC0(void *arg0) {
    s32 temp_r0_20;
    void *temp_r1_27;
    void *temp_r2_42;

    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x9C)));
    if (temp_r0_20 > 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = (s32) (temp_r0_20 - 1);
        return;
    }
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA0))) = 0xB400;
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA4))) = 0xA00;
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_42 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_42) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_42) + (0x12))) | 0x10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8092AC8;
}

void sub_8092D20(void *arg0)
{
  u16 temp_r1_34;
  void *temp_r1_8;
  int new_var;
  new_var = -5;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  if (temp_r1_8 != ((void *) 0))
  {
    *((u8 *) (((s8 *) temp_r1_8) + 0x111)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r1_8) + 0x111))));
  }
  if (0x38 & (*((u8 *) (((s8 *) arg0) + 0x76))))
  {
    sub_808DD2C(arg0);
    return;
  }
  temp_r1_34 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) (temp_r1_34 + 1);
  if (((s32) ((s16) temp_r1_34)) > 0x13)
  {
    sub_808DD2C(arg0);
  }
}

extern s32 sub_8092534;

void sub_8092D70(void *arg0) {
    s32 temp_r0_20;
    void *temp_r1_27;
    void *temp_r2_41;

    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x9C)));
    if (temp_r0_20 > 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = (s32) (temp_r0_20 - 1);
        return;
    }
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA0))) = 0xB400;
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA4))) = 0xFFFFFE34;
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_41 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u8 *)((s8 *)(temp_r2_41) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_41) + (0x12))) | 0x10);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8092534;
}

void sub_8092DD4(void *arg0) {
    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_808DD2C(arg0);
    }
}
