#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80665AC needs.

asm_unified(".include \"asm/macros.inc\"");





void sub_8066EB4(void *arg0);

extern s32 sub_806688C;
void sub_8066D78(void *arg0);

extern s32 sub_8066DA4;
int sub_8082B00();

s32 sub_8082E1C();
extern s32 sub_808750C;

extern s32 sub_806670C;

void sub_80665AC(void *arg0) {
    void *var_r0_13;

    if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 1) {
        var_r0_13 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)));
    } else {
        var_r0_13 = (*(void **)((s8 *)(arg0) + (0x30)));
    }
    if (var_r0_13 == NULL) {
        play_sfx_80195B4(0x114, -1);
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 8, 0, 0);
        } else {
            sub_8082E1C(arg0, 0xC, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806670C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066604.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806670C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_8065FBC;

void sub_8066780(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 6, 0, 0);
        } else {
            sub_8082E1C(arg0, 0xA, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8065FBC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80667C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066820.s\"");
#else
void *sub_807C0D0(void *, s32, s32);                /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_8066820(void *arg0) {
    void *temp_r0_10;

    temp_r0_10 = sub_807C0D0(arg0, 0x4095, 0);
    (*(u8 *)((s8 *)(temp_r0_10) + (0x79))) = (u8) ((*(u8 *)((s8 *)(temp_r0_10) + (0x79))) | 1 | 8);
    (*(s8 *)((s8 *)(temp_r0_10) + (0x75))) = (s8) ((*(u8 *)((s8 *)(arg0) + (0x75))) - 2);
    sub_8082E1C(arg0, 0, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
}
#endif

void sub_8066864(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 0x00, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806688C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066AFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066C48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066C90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8066CEC(void *arg0)
{
  s32 *var_r0_37;
  s32 temp_r0_28;
  unsigned int temp_r0_17;
  int new_var2;
  s8 *new_var;
  void *temp_r1_22;
  if ((*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))) & 8)
  {
    temp_r0_17 = 1;
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - temp_r0_17;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_17;
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      new_var2 = 4;
      temp_r1_22 = (arg0 + 0xAC) - 0xC;
      new_var = (s8 *) temp_r1_22;
      *((s32 *) (new_var + 0)) = (s32) ((*((s32 *) (new_var + 0))) + 1);
      temp_r0_28 = (*((s32 *) (new_var + new_var2))) - 1;
      *((s32 *) (((s8 *) temp_r1_22) + new_var2)) = temp_r0_28;
      if (temp_r0_28 > 0)
      {
        sub_8082E1C(arg0, 7, 0, 0);
        var_r0_37 = &sub_806688C;
      }
      else
      {
        sub_8082E1C(arg0, 0xA, 0, 0);
        var_r0_37 = (s32 *) &sub_8066D78;
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_37;
    }
  }
}

void sub_8066D50(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8066DA4;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_808750C;

void sub_8066D78(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xB, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066DA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8066E5C(void *arg0);
void sub_8066E0C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 4, 0, 0);
        } else {
            sub_8082E1C(arg0, 5, 0, 0);
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8066E5C;
        play_sfx_80195B4(0xD5, -1);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066E5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806688C;

void sub_8066EB4(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 7, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806688C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066EE0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066F60.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066FFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067178.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067790.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_8087124();                                  /* extern */
extern s32 sub_80679FC;
s32 sub_8067838(void *arg0)
{
  int new_var;
  s32 temp_r0_8;
  new_var = 1;
  temp_r0_8 = sub_8087124();
  if (temp_r0_8 == 0)
  {
    if (new_var)
    {
      sub_8082E1C(arg0, new_var, 0, 0);
      *((s32 *) (((s8 *) arg0) + 0x80)) = temp_r0_8;
      *((s32 *) (((s8 *) arg0) + 0x84)) = 0x14;
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80679FC;
      return 0;
    }
  }
  return temp_r0_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067874.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8067894.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80678E8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
