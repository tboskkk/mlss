#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7F54 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7F54.s\"");
#else
void sub_80F7F54(u32 p0, u32 p1, u32* p2)
{
    u32 r4;
    u32 r5;
    u32 r0;
    u32 r1;
    u32 r2;
    u32 r3;

    r5 = (u32)p2;
    r0 = *(u32*)((u8*)r5);
    if (r0 == 0)
    {
        r5 += 4;
        r2 = *(u32*)((u8*)r5) - 7;
        r2 <<= 1;
        r0 = 0x03000FD8;
        r3 = *(u32*)(r0);
        r0 = 0xC6 << 2;
        r4 = r3 + r0;
        r0 = 3;
        r0 <<= r2;
        r1 = *(u32*)(r4);
        r1 &= ~r0;
        r0 = *(u32*)((u8*)r5);
        r0--;
        r0 <<= r2;
        r1 |= r0;
        *(u32*)(r4) = r1;
        r1 = *(u32*)((u8*)r5);
        r1--;
        r0 = 0x000002BF;
        r3 += r0;
        r1 <<= 6;
        r2 = *(u8*)(r3);
        r0 = 0x3F;
        r0 &= r2;
        r0 |= r1;
        *(u8*)(r3) = r0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7FA4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
