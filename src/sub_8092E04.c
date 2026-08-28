#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8092E04 needs.

asm_unified(".include \"asm/macros.inc\"");




void sub_809316C(struct Entity *arg0);

s32 sub_8082E1C();
void sub_8093140(struct Entity *arg0);

s32 sub_808DD2C();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092E04.s\"");
#else
s32 sub_808DD2C(void *);
void sub_8092F68(void *arg0);
s32 sub_8092E04(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8092F68;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = (s32 *) &sub_808DD2C;
    return 1;
}
#endif

extern s32 sub_8092F90;
void sub_8092E58(void *arg0)
{
  void *temp_r2_22;
  play_sfx_80195B4(0x2B, -1);
  *((s32 *) (((s8 *) arg0) + 0x94)) = -0x48;
  sub_8082E1C(arg0, 5, 0x204D, 0);
  temp_r2_22 = (void *) (*((void **) (((s8 *) arg0) + 8)));
  *((u8 *) (((s8 *) temp_r2_22) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_22) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8092F90;
}

void sub_8092E58(void *arg0);

void sub_8092EA0(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8092E58(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092EC4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8092EC4(void *);                        /* extern */

void sub_8092F08(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8092EC4(arg0);
    }
}

s32 sub_8092004(void *);                        /* extern */
s32 sub_80920A4(void *);                        /* extern */
extern s32 sub_8087540;

s32 sub_8092F2C(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8092004(arg0);
    } else if (temp_r1_11 == -2) {
        sub_80920A4(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

s32 sub_8092148(void *);                        /* extern */
s32 sub_80926D8(void *);                        /* extern */

void sub_8092F68(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC))) == -1) {
        sub_8092148(arg0);
        return;
    }
    sub_80926D8(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8092F90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093000.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8093070(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8093140);
  }
}

void sub_80930D8(void *arg0)
{
  s32 temp_r1_18;
  u8 *temp_r2_25;
  int new_var;
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  new_var = -8;
  temp_r1_18 = (*((s32 *) (((s8 *) arg0) + 0x40))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = temp_r1_18;
  if (temp_r1_18 <= ((s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)))))
  {
    void *temp_r2_41;
    temp_r2_25 = (arg0 + 0xB2) - 0x3B;
    *temp_r2_25 &= new_var;
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0xE0)));
    sub_8082E1C(arg0, 8, 0x2000, 0);
    temp_r2_41 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_41) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_41) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_809316C);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8093140(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_809316C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093194.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809326C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093350.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093450.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093580.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093724.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80937FC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80938E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80939E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093B14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8093CBC(void *arg0)
{
  unsigned long long new_var;
  u16 temp_r1_34;
  void *temp_r1_8;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  if (temp_r1_8 != ((void *) 0))
  {
    new_var = -5;
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

extern s32 sub_8093B14;

void sub_8093D0C(struct Entity *arg0) {
    s32 temp_r0_20;
    void *temp_r1_27;
    void *temp_r2_42;

    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r0_20 = arg0->unk9C;
    if (temp_r0_20 > 0) {
        arg0->unk9C = (s32) (temp_r0_20 - 1);
        return;
    }
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA0))) = 0xB400;
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA4))) = 0xA00;
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_42 = arg0->unk08;
    (*(u8 *)((s8 *)(temp_r2_42) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_42) + (0x12))) | 0x10);
    arg0->handler = &sub_8093B14;
}

void sub_8093D6C(void *arg0)
{
  u16 temp_r1_34;
  int new_var;
  int new_var2;
  void *temp_r1_8;
  new_var2 = -5;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 0x28));
  new_var = 0;
  if (temp_r1_8 != ((void *) new_var))
  {
    *((u8 *) (((s8 *) temp_r1_8) + 0x111)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r1_8) + 0x111))));
  }
  if (0x38 & (*((u8 *) (((s8 *) arg0) + 0x76))))
  {
    sub_808DD2C(arg0);
    return;
  }
  temp_r1_34 = *((u16 *) (((s8 *) arg0) + 0xAC));
  *((u16 *) (((s8 *) arg0) + ((short) 0xAC))) = (u16) (temp_r1_34 + 1);
  if (((s32) ((s16) temp_r1_34)) > 0x13)
  {
    sub_808DD2C(arg0);
  }
}

extern s32 sub_8093580;

void sub_8093DBC(struct Entity *arg0) {
    s32 temp_r0_20;
    void *temp_r1_27;
    void *temp_r2_41;

    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    temp_r0_20 = arg0->unk9C;
    if (temp_r0_20 > 0) {
        arg0->unk9C = (s32) (temp_r0_20 - 1);
        return;
    }
    temp_r1_27 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA0))) = 0xB400;
    (*(s32 *)((s8 *)(temp_r1_27) + (0xA4))) = 0xFFFFFE34;
    sub_8082E1C(arg0, 2, 0, 0);
    temp_r2_41 = arg0->unk08;
    (*(u8 *)((s8 *)(temp_r2_41) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_41) + (0x12))) | 0x10);
    arg0->handler = &sub_8093580;
}

void sub_8093E20(struct Entity *arg0) {
    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_808DD2C(arg0);
    }
}
