#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806D770 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D770.s\"");
#else
void sub_806D770(void* p0)
{
    u32* r0 = (u32*)0x03000E3C;
    u32* r1 = (u32*)((u8*)p0 + 0x10);
    *(u32*)((u8*)r0 + 0x10) = *r1;
    r1 = (u32*)((u8*)p0 + 0x14);
    *(u32*)((u8*)r0 + 0x14) = *r1;
    r1 = (u32*)((u8*)p0 + 0x18);
    *(u32*)((u8*)r0 + 0x18) = *r1;
    u32* r2 = (u32*)((u8*)p0 + 0x2C);
    u32* r3 = (u32*)((u8*)p0 + 0x30);
    u8* r4 = (u8*)(*r2 + 0x75);
    u8 r5 = *r4 - 1;
    *(u8*)((u8*)p0 + 0x75) = r5;
    u8* r6 = (u8*)(*r3 + 0x75);
    *(u8*)((u8*)p0 + 0x75) = r5;
    *(u8*)(r6 + 0x05) = *r4 + 5;
    r1 = (u32*)((u8*)p0 + 0x80);
    r0 = (u32*)((u8*)r1 + 0x00);
    if (*r0 != 0)
        goto _0806D7C4;
    *(u8*)(r4) = *r4;
    *(u8*)(r6 + 0x01) = *r4 + 1;
_0806D7C4:
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_806D7D0;
}
#endif
