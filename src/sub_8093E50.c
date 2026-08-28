#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8093E50 needs.

asm_unified(".include \"asm/macros.inc\"");











void sub_8095000(struct Entity *arg0);

void sub_8094FD4(struct Entity *arg0);

void sub_8094BA8(struct Entity *arg0);

void sub_8094B7C(struct Entity *arg0);

void sub_80942F8(struct Entity *arg0);

void sub_80942CC(struct Entity *arg0);

void sub_8094750(struct Entity *arg0);

void sub_8094724(struct Entity *arg0);

extern s32 sub_8087540;

s32 sub_8082E1C();
extern s32 sub_8095548;

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093E50.s\"");
#else
extern s32 sub_808DD2C;
void sub_8093EE0(void *arg0);
s32 sub_8093E50(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0x77))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x77))) & ~0x20);
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x114))) = (s32) (*(u16 *)((s8 *)((*(s32 *)0x03000FF4 + (~M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) * 0x3C))) + (0x2C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8093EE0;
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_808DD2C;
    return 1;
}
#endif

s32 sub_8093F08(void *);                        /* extern */
s32 sub_8093F8C(void *);                        /* extern */

s32 sub_8093EA4(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8093F8C(arg0);
    } else if (temp_r1_11 == -2) {
        sub_8093F08(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

s32 sub_8093194(void *);                        /* extern */
s32 sub_8093724(void *);                        /* extern */

void sub_8093EE0(void *arg0) {
    if ((*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC))) == -1) {
        sub_8093194(arg0);
        return;
    }
    sub_8093724(arg0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093F08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8093F8C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809400C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_809400C(void *);                        /* extern */

void sub_8094070(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_809400C(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094094.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8094094(void *);                        /* extern */

void sub_80940F8(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8094094(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809411C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809418C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80941FC(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80942CC);
  }
}

void sub_8094264(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80942F8);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80942CC(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_80942F8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094320.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80943C0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8094574;
void sub_8094464(void *arg0)
{
  void *temp_r2_22;
  play_sfx_80195B4(0x2B, -1);
  *((s32 *) (((s8 *) arg0) + 0x94)) = -0x48;
  sub_8082E1C(arg0, 5, 0x204D, 0);
  temp_r2_22 = (void *) (*((void **) (((s8 *) arg0) + 8)));
  *((u8 *) (((s8 *) temp_r2_22) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_22) + 0x12))) | 2);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8094574;
}

void sub_8094464(void *arg0);

void sub_80944AC(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    arg0->unk9C = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8094464(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80944D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80944D0(void *);                        /* extern */

void sub_8094514(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_80944D0(arg0);
    }
}

s32 sub_8094320(void *);                        /* extern */
s32 sub_80943C0(void *);                        /* extern */

s32 sub_8094538(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8094320(arg0);
    } else if (temp_r1_11 == -2) {
        sub_80943C0(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094574.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80945E4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8094654(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8094724);
  }
}

void sub_80946BC(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8094750);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8094724(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8094750(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094778.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094818.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80948BC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_80948BC(void *);                        /* extern */

void sub_8094904(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk9C - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_80948BC(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094928.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8094928(void *);                        /* extern */

void sub_809496C(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8094928(arg0);
    }
}

s32 sub_8094778(void *);                        /* extern */
s32 sub_8094818(void *);                        /* extern */

s32 sub_8094990(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8094778(arg0);
    } else if (temp_r1_11 == -2) {
        sub_8094818(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80949CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094A3C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8094AAC(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8094B7C);
  }
}

void sub_8094B14(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8094BA8);
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8094B7C(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8094BA8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094BD0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094C70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094D14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8094D14(void *);                        /* extern */

void sub_8094D5C(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8094D14(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094D80.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8094D80(void *);                        /* extern */

void sub_8094DC4(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x9C))) - 1;
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = temp_r0_11;
    if (temp_r0_11 <= 0) {
        (*(s8 *)((s8 *)(arg0->unk08) + (0x20))) = 0x10;
        sub_8094D80(arg0);
    }
}

s32 sub_8094BD0(void *);                        /* extern */
s32 sub_8094C70(void *);                        /* extern */

s32 sub_8094DE8(void *arg0) {
    s16 temp_r1_11;

    temp_r1_11 = (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xEC)));
    if (temp_r1_11 == -1) {
        sub_8094BD0(arg0);
    } else if (temp_r1_11 == -2) {
        sub_8094C70(arg0);
    }
    (*(s32 **)((s8 *)(arg0) + (0x68))) = &sub_8087540;
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094E24.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8094E94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8094F04(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8094FD4);
  }
}

void sub_8094F6C(void *arg0)
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
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_8095000);
  }
}

void sub_8094FD4(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

void sub_8095000(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095028.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80950D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809521C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80953D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095468.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80954DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_809551C(void *arg0)
{
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 8, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8095548;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095548.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095584.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095618.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
