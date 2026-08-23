#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A4210 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4210.s\"");
#else
extern void sub_80A4288();

void sub_80A4210(void* p0)
{
    u32* r4;
    u32* r0;
    u8 r1;
    u32* r2;
    u32 r0_2;
    u32 r1_2;
    u16 r0_3;
    u16 r1_3;
    u8 r1_4;
    u8 r0_4;
    
    r0 = (u32*)0x03000FD8;
    r0 = (u32*)((u8*)r0 + 0x00);
    r4 = (u32*)((u8*)*r0 + 0x74);
    r0 = (u32*)((u8*)*r4 + 0x10);
    r1 = *(u8*)((u8*)r0 + 0x12);
    
    if ((r1 & 0x08) == 0)
        goto _080A426C;
        
    r0 = (u32*)((u8*)r4 + 0x7E);
    r0_2 = *(u8*)((u8*)r0 + 0x00);
    
    r1_2 = r0_2 & 0x06;
    if (r1_2 == 0x02)
        goto _080A4238;
    if (r1_2 != 0x04)
        goto _080A4268;
        
_080A4238:
    r2 = (u32*)0x03001038;
    r2 = (u32*)((u8*)r2 + 0x00);
    r0_3 = *(u16*)((u8*)0x0819832C - 0x08198220 + (u8*)r2);
    r1_3 = 0x80 << 7;
    r0_4 = r1_3 & 0x0F;
    
    r0_2 = r0_3;
    r1_2 = r0_4;
    ((void(*)(u32, u32))r2)(r0_2, r1_2);
    
    r2 = (u32*)((u8*)r4 + 0x82);
    *(u16*)((u8*)r2 + 0x00) = r0_3;
    
    r0 = (u32*)((u8*)r4 + 0x86);
    *(u16*)((u8*)r0 + 0x00) = 0x0000;
    
    r2 = (u32*)((u8*)r4 + 0x81);
    r1_4 = *(u8*)((u8*)r2 + 0x00);
    r0_4 = 0x21;
    r0_4 = -r0_4;
    r0_4 = r0_4 & r1_4;
    *(u8*)((u8*)r2 + 0x00) = r0_4;
    
_080A4268:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_80A4288;
    
_080A426C:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4288.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4344.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A453C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A45DC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4654.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A46FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A47B0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80884AC(void *);                        /* extern */
extern s32 sub_80A46FC;
void sub_80A49A8(void *arg0)
{
  s32 temp_r1_26;
  void *temp_r2_37;
  void *temp_r4_10;
  void *temp_r5_12;
  int new_var;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  new_var = -7;
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 5, 0x2053, 0);
      temp_r2_37 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_37) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_37) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A46FC;
  }
}

extern s32 sub_80A3DF0;
void sub_80A4A10(void *arg0)
{
  s32 temp_r1_26;
  int new_var;
  void *temp_r2_37;
  void *temp_r4_10;
  void *temp_r5_12;
  temp_r4_10 = *((void **) (((s8 *) (*((void **) 0x03000FD8))) + 0x74));
  temp_r5_12 = temp_r4_10 + 8;
  new_var = -7;
  sub_80884AC(temp_r5_12);
  if (0x20 & (*((u8 *) (((s8 *) temp_r4_10) + 0x81))))
  {
    temp_r1_26 = 6 & (*((u8 *) (((s8 *) temp_r4_10) + 0x7E)));
    if ((temp_r1_26 == 2) || (temp_r1_26 == 4))
    {
      sub_8082E1C(temp_r5_12, 0, 0x2053, 0);
      temp_r2_37 = *((void **) (((s8 *) temp_r5_12) + 8));
      *((u8 *) (((s8 *) temp_r2_37) + 0x12)) = (u8) ((new_var & (*((u8 *) (((s8 *) temp_r2_37) + 0x12)))) | 2);
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = &sub_80A3DF0;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4A78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4B0C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4D70.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A4E54.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A50F0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A52FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
