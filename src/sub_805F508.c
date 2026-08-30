#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805F508 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F508.s\"");
#else
void sub_805F508(u32* p0, s16 p1, s16 p2, u16 p3)
{
    u32* r4;
    u32* r5;
    u32* r6;
    u16 r0;
    u16 r1;
    u16 r2;
    
    r4 = (u32*)((u8*)p0 + 0x30);
    r6 = *(u32**)r4;
    r5 = *(u32**)((u8*)r6 + 0x30);
    
    if (p1 < 0)
        p1 += 0xFF;
        
    r0 = p1 >> 8;
    *(u16*)((u8*)r5 + 0xAE) = r0;
    *(u16*)((u8*)r6 + 0xAE) = r0;
    
    if (p2 < 0)
        p2 += 0xFF;
        
    r0 = p2 >> 8;
    *(u16*)((u8*)r5 + 0xB0) = r0;
    *(u16*)((u8*)r6 + 0xB0) = r0;
    
    if (p3 < 0)
        p3 += 0xFF;
        
    r2 = p3 >> 8;
    r1 = r2 + *(u16*)((u8*)r6 + 0xB2);
    *(u16*)((u8*)r6 + 0xB2) = r1;
    r1 = r2 - *(u16*)((u8*)r5 + 0xB2);
    *(u16*)((u8*)r5 + 0xB2) = r1;
}
#endif

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_805F5E4;
extern s32 sub_808750C;
void sub_805F554(void *arg0)
{
  s32 *var_r0_24;
  s32 var_r0_33;
  s32 *var_r1_32;
  s32 temp_r0_21;
  if (8 & (*((u8 *) (((s8 *) (*((void **) (((s8 *) arg0) + 8)))) + 0x12))))
  {
    sub_8082E1C(arg0, 0, 0, 0);
    var_r0_33 = *((s32 *) (((s8 *) arg0) + 0x9C));
    temp_r0_21 = var_r0_33;
    if (temp_r0_21 == 0)
    {
      var_r0_24 = &sub_808750C;
    }
    else
    {
      if (temp_r0_21 == 1)
      {
        var_r1_32 = (s32 *) (arg0 + 0xA0);
        var_r0_33 = 0;
      }
      else
      {
        var_r1_32 = (s32 *) (arg0 + 0xA0);
        var_r0_33 = 0x96;
      }
      *var_r1_32 = var_r0_33;
      var_r0_24 = &sub_805F5E4;
    }
    *((s32 **) (((s8 *) arg0) + 0x4C)) = var_r0_24;
  }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F5A8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F5BC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805F5D0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
