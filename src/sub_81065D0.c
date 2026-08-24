#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81065D0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81065D0(void *arg0)
{
  int new_var;
  s16 temp_r4_10;
  void *temp_r1_18;
  temp_r4_10 = (s16) (*((u16 *) (((s8 *) arg0) + 0x10)));
  new_var = -0x21;
  if (temp_r4_10 != 0)
  {
    *((u16 *) (((s8 *) arg0) + 0x10)) = (u16) ((*((u16 *) (((s8 *) arg0) + 0x10))) - 1);
    return;
  }
  temp_r1_18 = *((void **) 0x03000FD8);
  *((u8 *) (((s8 *) temp_r1_18) + 0x2BF)) = (u8) (new_var & (*((u8 *) (((s8 *) temp_r1_18) + 0x2BF))));
  *((s32 *) (((s8 *) arg0) + 4)) = (s32) temp_r4_10;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106608.s\"");
#else
void sub_8106608(void* p0)
{
    u32* r4;
    u16* r1;
    u16 r0;
    s16 r5;
    u16 r3;

    r4 = *(u32**)(0x03000FD8);
    r0 = *(u16*)((u8*)p0 + 0x18);
    r1 = (u16*)((u8*)r4 + 0x40);
    r5 = 0x18;
    r0 = *(s16*)((u8*)p0 + r5);
    if (r0 < 0)
        r0 += 0xFF;
    r0 >>= 8;
    r3 = *(u16*)((u8*)r1 + 0x00) - r0;
    *(u16*)((u8*)r1 + 0x00) = r3;
    r0 = *(u16*)((u8*)p0 + 0x18);
    r0 += 0x19;
    *(u16*)((u8*)p0 + 0x18) = r0;
    r1 = (u16*)((u8*)r4 + 0x40);
    r0 = *(s16*)((u8*)r1 + 0x00);
    if (r0 > 0)
    {
        *(u16*)((u8*)r1 + 0x00) = 0;
        *(u32*)((u8*)p0 + 0x04) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106650.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
