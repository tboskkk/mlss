#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0D38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0D38.s\"");
#else
void sub_80F0D38(u32* p0, u32* p1, u32* p2)
{
    u32 r2 = *(u32*)((u8*)p2 + 0x04);
    u32 r1 = *(u32*)((u8*)p2 + 0x08);
    u32 r0 = *(u32*)((u8*)p0 + 0x14);
    u32 r3;
    u32 r4;
    
    r3 = *(u32*)((u8*)p2);
    r4 = r2;
    
    if (r2 & 0x40)
    {
        r2 = (r2 & 0x3F) >> 2;
    }
    else
    {
        if (r2 > 1)
            r2 = 3;
        else
            r2 = 0;
    }
    
    if (r1 & 0x40)
    {
        r1 = (r1 & 0x3F) >> 2;
    }
    else
    {
        if (r1 > 1)
            r1 = 3;
        else
            r1 = 0;
    }
    
    r0 += 0xD4;
    r3 = *(u32*)((u8*)r0);
    r0 = (r2 << 8) | ((r1 << 6) & 0x0000FC00) | 0xFFFFE000;
    r0 |= (r3 << 3);
    r0 |= r4;
    *(u16*)((u8*)r3 + 0x0C) = (u16)r0;
}
#endif
