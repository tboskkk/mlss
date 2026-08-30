#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806C1A8 needs.

asm_unified(".include \"asm/macros.inc\"");





s32 stop_sfx_80195A8();
void sub_806C94C(void *arg0);

extern s32 sub_806C454;

s32 sub_810DD7C();
extern s32 sub_806C2B0;
s32 sub_8082E1C();
extern s32 sub_806B7BC;

void sub_806C1A8(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 8;
        arg0->handler = &sub_806B7BC;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C1C8.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */

void sub_806C1C8(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 0, 0, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C1EE.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C224.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8085B38(void *);                        /* extern */
extern s32 sub_806BAB8;

void sub_806C224(void *arg0) {
    void *temp_r1_13;

    sub_8082E1C(arg0, 5, 0, 0);
    temp_r1_13 = arg0 + 0x84;
    (*(s32 *)((s8 *)(arg0) + (0x84))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x38))) + 0xFFFFB800);
    (*(s32 *)((s8 *)(temp_r1_13) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x3C)));
    (*(s32 *)((s8 *)((temp_r1_13 + 4)) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x40)));
    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x20);
    (*(s16 *)((s8 *)(arg0) + (0x7C))) = 0x180;
    (*(s16 *)((s8 *)(arg0) + (0x7A))) = 0;
    sub_8085B38(arg0);
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0xA;
    play_sfx_80195B4(0x6C, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806BAB8;
}
#endif

