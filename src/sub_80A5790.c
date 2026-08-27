#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A5790 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_80884AC();
void sub_80A5790(u32* p0);
s32 sub_810D738();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5790.s\"");
#else
extern void sub_80A5808();

void sub_80A5790(u32* p0) {
    u32* r0;
    u32* r4;
    u8 r1;
    u32* r2;
    u32 r0_2;
    u16 r0_3;
    u8 r1_2;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x0);
    r4 = (u32*)((u8*)r0 + 0x70);
    r0 = (u32*)((u8*)r4 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    if ((r1 & 0x08) == 0)
        goto _080A57EC;
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_2 = *(u8*)((u8*)r0 + 0x0);
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02)
        goto _080A57B8;
    if (r1_2 != 0x04)
        goto _080A57E8;
_080A57B8:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0_2 = r0 - r1;
    r2 = (u32*)((u8*)r2 + r0_2);
    r0_3 = 0x80 << 7;
    r1_2 = 0x12;
    *(u32*)r2 = r0_3;
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)((u8*)r2 + 0x0) = r0_3;
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)((u8*)r0 + 0x0) = 0x00;
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_2 = *(u8*)((u8*)r2 + 0x0);
    r0_2 = -(0x21);
    r1_2 &= r0_2;
    *(u8*)((u8*)r2 + 0x0) = r1_2;
_080A57E8:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A5808;
_080A57EC:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5808.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A58C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_80A5ABC(void *arg0)
{
  int new_var2;
  int new_var;
  s32 temp_r6_14;
  void *temp_r4_11;
  void *temp_r5_13;
  temp_r4_11 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r5_13 = temp_r4_11 + 8;
  temp_r6_14 = *((s32 *) (((s8 *) arg0) + 0x2C));
  sub_80884AC(temp_r5_13);
  new_var2 = 0x100;
  new_var = -0x80;
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_11) + 0x81))))
  {
    *((u8 *) (((s8 *) temp_r4_11) + 0xD4)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r4_11) + 0xD4))));
    *((s16 *) (((s8 *) temp_r4_11) + 0xD2)) = new_var2;
    sub_810D738(temp_r5_13, temp_r6_14, 0, 0, 0x08014104);
    *((u16 *) (((s8 *) temp_r5_13) + 0x24)) = (u16) ((*((u16 *) (((s8 *) temp_r5_13) + 0x24))) + 1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = (s32 *) (&sub_80A5790);
  }
}

s32 sub_80884AC(void *);                        /* extern */
s32 sub_810D738(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_80A53B0;
void sub_80A5B28(void *arg0)
{
  int new_var;
  s32 temp_r6_14;
  void *temp_r4_11;
  int new_var2;
  void *temp_r5_13;
  temp_r4_11 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70));
  temp_r5_13 = temp_r4_11 + 8;
  temp_r6_14 = *((s32 *) (((s8 *) arg0) + 0x2C));
  new_var = 0x100;
  new_var2 = -0x80;
  sub_80884AC(temp_r5_13);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_11) + 0x81))))
  {
    *((u8 *) (((s8 *) temp_r4_11) + 0xD4)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r4_11) + 0xD4))));
    *((s16 *) (((s8 *) temp_r4_11) + 0xD2)) = new_var;
    sub_810D738(temp_r5_13, temp_r6_14, 0, 0, 0x08014004);
    *((u16 *) (((s8 *) temp_r5_13) + 0x24)) = (u16) ((*((u16 *) (((s8 *) temp_r5_13) + 0x24))) + 1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A53B0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5B94.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5C28.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5E8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A5F6C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6200.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A6404.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
