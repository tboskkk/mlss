#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA9B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA9B8.s\"");
#else
void sub_80EA9B8(u32* p1, u32* p2, u32 p3)
{
    u32 r6 = (u32)p2;
    u32 r4 = (u32)p3;
    u32 r5 = *(u16*)((u8*)0x0300034C + 0x2E);
    u32 r2 = *(u32*)((u8*)p2 + 0x08);
    u32 r3 = r2;
    u32 r0 = *(u32*)((u8*)p2 + 0x04);
    r0 += 0x0B;
    if (r0 == 0x0B)
        r2 = 0x00;
    else if (r0 == 0x0C)
        r2 = ~r2;
    r0 = *(u32*)((u8*)p2);
    r0 &= 0x01;
    if (r0 != 0x00)
    {
        r3 &= r5;
        if (r3 == r2)
            r0 = *(u32*)((u8*)p2 + 0x0C);
    }
    else
    {
        r3 &= r5;
        if (r3 != r2)
            r0 = *(u32*)((u8*)p2 + 0x0C);
    }
    *(u32*)((u8*)p1) = r0;
}
#endif
