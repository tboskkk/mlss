#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8095800 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095800.s\"");
#else
extern void sub_8095860();

void sub_8095800(u8* param_1) {
  u8* puVar1;
  u32* puVar2;
  u32 uVar3;
  u32 uVar4;
  u32 uVar5;
  
  puVar1 = param_1 + 0x76;
  if (((*(u8*)puVar1 & 6) == 2) || ((*(u8*)puVar1 & 6) == 4)) {
    puVar2 = (u32*)0x3001038;
    uVar3 = 0x819832C;
    uVar4 = 0x8198220;
    uVar5 = uVar3 - uVar4;
    puVar2 = (u32*)((u8*)puVar2 + uVar5);
    uVar3 = 0x8000;
    uVar4 = 0x8;
    (*(code*)puVar2)(uVar3, uVar4);
    *(u16*)(param_1 + 0x7A) = (u16)uVar3;
    *(u16*)(param_1 + 0x7E) = 0;
    puVar1 = param_1 + 0x79;
    *(u8*)puVar1 = (*(u8*)puVar1 & 0xDF);
  }
  *(u32*)((u8*)param_1 + 0x4C) = (u32)sub_8095860;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095860.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80958F0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095B30.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095D54.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095E04.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80962C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096364.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80963E4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096494.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096554.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096608.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80967A4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80969FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096C4C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096D8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4();                              /* extern */
extern s32 sub_8096F08;
void sub_8096E08(void *arg0)
{
  int new_var;
  void *temp_r2_19;
  new_var = -7;
  sub_8087CE4();
  if (((s32) (*((s32 *) (((s8 *) arg0) + 0x40)))) >= ((s32) (*((s32 *) (((s8 *) arg0) + 0x18)))))
  {
    sub_8082E1C(arg0, 6, -1, 0);
    temp_r2_19 = *((void **) (((s8 *) arg0) + 8));
    *((u8 *) (((s8 *) temp_r2_19) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_19) + 0x12)))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8096F08;
  }
}

void sub_8096E44(void *arg0)
{
  s8 *new_var3;
  u8 temp_r5_10;
  int new_var;
  int new_var2;
  temp_r5_10 = sub_8087CE4();
  if (temp_r5_10 == 0)
  {
 new_var3 = (s8 *) arg0; do { do { new_var = 0; new_var2 = 0x4C; sub_8082E1C(arg0, -1, -1, new_var); } while (0); *((s32 *) (new_var3 + new_var2)) = (s32) temp_r5_10; } while (0);
  }
}

s32 sub_807C0D0(void *, s32, s32);              /* extern */
extern s32 sub_80963E4;
void sub_8096E6C(void *arg0)
{
  s8 *new_var2;
  int new_var4;
  s8 *new_var3;
  s8 *new_var;
  if (((s32) ((s16) (*((u16 *) (((s8 *) arg0) + 0xAC))))) > 0)
  {
    new_var = ((s8 *) arg0) + 0xAC;
    *((u16 *) (((s8 *) arg0) + 0xAC)) = (u16) ((*((u16 *) new_var)) - 1);
    return;
  }
  sub_807C0D0(arg0, 0x208C, 0);
  new_var = ((s8 *) arg0) + 0x30;
  new_var3 = (s8 *) (*((void **) new_var));
  new_var2 = new_var3;
  new_var4 = (*((u8 *) (((s8 *) arg0) + 0x75))) - 1;
  *((s8 *) (new_var2 + 0x75)) = (s8) new_var4;
  sub_8082E1C(*((void **) new_var), 0, 0, 0);
  *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80963E4;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096EBC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096F08.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096F60.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

extern s32 sub_8097024;
void sub_8096FCC(void *arg0)
{
  void *temp_r2_28;
  void *temp_r4_12;
  temp_r4_12 = (void *) ((*((s32 *) (0x70 + ((s8 *) (*((void **) 0x03000FD8)))))) + 8);
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    play_sfx_80195B4(6, -1);
    sub_8082E1C(temp_r4_12, 8, 0x2039, 0);
    temp_r2_28 = (void *) (*((void **) (((s8 *) temp_r4_12) + 8)));
    *((u8 *) (((s8 *) temp_r2_28) + 0x12)) = (u8) (((-7) & (*(((s8 *) temp_r2_28) + 0x12))) | 2);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_8097024;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097024.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809706C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80970B8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809714C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80974F8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void *sub_807BF34(s32, s32, s32, s32, s32, s32, s32); /* extern */
s32 sub_807FA14(void *);                        /* extern */
s32 sub_8097DB4(void *);                        /* extern */
extern s32 sub_8097C38;
void sub_8097648(void *arg0)
{
  int new_var;
  s32 temp_r1_51;
  void *temp_r0_32;
  new_var = (*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x74))) + 8;
  if (1)
  {
    if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
    {
      temp_r0_32 = sub_807BF34(*((s32 *) (((s8 *) new_var) + 0x28)), 0x2089, 0, -0x40, -1, 0, 1);
      sub_8082E1C(temp_r0_32, 0, 0, 0);
      *((u8 *) (((s8 *) temp_r0_32) + 0x78)) = (u8) (0x1F & (*((u8 *) (((s8 *) temp_r0_32) + 0x78))));
      *((void **) (((s8 *) arg0) + 0x30)) = temp_r0_32;
      sub_807FA14(temp_r0_32);
      temp_r1_51 = 6 & ((int) (*((u8 *) (((s8 *) temp_r0_32) + 0x76))));
      if ((temp_r1_51 == 2) || (temp_r1_51 == 4))
      {
        *((s32 **) (((s8 *) temp_r0_32) + 0x4C)) = &sub_8097C38;
      }
      sub_8097DB4(arg0);
    }
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80976D0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097978.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097A90.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097B8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097C38.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void *sub_807FB04();                                /* extern */
s32 sub_8199F30();                                  /* extern */
s32 sub_81DD77C(s32, s32);                          /* extern */
void sub_8097CB4(void *arg0)
{
  void *new_var2;
  u16 temp_r0_12;
  void **temp_r1_62;
  void *temp_r0_17;
  void *temp_r0_9;
  int new_var3;
  s8 *new_var;
  new_var3 = 0x180;
  temp_r0_9 = *((void **) 0x03000FF4);
  new_var = (s8 *) temp_r0_9;
  temp_r0_12 = *((u16 *) (new_var + 0x88));
  if (temp_r0_12 != 0)
  {
    *((u16 *) (new_var + 0x88)) = (u16) (temp_r0_12 - 1);
    temp_r0_17 = sub_807FB04();
    *((s32 *) (((s8 *) temp_r0_17) + 4)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x38))) + 0x600);
    *((s32 *) (((s8 *) temp_r0_17) + 8)) = (s32) (*((s32 *) (((s8 *) arg0) + 0x3C)));
    *((s32 *) (((s8 *) temp_r0_17) + 0xC)) = (s32) ((*((s32 *) (((s8 *) arg0) + 0x40))) + (((*((s8 *) (((s8 *) arg0) + 0xC5))) - 0x16) << 8));
    *((s16 *) (((s8 *) temp_r0_17) + 0x10)) = (s16) (sub_81DD77C(0x180, sub_8199F30()) + 0x180);
    *((s16 *) (((s8 *) temp_r0_17) + 0x12)) = (s16) (0x4C - sub_81DD77C(0x99, sub_8199F30()));
    *((s16 *) (((s8 *) temp_r0_17) + 0x14)) = (s16) (sub_81DD77C(new_var3, sub_8199F30()) + 0x280);
    new_var2 = *((void **) (((s8 *) arg0) + 0x30));
    temp_r1_62 = *((void ***) (((s8 *) (*((void **) (((s8 *) new_var2) + 4)))) + 8));
    *((void **) (((s8 *) temp_r0_17) + 0)) = (void *) (*temp_r1_62);
    *temp_r1_62 = temp_r0_17;
    play_sfx_80195B4(0x2C, -1);
  }
}

