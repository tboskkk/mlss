#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819B31C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819B31C.s\"");
#else
void sub_819B31C(u32* p0, u32* p1, u32* p2, u32* p3)
{
    u32 r1;
    u32 r0;
    u32 r2;
    u32 r3;
    u32 r4;
    
    r3 = *(u32*)((u8*)p3);
    r0 = *(u32*)((u8*)p0);
    r2 = *(u32*)((u8*)p1);
    r4 = *(u32*)((u8*)p3 + 0x92 * 8);
    r1 = *(u32*)((u8*)p0 + 0x92 * 8);
    if (r1 != r4)
    {
        r1 = *(u32*)((u8*)p3 + 0x00);
        r2 = r1 + r2;
        r3 = 0;
        r0 = *(u16*)((u8*)r2 + r3 * 2);
        r0 <<= 1;
        r4 = 0x90 << 3;
        r1 = r1 + r4;
        r1 = r1 + r0;
        r3 = *(u16*)((u8*)r1 + 0x00);
        r0 = *(u16*)((u8*)r2 + 0x00);
        r0 += 1;
        r1 = 0x07;
        r0 &= r1;
        *(u16*)((u8*)r2 + 0x00) = r0;
        r0 = r3 >> 0x0C;
        if (r0 > 9)
            return;
        r0 <<= 2;
        r1 = (u32)&((u8*)p3)[0x19B354];
        r0 = *(u32*)((u8*)r1 + r0);
        ((void(*)())r0)();
    }
}
#endif
