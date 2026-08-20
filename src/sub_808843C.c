#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808843C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808843C.s\"");
#else
void sub_808843C(u32* p0, u16 p1, u32* p2, u16 p3)
{
    u32* r12 = p0;
    u32* r5 = p2;
    u32* r6 = (u32*)((u8*)p0 + 0x98);
    u32* r4;
    u32 r0;
    u32 r1;
    u32 r2;
    u32 r3;

    r1 = p1;
    r2 = *(u32*)((u8*)r12 + 0x38);
    if (r2 < 0)
        r2 += 0xFF;
    r2 >>= 8;
    r4 = (u32*)0x0000FFFF;
    r2 &= *r4;
    r1 |= r2;
    *(u32*)((u8*)r12 + 0x84) = r1;

    r1 = p1;
    r2 = *(u32*)((u8*)r12 + 0x3C);
    if (r2 < 0)
        r2 += 0xFF;
    r2 >>= 8;
    r2 &= *r4;
    r1 |= r2;
    *(u32*)((u8*)r12 + 0x88) = r1;

    r1 = p1;
    r2 = *(u32*)((u8*)r12 + 0x40);
    if (r2 < 0)
        r2 += 0xFF;
    r2 >>= 8;
    r2 &= *r4;
    r1 |= r2;
    *(u32*)((u8*)r12 + 0x8C) = r1;

    *(u32*)((u8*)r12 + 0x98) = 0;
    *(u16*)((u8*)r12 + 0x7E) = 0;
    if (*r6 != 0)
        *(u16*)((u8*)r12 + 0x7C) = *r6;
}
#endif