void sub_806C294(struct Entity *arg0) {
    sub_8082E1C(arg0, 0x02, 0, 0);
    arg0->handler = &sub_806C2B0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C2B0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_806C3AC;
void sub_806C314(void *arg0)
{
  s32 *var_r0_48;
  u16 temp_r0_17;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_17 = (*((u16 *) (((s8 *) arg0) + 0xAC)) = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
    if (((s32) (temp_r0_17 << 0x10)) <= 0)
    {
      stop_sfx_80195A8(0x7C);
      if ((*((s32 *) (((s8 *) arg0) + 0xA4))) != 0)
      {
        if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
        {
          sub_8082E1C(arg0, 9, 0, 0);
        }
        else
        {
          sub_8082E1C(arg0, 0xF, 0, 0);
        }
        var_r0_48 = (s32 *) (&sub_806C94C);
      }
      else
      {
        if ((*((s32 *) (((s8 *) arg0) + 0xA8))) == 0)
        {
          sub_8082E1C(arg0, 0x1E, 0, 0);
        }
        else
        {
          sub_8082E1C(arg0, 0x1F, 0, 0);
        }
        *((u16 *) (((s8 *) arg0) + 0xAC)) = 3U;
        var_r0_48 = &sub_806C3AC;
      }
      *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_48;
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C3AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C454.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C5C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C6B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C76C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C7B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_806CAC0(void *arg0);
void sub_806C800(void *arg0)
{
  s32 *var_r0_26;
  s32 temp_r0_22;
  s32 new_var;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0, 0, 0);
    temp_r0_22 = (*((s32 *) (((s8 *) arg0) + 0x9C))) - 1;
    *((s32 *) (((s8 *) arg0) + 0x9C)) = temp_r0_22;
    if (temp_r0_22 <= 0)
    {
      var_r0_26 = (void *) 0;
    }
    else
    {
      new_var = *((s32 *) (((s8 *) arg0) + 0xA4));
      *((s16 *) (((s8 *) (arg0 + 0xA4)) + 8)) = (s16) new_var;
      var_r0_26 = (s32 *) &sub_806CAC0;
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_26;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C848.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_806C8C0(struct Entity *arg0, s32 arg1) {
    arg0->unk9C = 1;
    sub_810DD7C(arg0, arg1, 0xFF);
    return 0;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8086858(void *, s32);                       /* extern */
extern s32 sub_806C848;
s32 sub_806C8C0(struct Entity *arg0, s32 arg1);
void sub_806CB3C(void *arg0);
void sub_806C8D8(struct Entity *arg0) {
    s32 var_r1_29;
    void *temp_r2_8;

    temp_r2_8 = arg0->unk08;
    if (8 & (*(u8 *)((s8 *)(temp_r2_8) + (0x12)))) {
        (*(s8 *)((s8 *)(temp_r2_8) + (0x20))) = 0x10;
        if (arg0->unkA8 == 0) {
            sub_8082E1C(arg0, 0xC, 0, 0);
            var_r1_29 = 0x1660;
        } else {
            sub_8082E1C(arg0, 0x12, 0, 0);
            var_r1_29 = 0x16E2;
        }
        *(s32 *)0x03000E3C = sub_8086858(arg0, var_r1_29);
        (*(s32 **)((s8 *)(arg0) + (0x58))) = (s32 *) &sub_806C8C0;
        (*(s32 **)((s8 *)(arg0) + (0x5C))) = &sub_806C848;
        arg0->handler = (s32 *) &sub_806CB3C;
    }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806C9A4;

void sub_806C94C(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        (*(s32 *)((s8 *)(arg0) + (0xA8))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0xA8))) + 1) & 1);
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0;
        (*(s32 *)((s8 *)((arg0 + 0x9C)) + (8))) = 0;
        if ((*(s32 *)((s8 *)(arg0) + (0xA8))) == 0) {
            sub_8082E1C(arg0, 7, 0, 0);
        } else {
            sub_8082E1C(arg0, 0xD, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806C9A4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C9A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806C9FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CA38.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CA7C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_806CAC0(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    sub_8082E1C(arg0, 0x15, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_806C454;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CAF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

void sub_806CB3C(void *arg0)
{
  int new_var2;
  s8 *new_var;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0, 0, 0);
    new_var = (s8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x20);
    new_var2 = 0;
    *new_var = 0x10;
    *((s32 *) (((s8 *) arg0) + 0x4C)) = new_var2;
  }
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806C9A4;

void sub_806CB6C(struct Entity *arg0) {
    if (arg0->unkA8 == 0) {
        sub_8082E1C(arg0, 7, 0, 0);
    } else {
        sub_8082E1C(arg0, 0xD, 0, 0);
    }
    arg0->handler = &sub_806C9A4;
}

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806C454;

void sub_806CBA0(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0x15, 0, 0);
        arg0->handler = &sub_806C454;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CBCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CCB8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CD70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CED0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806CFBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D048.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D104.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D1D4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D290.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 stop_sfx_80195A8(s32);                      /* extern */
extern s32 sub_806D480;

void sub_806D30C(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        arg0->handler = &sub_806D480;
    }
}

extern s32 sub_806CD70;

s32 sub_806D340(struct Entity *arg0, s32 arg1) {
    sub_810DD7C(arg0, arg1, 0xFF);
    arg0->handler = &sub_806CD70;
    return 0;
}

extern s32 sub_808750C;
void sub_806D35C(void *arg0)
{
  unsigned int temp_r0_11;
  temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = temp_r0_11;
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    stop_sfx_80195A8(0xD2);
    sub_8082E1C(arg0, 6, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

void sub_806D390(void *arg0)
{
  u16 temp_r0_11;
  *((u16 *) (((s8 *) arg0) + 0xAC)) = (temp_r0_11 = (*((u16 *) (((s8 *) arg0) + 0xAC))) - 1);
  if (((s32) (temp_r0_11 << 0x10)) <= 0)
  {
    stop_sfx_80195A8(0xD2);
    sub_8082E1C(arg0, 6, 0, 0);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_808750C;
  }
}

extern s32 sub_806CCB8;

void sub_806D3C4(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        stop_sfx_80195A8(0x81);
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806CCB8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D3F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D434.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D480.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

extern s32 sub_806CED0;

void sub_806D4F0(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x300;
    (*(s32 *)((s8 *)((arg0 + 0x84)) + (8))) = 0x33;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806CED0;
}

extern s32 sub_806CBCC;

void sub_806D51C(void *arg0) {
    sub_8082E1C(arg0, 2, 0, 0);
    (*(s32 *)((s8 *)(arg0) + (0x84))) = 0x300;
    (*(s32 *)((s8 *)((arg0 + 0x84)) + (8))) = 0x33;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806CBCC;
}

s32 sub_810DD7C(void *, s32, s32);          /* extern */
extern s32 sub_806D048;
extern s32 sub_806D104;
extern s32 sub_806D1D4;
extern s32 sub_806D290;

s32 sub_806D548(struct Entity *arg0, s32 arg1) {
    s32 *var_r0_25;
    s32 temp_r0_12;

    sub_810DD7C(arg0, arg1, 0xFF);
    temp_r0_12 = arg0->unkA8;
    switch (temp_r0_12) {                           /* irregular */
    case 0:
        var_r0_25 = &sub_806D048;
        break;
    case 1:
        var_r0_25 = &sub_806D104;
        break;
    case 2:
        var_r0_25 = &sub_806D1D4;
        break;
    default:
        var_r0_25 = &sub_806D290;
        break;
    }
    arg0->handler = var_r0_25;
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D594.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D61C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D6A8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
