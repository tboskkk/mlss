#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8062134 needs.

asm_unified(".include \"asm/macros.inc\"");




void sub_8062F40(void *arg0);

extern s32 sub_8062E98;

extern s32 sub_8062420;

s32 sub_807C298();                              /* extern */
extern s32 sub_808750C;

void sub_8062134(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x30))) != 0) {
        sub_807C298();
    }
    arg0->handler = &sub_808750C;
}

s32 sub_8082B00();
s32 sub_8082E1C(void *, s32, s32, s32);
extern s32 sub_8061B8C;
extern s32 sub_808750C;
void sub_8062150(void *arg0)
{
  s32 *var_r0_11;
  if ((*((s32 *) (((s8 *) arg0) + 0x30))) != 0)
  {
    var_r0_11 = &sub_808750C;
    goto block_4;
  }
  if (sub_8082B00() == 0)
  {
    sub_8082E1C(arg0, 0xA, 0, 0);
    var_r0_11 = &sub_8061B8C;
    block_4:
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_11;

  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062188.s\"");
#else
s32 sub_807C298();                              /* extern */
s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_80618A4;

void sub_8062188(void *arg0) {
    s32 temp_r1_20;

    if ((*(s32 *)((s8 *)(arg0) + (0x30))) != 0) {
        sub_807C298();
    }
    if (sub_8082B00() == 0) {
        temp_r1_20 = (*(s32 *)((s8 *)(arg0) + (0x9C))) & 1;
        switch (temp_r1_20) {                       /* irregular */
        case 0:
            sub_8082E1C(arg0, 2, 0, 0);
            break;
        case 1:
            sub_8082E1C(arg0, 6, 0, 0);
            break;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80618A4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80621DC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80622A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062310.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_810DD7C(void *, s32, s32);              /* extern */
extern s32 sub_808750C;

s32 sub_806236C(struct Entity *arg0, s32 arg1) {
    stop_sfx_80195A8(0x81);
    sub_810DD7C(arg0, arg1, 0xFF);
    arg0->handler = &sub_808750C;
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062394.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_80623F8(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        arg0->handler = &sub_8062420;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062420.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062488.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
void sub_8062548(void *arg0);
void sub_80624FC(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 5, 0, 0);
        } else {
            sub_8082E1C(arg0, 7, 0, 0);
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        arg0->handler = (s32 *) &sub_8062548;
    }
}

extern s32 sub_80621DC;
void sub_8062548(void *arg0)
{
  int temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_17;
    if (((s32) (temp_r0_17 << 0x10)) < 0)
    {
      if ((*((s32 *) (((s8 *) arg0) + 0x9C))) == 0)
      {
        sub_8082E1C(arg0, 6, 0, 0);
      }
      else
      {
        sub_8082E1C(arg0, 8, 0, 0);
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80621DC;
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806259C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062794.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062A68.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062B88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062C48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062C94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8062D68(struct Entity *arg0) {
    sub_8082E1C(arg0, 0x0E, 0, 0);
    arg0->handler = &sub_808750C;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062D84.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_806259C;

void sub_8062DE0(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0xB, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806259C;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062E0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8062E70(void *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 0x02, 0, 0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8062E98;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062E98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_8062F00(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 4, 0, 0);
        } else {
            sub_8082E1C(arg0, 7, 0, 0);
        }
        arg0->handler = (s32 *) &sub_8062F40;
    }
}

void sub_8062F8C(void *arg0);
void sub_8062F40(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
            sub_8082E1C(arg0, 5, 0, 0);
        } else {
            sub_8082E1C(arg0, 8, 0, 0);
        }
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x1E;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = (s32 *) &sub_8062F8C;
    }
}

extern s32 sub_8062E0C;
void sub_8062F8C(void *arg0)
{
  short temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    if ((*((s32 *) (((s8 *) arg0) + 0x9C))) == 0)
    {
      sub_8082E1C(arg0, 6, 0, 0);
    }
    else
    {
      temp_r0_11 = 9;
      sub_8082E1C(arg0, temp_r0_11, 0, 0);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8062E0C;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062FD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
