#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A3324 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_80884AC();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3324.s\"");
#else
extern void sub_80A339C();

void sub_80A3324(u32* p0)
{
    u32* r0;
    u32* r4;
    u8 r1;
    u8 r0_2;
    u16 r1_2;
    u32 r2;
    u32 r0_3;
    u32 r2_2;
    u8 r1_3;
    u32 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = *(u32**)r0;
    r4 = *(u32**)(r0 + 0x70 / 4);
    r0 = *(u32**)(r4 + 0x10 / 4);
    r1 = *(u8*)(r0 + 0x12);
    r0 = r1 & 0x08;
    if (r0 == 0)
        goto _080A3380;
    r0 = r4;
    r0 = r0 + 0x7E / 4;
    r0_2 = *(u8*)r0;
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02)
        goto _080A334C;
    if (r1_2 != 0x04)
        goto _080A337C;
_080A334C:
    r2 = (u32*)0x03001038;
    r0 = (u32*)0x0819832C;
    r1 = (u32*)0x08198220;
    r0 = r0 - r1;
    r2 = *(u32**)r2;
    r2 = r2 + r0;
    r0 = 0x80 << 7;
    r1 = 0x0F;
    r0_3 = r0;
    r1_2 = r1;
    r2_2 = r2;
    ((void(*)(u32, u32, u32))r2_2)(r0_3, r1_2, 0);
    r2 = r4;
    r2 = r2 + 0x82 / 4;
    r0 = 0x80 << 7;
    *(u16*)r2 = (u16)r0;
    r0 = r4;
    r0 = r0 + 0x86 / 4;
    *(u16*)r0 = 0;
    r2 = r4;
    r2 = r2 + 0x81 / 4;
    r1_3 = *(u8*)r2;
    r0 = 0x21;
    r0 = -r0;
    r0 = r0 & r1_3;
    *(u8*)r2 = (u8)r0;
_080A337C:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A339C;
_080A3380:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A339C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3458.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3650.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_810D738(void *, s32, s32, s32, s32);    /* extern */
extern s32 sub_80A3768;
void sub_80A36F0(void *arg0)
{
  int new_var;
  int new_var2;
  s32 temp_r7_14;
  void *temp_r4_11;
  void *temp_r5_13;
  temp_r4_11 = (void *) (*((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70)));
  temp_r5_13 = (void *) (temp_r4_11 + 8);
  temp_r7_14 = *((s32 *) (((s8 *) arg0) + 0x2C));
  sub_80884AC(temp_r5_13);
  new_var2 = -0x80;
  new_var = 0x100;
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_11) + 0x81))))
  {
    play_sfx_80195B4(0x7D, -1);
    *((u8 *) (((s8 *) temp_r4_11) + 0xD4)) = (u8) (new_var2 & (*((u8 *) (((s8 *) temp_r4_11) + 0xD4))));
    *((s16 *) (((s8 *) temp_r4_11) + 0xD2)) = new_var;
    sub_810D738(temp_r5_13, temp_r7_14, 0, 0, 0x08052102);
    *((u16 *) (((s8 *) temp_r5_13) + 0x24)) = (u16) ((*((u16 *) (((s8 *) temp_r5_13) + 0x24))) + 1);
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A3768;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3768.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3810.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A38C4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_80A3810;
void sub_80A3ABC(void *arg0)
{
  s32 temp_r1_26;
  void *temp_r2_37;
  void *temp_r4_10;
  void *temp_r5_12;
  int new_var;
  temp_r4_10 = *((void **) ((*((void **) 0x03000FD8)) - -0x70));
  temp_r5_12 = temp_r4_10 + 8;
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    new_var = -7;
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 5, 0x2024, 0);
      temp_r2_37 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_37) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_37) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A3810;
  }
}

extern s32 sub_80A2EFC;
void sub_80A3B24(void *arg0)
{
  s32 temp_r1_26;
  int new_var;
  void *temp_r2_37;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = (void *) (*((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x70)));
  temp_r5_12 = (void *) (temp_r4_10 + 8);
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    new_var = -7;
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 0, 0x2024, 0);
      temp_r2_37 = (void *) (*((void **) (((s8 *) temp_r5_12) + 8)));
      *((u8 *) (((s8 *) temp_r2_37) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_37) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A2EFC;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3B8C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3C20.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3D70.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
