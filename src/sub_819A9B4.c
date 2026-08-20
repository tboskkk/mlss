#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A9B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A9B4.s\"");
#else
#error "TODO: write sub_819A9B4 to match asm/nonmatching/sub_819A9B4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A9DC.s\"");
#else
u16 sub_819A9DC(u16 a)
{
    u32* r1 = (u32*)0x04000070;
    u16* r0 = (u16*)((a << 4) + 0x0821DB5E);
    u16* r3 = (u16*)0x04000090;
    *r1 = 0xC0;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r3++;
    *r0 = *r3;
    r1 = (u32*)0x04000070;
    *r1 = 0x80;
    return a;
}
#endif
