#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EF2EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF2EC.s\"");
#else
void sub_80EF2EC(u32 p0, u32 p1, u32* p2)
{
    u32 r4;
    u32 r5;
    u32 r6;
    u16 r0;
    u16 r1;
    u8 r2;
    u8 r3;
    
    r6 = p1;
    r4 = *(u32*)0x03000FD0;
    r0 = 0x0000054A;
    r2 = r4 + r0;
    r1 = *(u32*)p2;
    r5 = 1;
    r0 = (r5 << r1) | *(u16*)r2;
    *(u16*)r2 = r0;
    r1 = *(u32*)p2;
    r0 = 0x2C * r1;
    r1 = 0xC8 << 2;
    r0 += r1;
    r4 += r0;
    r0 = *(u32*)p2;
    *(u8*)(r4 + 0x09) = r0;
    r0 = *(u32*)p2;
    *(u8*)(r4 + 0x0A) = r0;
    r1 = *(u32*)p2;
    r1 &= r5;
    r2 = *(u8*)(r4 + 0x0B);
    r0 = 0x02;
    r0 = ~r0;
    r0 &= r2;
    r0 |= r1;
    *(u8*)(r4 + 0x0B) = r0;
    r0 = *(u32*)p2;
    *(u8*)(r4 + 0x08) = r0;
    r0 = *(u32*)p2;
    *(u32*)(r4 + 0x04) = r0;
    if (r6 != 0)
        *(u32*)(r4 + 0x00) = r6;
}
#endif
