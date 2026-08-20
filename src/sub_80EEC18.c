#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EEC18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EEC18.s\"");
#else
void sub_80EEC18(u32* p0, u32* p1, u32* p2)
{
    u32* r3;
    u32* r4;
    u32* r0;
    u32* r1;
    u32* r2;
    u8* r0_ptr;
    s8 r0_val;
    u32* r0_ptr2;

    r3 = p0;
    r4 = p2;
    r0 = (u32*)((u8*)r3 + 0x14);
    r0 = *(u32**)r0;
    r0 = (u32*)((u8*)r0 + 0x12A);
    r0_val = *(u8*)r0 - 3;
    if (r0_val > 2)
    {
        r2 = *(u32**)r4;
        if (r2 <= 7)
        {
            r0 = (u32*)((u8*)r2 + 0x12A);
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u32**)r0;
            r0 = *(u3
#endif
