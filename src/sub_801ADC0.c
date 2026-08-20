#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801ADC0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801ADC0.s\"");
#else
void sub_801ADC0(void)
{
    u32 *r2;
    u8 *r0;
    u8 r1;
    u32 *r3;

    r2 = (u32 *)0x0300034C;
    r0 = (u8 *)0x00000888;
    r0 = (u8 *)(r2 + (u32)r0);
    r1 = *r0;
    if ((r1 & 6) == 2)
    {
        r0 = (u8 *)0x0000088B;
        r0 = (u8 *)(r2 + (u32)r0);
        r1 = *r0;
        if ((r1 & 1) != 0)
        {
            r3 = (u32 *)0x03000D18;
            r1 = *r3;
            r1 &= 0xD1;
            r1 |= 0x20;
            *r3 = r1;
        }
    }
    r3 = (u32 *)0x03000D28;
    *(u16 *)(r3 + 2) = 0;
    r1 = *(u8 *)r3;
    r1 -= 4;
    r1 &= r1;
    r1 |= 2;
    *(u8 *)r3 = r1;
}
#endif
