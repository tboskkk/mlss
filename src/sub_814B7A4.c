#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814B7A4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814B7A4.s\"");
#else
void sub_814B7A4(u32* p1, u32* p2)
{
    u32* r3 = p1;
    u32* r4 = p2;
    u32* r0;
    u32* r1;
    u32* r2;
    u8 temp;
    s32 temp2;
    
    r0 = (u32*)((u8*)p1 + 0x294);
    r0 = *(u32**)r0;
    temp = *(u8*)((u8*)r0 + 0x12);
    if (temp & 0x08)
    {
        r0 = (u32*)((u8*)p1 + 0x214);
        temp = *(u8*)r0;
        temp &= 0xF7;
        *(u8*)r0 = temp;
    }
    
    r0 = (u32*)((u8*)p1 + 0x2D4);
    r0 = *(u32**)r0;
    r1 = (u32*)((u8*)p1 + 0x18);
    temp2 = *(s16*)r0 - *(u32*)r1;
    *(u32*)r1 = temp2;
    
    r0 = (u32*)((u8*)p1 + 0x24);
    if (*(u32*)r0 & 0x600000)
    {
        r0 = (u32*)((u8*)p1 + 0x14);
        temp2 += *(u32*)r0;
        r1 = (u32*)((u8*)p1 + 0x2D4);
        r1 = *(u32**)r1;
        if (temp2 > *(u32*)r1)
        {
            r0 = (u32*)((u8*)p2 + 0x04);
            *(u32*)p2 = *(u32*)r0;
        }
    }
}
#endif

s32 sub_813B5B4(void *);                            /* extern */
extern s32 sub_814A0A4;
void sub_814B804(s32 arg0, void *arg1, s32 **arg2)
{
  int new_var;
  new_var = 0x214;
  if ((*((u8 *) (((s8 *) (*((void **) (((s8 *) arg1) + 0x294)))) + 0x23))) == 2)
  {
    *((u8 *) (((s8 *) arg1) + 0x214)) = (u8) (((-8) & (*(((s8 *) arg1) + new_var))) | 5);
  }
  if ((sub_813B5B4(arg1) << 0x18) == 0)
  {
    *arg2 = &sub_814A0A4;
  }
}
