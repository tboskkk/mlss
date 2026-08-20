#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801AEDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801AEDC.s\"");
#else
void sub_801AEDC(void)
{
    u32 r4, r5, r6, r0, r1, r2, r3;
    r4 = *(u32*)0x03000D18;
    r4 = *(u32*)(r4 + 8);
    r5 = r4 & 0xF;
    r4 >>= 4;
    r3 = r4 >> 0x18;
    r0 = 6;
    r6 = 0xF;
    do
    {
        r0--;
        r2 = r0 << 2;
        r1 = r4;
        r1 >>= r2;
        r1 &= r6;
        r3 ^= r1;
        r0 <<= 0x18;
        r0 >>= 0x18;
    } while (r0 != 0);
    r1 = r3 ^ r5;
    r0 = -r1;
    r0 |= r1;
    r0 >>= 0x1F;
    return;
}
#endif
