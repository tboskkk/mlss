#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8018AEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018AEC.s\"");
#else
void sub_8018AEC(void)
{
    u32 *r1 = (u32*)0x0300034C;
    u32 *r0 = r1 + 0x222;
    u16 r3 = *(u8*)r0 & 0x10 ? 0x80 : 0x00;
    u16 r2 = 0x00;
    u16 r4 = 0x20;
    u16 r0_2 = 0x100;
    
    do
    {
        *(u16*)(r0 + 3) = r3;
        *(u16*)(r0 + 7) = r2;
        *(u16*)(r0 + 0xB) = r2;
        *(u16*)(r0 + 0xF) = r3;
        *(u16*)(r0 + 0x20 + 3) = r3;
        *(u16*)(r0 + 0x20 + 7) = r2;
        *(u16*)(r0 + 0x20 + 0xB) = r2;
        *(u16*)(r0 + 0x20 + 0xF) = r3;
        *(u16*)(r0 + 0x40 + 3) = r3;
        *(u16*)(r0 + 0x40 + 7) = r2;
        *(u16*)(r0 + 0x40 + 0xB) = r2;
        *(u16*)(r0 + 0x40 + 0xF) = r3;
        *(u16*)(r0 + 0x60 + 3) = r3;
        *(u16*)(r0 + 0x60 + 7) = r2;
        *(u16*)(r0 + 0x60 + 0xB) = r2;
        *(u16*)(r0 + 0x60 + 0xF) = r3;
        *(u16*)(r0 + 0x80 + 3) = r3;
        *(u16*)(r0 + 0x80 + 7) = r2;
        *(u16*)(r0 + 0x80 + 0xB) = r2;
        *(u16*)(r0 + 0x80 + 0xF) = r3;
        *(u16*)(r0 + 0xA0 + 3) = r3;
        *(u16*)(r0 + 0xA0 + 7) = r2;
        *(u16*)(r0 + 0xA0 + 0xB) = r2;
        *(u16*)(r0 + 0xA0 + 0xF) = r3;
        *(u16*)(r0 + 0xC0 + 3) = r3;
        *(u16*)(r0 + 0xC0 + 7) = r2;
        *(u16*)(r0 + 0xC0 + 0xB) = r2;
        *(u16*)(r0 + 0xC0 + 0xF) = r3;
        *(u16*)(r0 + 0xE0 + 3) = r3;
        *(u16*)(r0 + 0xE0 + 7) = r2;
        *(u16*)(r0 + 0xE0 + 0xB) = r2;
        *(u16*)(r0 + 0xE0 + 0xF) = r3;
        r0 += 0x80;
        r4 -= 8;
    } while (r4 != 0);
}
#endif