s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_80974F8;
extern s32 sub_80976D0;
extern s32 sub_8097978;

void sub_8097D50(void *arg0) {
    void *temp_r1_9;
    void *temp_r4_15;
    void *temp_r6_12;

    temp_r1_9 = *(void **)0x03000FD8;
    temp_r6_12 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x70))) + 8);
    temp_r4_15 = (void *) ((*(s32 *)((s8 *)(temp_r1_9) + (0x74))) + 8);
    sub_80884AC(arg0);
    if (0x20 & (*(u8 *)((s8 *)(arg0) + (0x79)))) {
        if ((arg0 == temp_r6_12) && ((*(s32 **)((s8 *)(temp_r4_15) + (0x4C))) == &sub_80976D0)) {
            (*(s32 **)((s8 *)(temp_r4_15) + (0x4C))) = &sub_8097978;
        }
        if ((arg0 == temp_r4_15) && ((*(s32 **)((s8 *)(temp_r6_12) + (0x4C))) == &sub_80976D0)) {
            (*(s32 **)((s8 *)(temp_r6_12) + (0x4C))) = &sub_8097978;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80974F8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097DB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097E28.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097EB4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_807C298(void *);                        /* extern */

void sub_8097F10(void *arg0) {
    void *temp_r1_8;
    void *temp_r4_11;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (0x30)));
    temp_r4_11 = *(*(void ***)((s8 *)((*(void **)((s8 *)(temp_r1_8) + (4)))) + (8)));
    if (temp_r4_11 == NULL) {
        sub_807C298(temp_r1_8);
        (*(void **)((s8 *)(arg0) + (0x30))) = temp_r4_11;
        (*(void **)((s8 *)(arg0) + (0x4C))) = temp_r4_11;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097F30.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097FC4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098198.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_80987F4(void *);                        /* extern */
void sub_80982DC(void *arg0)
{
  short new_var;
  s32 temp_r1_51;
  int new_var2;
  void *temp_r0_32;
  new_var = 0;
  new_var2 = (*((s32 *) (((s8 *) (*((void **) 0x03000FD8))) + 0x74))) + 8;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    temp_r0_32 = sub_807BF34(*((s32 *) (((s8 *) new_var2) + 0x28)), 0x2089, new_var, -0x40, -1, 0, 1);
    sub_8082E1C(temp_r0_32, 0, 0, 0);
    *((u8 *) (((s8 *) temp_r0_32) + 0x78)) = (u8) (0x1F & (*((u8 *) (((s8 *) temp_r0_32) + 0x78))));
    *((void **) (((s8 *) arg0) + 0x30)) = temp_r0_32;
    sub_807FA14(temp_r0_32);
    temp_r1_51 = 6 & (*((u8 *) (((s8 *) temp_r0_32) + 0x76)));
    if ((temp_r1_51 == 2) || (temp_r1_51 == 4))
    {
      *((s32 **) (((s8 *) temp_r0_32) + 0x4C)) = &sub_8097C38;
    }
    sub_80987F4(arg0);
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098364.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098540.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809861C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
