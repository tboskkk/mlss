#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814BFCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814BFCC.s\"");
#else
extern void sub_8149660();
extern void sub_814BC68();

void sub_814BFCC(u32* p1, u32* p2)
{
    u32* r3 = p1;
    u32* r4 = p2;
    u32* r0;
    u32* r2;
    u8 r1;
    u32 r0_2;
    u32 r2_2;
    u32 r1_2;
    u32 r0_3;
    u32 r1_3;
    
    r0 = (u32*)((u8*)r3 + 0x294);
    r0 = *(u32**)r0;
    r1 = *(u8*)((u8*)r0 + 0x12);
    if (r1 & 0x08)
    {
        r2 = (u32*)((u8*)r3 + 0x214);
        r1 = *(u8*)r2;
        r1 = ~(r1 & 0x08);
        *(u8*)r2 = r1;
    }
    
    r0 = (u32*)((u8*)r3 + 0x2D4);
    r0 = *(u32**)r0;
    r1_2 = *(u16*)((u8*)r0 + 0x00);
    r0 = (u32*)((u8*)r3 + 0x18);
    r2_2 = *(u32*)r0;
    r0 = (u32*)((u8*)r3 + 0x18);
    *(u32*)r0 = r2_2 - r1_2;
    
    r0 = (u32*)((u8*)r3 + 0x24);
    r0_2 = *(u32*)r0;
    if (r0_2 & 0x00C00000)
    {
        r0 = (u32*)((u8*)r3 + 0x14);
        r0_3 = *(u32*)r0;
        r0 = (u32*)((u8*)r3 + 0x2D4);
        r0 = *(u32**)r0;
        r1_3 = *(u32*)((u8*)r0 + 0x00);
        if (r0_3 + (r2_2 - r1_2) > r1_3)
        {
            r0 = (u32*)((u8*)r3 + 0x1D8);
            r1 = *(u8*)r0;
            r0_3 = ((s32)r1) << 0x1F;
            if (r0_3 == 0)
            {
                r0_3 = ((s32)r1) << 0x1E;
                if (r0_3 >= 0)
                {
                    *(u32**)r4 = &sub_814BC68;
                }
                else
                {
                    *(u32**)r4 = &sub_8149660;
                }
            }
            else
            {
                *(u32**)r4 = &sub_814BC68;
            }
        }
    }
}
#endif
