#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808DFCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808DFCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E034.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_808E09C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x204D, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_808E0C8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0x2000, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E0F0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_808DD2C(void *);                        /* extern */
void sub_808E2A0(void *arg0);                       /* extern */
void sub_808E390(void *arg0);                       /* extern */
void sub_808E1C8(void *arg0)
{
  unsigned int temp_r6_14;
  int new_var;
  void *temp_r2_98;
  *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E1C8;
  temp_r6_14 = 0x38 & (*((u8 *) (((s8 *) arg0) + 0x76)));
  if (temp_r6_14 != 0)
  {
    sub_808DD2C(arg0);
    return;
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0)
  {
    sub_8082E1C(arg0, 0, 0x2025, 0);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 5)
  {
    sub_8082E1C(arg0, 0, 0x2025, 1);
  }
  new_var = 0x3C;
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0xA)
  {
    sub_8082E1C(arg0, 0, 0x2025, 2);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0xF)
  {
    sub_8082E1C(arg0, 0, 0x2025, 3);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) != 0x14)
  {
    if (!((*((u16 *) (((s8 *) ((void *) 0x0300034C)) + new_var))) & (*((s32 *) (((s8 *) arg0) + 0xA8)))))
    {
      *((s16 *) (((s8 *) arg0) + 0xAC)) = (s16) ((*((s16 *) (((s8 *) arg0) + 0xAC))) * 4);
      *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E2A0;
      return;
    }
    goto block_14;
  }
  sub_8082E1C(arg0, 1, 0, 0);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = temp_r6_14;
  *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E390;
  block_14:
  temp_r2_98 = *((void **) (((s8 *) arg0) + 8));

  *((u8 *) (((s8 *) temp_r2_98) + 0x12)) = (u8) ((*((u8 *) (((s8 *) temp_r2_98) + 0x12))) | 0x10);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = (s16) (((u16) (*((s16 *) (((s8 *) arg0) + 0xAC)))) + 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E2A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E390.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E4B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E650.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_808E804(void *arg0);                       /* extern */
void sub_808E8F4(void *arg0);                       /* extern */
void sub_808E728(void *arg0)
{
  int temp_r6_14;
  void *new_var;
  void *temp_r2_100;
  *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E728;
  temp_r6_14 = 0x38 & (*((u8 *) (((s8 *) arg0) + 0x76)));
  if (temp_r6_14 != 0)
  {
    sub_808DD2C(arg0);
    return;
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0)
  {
    sub_8082E1C(arg0, 0, 0x2054, 0);
  }
  new_var = (void *) 0x0300034C;
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 8)
  {
    sub_8082E1C(arg0, 0, 0x2054, 1);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0x10)
  {
    sub_8082E1C(arg0, 0, 0x2054, 2);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) == 0x18)
  {
    sub_8082E1C(arg0, 0, 0x2054, 3);
  }
  if ((*((s16 *) (((s8 *) arg0) + 0xAC))) != 0x20)
  {
    if (!((*((u16 *) (((s8 *) new_var) + 0x3C))) & (*((s32 *) (((s8 *) arg0) + 0xA8)))))
    {
      *((s16 *) (((s8 *) arg0) + 0xAC)) = (s16) ((*((s16 *) (((s8 *) arg0) + 0xAC))) * 6);
      *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E804;
      return;
    }
    goto block_14;
  }
  sub_8082E1C(arg0, 1, 0, 0);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = temp_r6_14;
  *((void (**)(void *)) (((s8 *) arg0) + 0x4C)) = sub_808E8F4;
  block_14:
  temp_r2_100 = *((void **) (((s8 *) arg0) + 8));

  *((u8 *) (((s8 *) temp_r2_100) + 0x12)) = (u8) ((*((u8 *) (((s8 *) temp_r2_100) + 0x12))) | 0x10);
  *((s16 *) (((s8 *) arg0) + 0xAC)) = (s16) (((u16) (*((s16 *) (((s8 *) arg0) + 0xAC)))) + 1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808E8F4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EA1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
