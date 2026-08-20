#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1CF8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1CF8.s\"");
#else
void sub_80F1CF8(u32* p0, u32* p2)
{
    u32* r1 = *(u32**)((u8*)p2 + 0x04);
    u32* r0 = *(u32**)((u8*)p0 + 0x14);
    r1 = (u32*)((u8*)r1 + ((u32)r1 << 2));
    r0 = *(u32**)((u8*)r1 + 0x28);
    u32* r2 = *(u32**)((u8*)p2);
    if (r2 == 0)
    {
        r2 = (u32*)((u8*)r0 + 0xF8);
        u16 r1_0 = *(u16*)((u8*)r2);
        *(u16*)((u8*)r2) = r1_0 | 0x04;
    }
    else if (r2 == 1)
    {
        r2 = (u32*)((u8*)r0 + 0xF8);
        u16 r1_0 = *(u16*)((u8*)r2);
        *(u16*)((u8*)r2) = r1_0 & 0xFFFB;
    }
}
#endif
