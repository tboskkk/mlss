#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EEF54 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EEF54.s\"");
#else
void sub_80EEF54(u32* p0, u32* p1, u32* p2)
{
    u32* r5;
    u32* r3;
    u32* r4;
    u32 r0;
    
    r5 = p0;
    r3 = p1;
    r4 = p2;
    r0 = *(u32*)((u8*)r4 + 0x04);
    if (r0 <= 4)
    {
        r0 <<= 2;
        r0 += (u32)0x080EEF74;
        r0 = *(u32*)r0;
        ((void(*)())r0)();
    }
    else
    {
        *(u32*)((u8*)r5 + 0x00) = *(u32*)((u8*)r3 + 0x00);
        *(u32*)((u8*)r5 + 0x04) = *(u32*)((u8*)r3 + 0x04);
        *(u32*)((u8*)r5 + 0x08) = *(u32*)((u8*)r3 + 0x08);
        *(u32*)((u8*)r5 + 0x0C) = *(u32*)((u8*)r3 + 0x0C);
        *(u32*)((u8*)r5 + 0x10) = *(u32*)((u8*)r3 + 0x10);
        *(u32*)((u8*)r5 + 0x14) = *(u32*)((u8*)r3 + 0x14);
        *(u32*)((u8*)r5 + 0x18) = *(u32*)((u8*)r3 + 0x18);
        *(u32*)((u8*)r5 + 0x1C) = *(u32*)((u8*)r3 + 0x1C);
        *(u32*)((u8*)r5 + 0x20) = *(u32*)((u8*)r3 + 0x20);
        *(u32*)((u8*)r5 + 0x24) = *(u32*)((u8*)r3 + 0x24);
        *(u32*)((u8*)r5 + 0x28) = *(u32*)((u8*)r3 + 0x28);
        *(u32*)((u8*)r5 + 0x2C) = *(u32*)((u8*)r3 + 0x2C);
        *(u32*)((u8*)r5 + 0x30) = *(u32*)((u8*)r3 + 0x30);
        *(u32*)((u8*)r5 + 0x34) = *(u32*)((u8*)r3 + 0x34);
        *(u32*)((u8*)r5 + 0x38) = *(u32*)((u8*)r3 + 0x38);
        *(u32*)((u8*)r5 + 0x3C) = *(u32*)((u8*)r3 + 0x3C);
        *(u32*)((u8*)r5 + 0x40) = *(u32*)((u8*)r3 + 0x40);
        *(u32*)((u8*)r5 + 0x44) = *(u32*)((u8*)r3 + 0x44);
        *(u32*)((u8*)r5 + 0x48) = *(u32*)((u8*)r3 + 0x48);
        *(u32*)((u8*)r5 + 0x4C) = *(u32*)((u8*)r3 + 0x4C);
        *(u32*)((u8*)r5 + 0x50) = *(u32*)((u8*)r3 + 0x50);
        *(u32*)((u8*)r5 + 0x54) = *(u32*)((u8*)r3 + 0x54);
        *(u32*)((u8*)r5 + 0x58) = *(u32*)((u8*)r3 + 0x58);
        *(u32*)((u8*)r5 + 0x5C) = *(u32*)((u8*)
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF0B0.s\"");
#else
#error "TODO: write sub_80EF0B0 to match asm/nonmatching/sub_80EF0B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF220.s\"");
#else
#error "TODO: write sub_80EF220 to match asm/nonmatching/sub_80EF220.s, then delete this #error"
#endif
