#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132570 needs.

asm_unified(".include \"asm/macros.inc\"");


void sub_8132C54(void *arg0);

s32 sub_8087CE4();                                  /* extern */
s32 sub_80883A0(void *, s32);                   /* extern */
void sub_8132594(void *arg0);
void sub_8132570(void *arg0) {
    if ((sub_8087CE4() << 0x18) == 0) {
        sub_80883A0(arg0, 0xA);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8132594;
    }
}

s32 sub_807F4FC(void *);                        /* extern */
s32 sub_80880C4(void *, s32);                   /* extern */
s32 sub_80883F0();                                  /* extern */
s32 sub_808843C(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_81325E8;
void sub_8132594(void *arg0)
{
  s32 new_var;
  s32 var_r1_14;
  s32 var_r2_20;
  void *temp_r2_13;
  if ((sub_80883F0() << 0x18) == 0)
  {
    temp_r2_13 = *((void **) (((s8 *) arg0) + 0x2C));
    var_r1_14 = *((s32 *) (((s8 *) temp_r2_13) + 0x38));
    if (var_r1_14 < 0)
    {
      var_r1_14 += 0xFF;
    }
    new_var = var_r1_14 >> 8;
    var_r2_20 = *((s32 *) (((s8 *) temp_r2_13) + 0x3C));
    if (var_r2_20 < 0)
    {
      var_r2_20 += 0xFF;
    }
    sub_808843C(arg0, new_var, var_r2_20 >> 8, 0, 0x100);
    sub_80880C4(arg0, 0x300);
    sub_807F4FC(arg0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_81325E8;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81325E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132650.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132678.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132818.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_808552C(void *, void *, void *, s32, s32, s32, s32, s32, s32, s32); /* extern */
extern s32 sub_8132CE8;

void sub_81329AC(void *arg0) {
    s32 temp_r4_22;
    void *temp_r1_13;

    temp_r1_13 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_13) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_13) + (0xC))) + 0x1200);
    temp_r4_22 = (*(s32 *)((s8 *)(arg0) + (0x10))) + 0xFFFFFC00;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r4_22;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (((s32) ((temp_r4_22 - ((*(s16 *)((s8 *)(arg0) + (0xAE))) << 8)) * (*(s32 *)((s8 *)(arg0) + (0x88)))) / (s32) (*(s32 *)((s8 *)(arg0) + (0x84)))) + ((*(s16 *)((s8 *)(arg0) + (0xB0))) << 8));
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) (((s32) ((temp_r4_22 - ((*(s16 *)((s8 *)(arg0) + (0xAE))) << 8)) * (*(s32 *)((s8 *)(arg0) + (0x8C)))) / (s32) (*(s32 *)((s8 *)(arg0) + (0x84)))) + ((*(s16 *)((s8 *)(arg0) + (0xB2))) << 8));
    if (temp_r4_22 < (s32) (((*(s16 *)((s8 *)(arg0) + (0xAE))) << 8) + (*(s32 *)((s8 *)(arg0) + (0x84))))) {
        play_sfx_80195B4(0xAD, -1);
        (*(s32 *)((s8 *)(arg0) + (0x94))) = sub_808552C(arg0 + 0xAE, arg0 + 0xB0, arg0 + 0xB2, 0xFFFF3800, (s32) (0 - ((*(s32 *)((s8 *)(arg0) + (0x88))) * 0xC800)) / (s32) (*(s32 *)((s8 *)(arg0) + (0x84))), 0, 0x3000, 0x400, 0x100, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8132CE8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132AA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807F47C(void *);                        /* extern */
void sub_8132B8C(void *arg0)
{
  s32 temp_r2_32;
  int new_var;
  void *temp_r1_11;
  void *temp_r1_56;
  temp_r1_11 = *((void **) (((s8 *) arg0) + 8));
  *((u16 *) (((s8 *) temp_r1_11) + 0xC)) = (u16) ((*((u16 *) (((s8 *) temp_r1_11) + 0xC))) + 0x1000);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  temp_r2_32 = (*((s32 *) (0x10 + ((s8 *) arg0)))) + (*((s16 *) (((s8 *) arg0) + 0xAE)));
  *((s32 *) (((s8 *) arg0) + 0x10)) = temp_r2_32;
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x14))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2)))));
  new_var = 0xFFFFF000;
  if (temp_r2_32 < new_var)
  {
    play_sfx_80195B4(0x62, -1);
    *((s32 *) (((s8 *) arg0) + 0x10)) = 0x10000;
    temp_r1_56 = *((void **) (((s8 *) arg0) + 0x28));
    *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) (*((s32 *) (((s8 *) temp_r1_56) + 0x44)));
    *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) (*((s32 *) (((s8 *) temp_r1_56) + 0x48)));
    *((s32 *) (((s8 *) arg0) + 0x94)) = sub_808552C(arg0 + 0xAE, arg0 + 0xB0, arg0 + 0xB2, (*((s32 *) (((s8 *) temp_r1_56) + 0x40))) + 0xFFFF1700, 0x500, 0x2300, 0x4000, 0x280, 0x100, 0);
    sub_807F47C(arg0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) &sub_8132C54;
  }
}

s32 sub_807C298(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8132D4C;
void sub_8132C54(void *arg0)
{
  s32 temp_r2_28;
  void *temp_r1_8;
  void *temp_r2_60;
  int new_var;
  new_var = -0x41;
  temp_r1_8 = *((void **) (((s8 *) arg0) + 8));
  *((u16 *) (((s8 *) temp_r1_8) + 0xC)) = (u16) ((*((u16 *) (0xC + ((s8 *) temp_r1_8)))) + 0x1000);
  *((u16 *) (((s8 *) arg0) + 0xB2)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0xB2))) + (*((s32 *) (((s8 *) arg0) + 0x94))));
  temp_r2_28 = (*((s32 *) (((s8 *) arg0) + 0x10))) + (*((s16 *) (((s8 *) arg0) + 0xAE)));
  *((s32 *) (((s8 *) arg0) + 0x10)) = temp_r2_28;
  *((s32 *) (((s8 *) arg0) + 0x14)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x14))) + (*((s16 *) (((s8 *) arg0) + 0xB0))));
  *((s32 *) (((s8 *) arg0) + 0x18)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x18))) + ((s16) (*((u16 *) (((s8 *) arg0) + 0xB2)))));
  if (temp_r2_28 <= ((s32) ((*((s32 *) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0x40))) + 0x1700)))
  {
    play_sfx_80195B4(0xAE, -1);
    sub_8082E1C((*((void **) (((s8 *) arg0) + 0x28))) + 8, 0xD, 0, 0);
    temp_r2_60 = *((void **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0x10));
    *((u8 *) (((s8 *) temp_r2_60) + 0x11)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r2_60) + 0x11))));
    *((s32 **) (((s8 *) (*((void **) (((s8 *) arg0) + 0x28)))) + 0x54)) = &sub_8132D4C;
    sub_807C298(arg0);
  }
}
