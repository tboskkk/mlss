#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819AB78 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819AB78.s\"");
#else
void sub_819AB78(u32 p0)
{
    u8 r1;
    u8 r2;
    u8 r3;
    u8 r4;
    u8 r5;
    u8 r6;
    u8 *r5_ptr;

    r1 = *(u8*)((u8*)p0 + 0x12);
    r2 = r1 & 3;
    r1 = 0x80 << 17;
    r1 <<= r2;
    r3 = r1 >> 24;
    r5_ptr = (u8*)0x04000081;
    r2 = *r5_ptr;
    r4 = r3 << 4;
    r1 = r3 | r4;
    r6 = r2 & ~r1;
    r1 = r6;
    r0 = *(u8*)((u8*)p0 + 0x0E);
    if (r0 > 0x80)
        r1 |= r3;
    if (r0 < 0x7E)
        r1 |= r4;
    r0 = r1 << 24;
    r1 = r0 >> 24;
    *r5_ptr = r1;
}
#endif
