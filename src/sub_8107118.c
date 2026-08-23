#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107118 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8107118(void *arg0)
{
  int new_var2;
  void **new_var;
  u8 temp_r1_10;
  void *temp_r2_9;
  new_var = (void **) 0x03000FD8;
  temp_r2_9 = *new_var;
  temp_r1_10 = *((u8 *) (((s8 *) temp_r2_9) + 0xB));
  if (2 & temp_r1_10)
  {
    new_var2 = -3;
    new_var2 = new_var2 & temp_r1_10;
    *((u8 *) (((s8 *) temp_r2_9) + 0xB)) = (u8) new_var2;
    return;
  }
  *((s32 *) (((s8 *) arg0) + 4)) = (s32) (*((s32 *) (((s8 *) (*((void **) 0x03000FDC))) + 0x8E58)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107150.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81071B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_807F708(s32, s32, s32, s32, s32);       /* extern */
void *sub_8087650(s32);                             /* extern */
s32 sub_810CAD0();                              /* extern */
u8 sub_8116620(s32);                                /* extern */
void sub_8107360(void *arg0);
void sub_81071F0(void *arg0) {
    s32 temp_r4_20;
    void *temp_r0_23;

    if (sub_8116620((*(s32 *)((s8 *)(*(void **)0x03000FD8) + (0x248)))) != 1) {
        temp_r4_20 = (*(s32 *)((s8 *)(arg0) + (0xC)));
        sub_810CAD0();
        temp_r0_23 = sub_8087650(temp_r4_20);
        if (temp_r0_23 != NULL) {
            sub_807F708(4, 0, 0x20, 0, (s32) (*(u16 *)((s8 *)((*(void **)((s8 *)(temp_r0_23) + (0x10)))) + (0x14))));
        }
        (*(s16 *)((s8 *)(arg0) + (0x10))) = 0xC;
        (*(s32 **)((s8 *)(arg0) + (4))) = (s32 *) &sub_8107360;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107248.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082B00();                                  /* extern */
s32 sub_8087360();                              /* extern */
extern s32 sub_810192C;

void sub_81072A8(void *arg0) {
    if (!(4 & (*(u8 *)((s8 *)(*(void **)0x03000FD8) + (0xB)))) && ((sub_8082B00() << 0x18) == 0)) {
        sub_8087360();
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_810192C;
    }
}

s32 sub_807C298(void *);                        /* extern */
s32 sub_8082C58(s32, s32 *, s32 *, s32 *, s32); /* extern */
s32 sub_810D170();                              /* extern */
void sub_81072DC(void *arg0)
{
  s32 sp4;
  s32 sp8;
  s32 spC;
  s32 temp_r0_25;
  void *new_var;
  s32 var_r0_28;
  void *temp_r2_13;
  void *temp_r4_17;
  temp_r2_13 = *((void **) 0x03000FD8);
  temp_r4_17 = *((void **) (((s8 *) temp_r2_13) + 0x37C));
  new_var = *((void **) (((s8 *) temp_r2_13) + 0x278));
  temp_r0_25 = (*((s32 *) (((s8 *) temp_r4_17) + 0x10))) + 0x300;
  *((s32 *) (((s8 *) temp_r4_17) + 0x10)) = temp_r0_25;
  *((s32 *) (((s8 *) new_var) + 0x10)) = temp_r0_25;
  var_r0_28 = *((s32 *) (((s8 *) temp_r4_17) + 0x10));
  if (var_r0_28 < 0)
  {
    var_r0_28 += 0xFF;
  }
  sp4 = var_r0_28 >> 8;
  sp8 = 0;
  spC = 0;
  sub_8082C58(*((s32 *) (((s8 *) temp_r2_13) + 0x24C)), &sp4, &sp8, &spC, 0);
  if (sp4 > 0x103)
  {
    sub_810D170();
    sub_807C298(temp_r4_17);
    *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x37C)) = (void *) 0;
    *((s32 *) (((s8 *) arg0) + 4)) = 0;
  }
}

s32 sub_807F6D0();                              /* extern */
void sub_8107360(void *arg0)
{
  unsigned int temp_r5_9;
  temp_r5_9 = *((s16 *) (((s8 *) arg0) + 0x10));
  if (temp_r5_9 != 0)
  {
    *((s16 *) (((s8 *) arg0) + 0x10)) = (s16) (((u16) (*((s16 *) (((s8 *) arg0) + 0x10)))) - 1);
    return;
  }
  sub_807F6D0();
  *((s32 *) (((s8 *) arg0) + 4)) = (s32) temp_r5_9;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107380.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81074EC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107670.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810776C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810787C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107A5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
