#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80401F0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80401F0.s\"");
#else
void sub_80401F0(u32* p0, u32* p1, s32 p2, u16 p3)
{
    u32* r12 = p0;
    u32* r4 = p1;
    u32* r1 = (u32*)((u8*)p0 + 0x248);
    u32* r2 = (u32*)((u8*)p0 + 0x254);
    u32* r0 = (u32*)((u8*)p0 + 0x258);
    
    if (p2 != -1)
    {
        *(u16*)((u8*)r12 + 0x266) = *(s16*)((u8*)r12 + 0x266);
        *r1 = *(u16*)((u8*)r12 + 0x266);
    }
    else
    {
        *r1 = p2;
    }
    
    r1 = (u32*)((u8*)p0 + 0x25C);
    if (*r4 != -1)
    {
        *(u16*)((u8*)r12 + 0x264) = *(s16*)((u8*)r12 + 0x264);
        *r1 = *(u16*)((u8*)r12 + 0x264);
    }
    else
    {
        *r1 = *r4;
    }
    
    r1 = (u32*)((u8*)p0 + 0x260);
    r0 = (u32*)((u8*)p0 + 0x258);
    *r1 = *r0;
    
    r1 = (u32*)((u8*)p0 + 0x264);
    *(u32*)((u8*)p0 + 0x264) = 0;
    
    r2 = (u32*)((u8*)p0 + 0x24E);
    r1 = (u32*)((u8*)p0 + 0x254);
    r0 = (u32*)((u8*)p0 + 0x250);
    *r2 = *(u32*)((u8*)p0 + 0x14) + *(u32*)((u8*)p0 + 0x18);
    
    r1 = (u32*)((u8*)p0 + 0x258);
    r2 = (u32*)((u8*)p0 + 0x24E);
    *r1 = *(u32*)((u8*)p0 + 0x18);
    
    r2 = (u32*)((u8*)p0 + 0x23E);
    *(u16*)((u8*)p0 + 0x23E) = *(u16*)((u8*)p0 + 0x23E);
    r0 = (u32*)((u8*)p0 + 0x240);
    *(u16*)((u8*)p0 + 0x240) = *(u16*)((u8*)p0 + 0x23E);
    
    if (p3 != -1)
    {
        *(u16*)((u8*)r12 + 0x262) = *(u16*)((u8*)r12 + 0x262);
        *(u16*)((u8*)r12 + 0x23E) = *(u16*)((u8*)r12 + 0x262);
    }
    else
    {
        *(u16*)((u8*)r12 + 0x23E) = p3;
    }
    
    r3 = 0;
    r0 = (u32*)((u8*)p0 + 0x260);
    if (*r0 > 0)
        r3 = 1;
    
    r2 = (u32*)((u8*)p0 + 0x213);
    r3 <<= 5;
    r1 = (u8*)r2;
    r0 = *(u8*)r1;
    r0 &= 0xDF;
    r0 |= r3;
    *(u8*)r1 = r0;
}
#endif
