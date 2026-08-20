#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EF27C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EF27C.s\"");
#else
void sub_80EF27C(u32* p0, u32* p1, u32* p2)
{
    u32* r2 = (u32*)0x03000FD0;
    u32 r1 = *(u32*)((u8*)p2);
    u32 r0 = 0x2C * r1;
    u32 r1_1 = 0xC8 << 2;
    r0 += r1_1;
    r2 = (u32*)((u8*)r2 + r0);
    r1 = *(u32*)((u8*)p2 + 0x04);
    r0 = 0x01 & r1;
    r0 <<= 4;
    r0 += 0x0C;
    r2 = (u32*)((u8*)r2 + r0);
    r0 = 0x02 & r1;
    if (r0 != 0)
    {
        *(u32*)((u8*)p2) <<= 4;
        *(u32*)((u8*)p2 + 0x04) <<= 4;
        *(u32*)((u8*)p2 + 0x08) <<= 4;
        *(u32*)((u8*)p2 + 0x0C) <<= 4;
        *(u32*)((u8*)p2 + 0x10) <<= 4;
        *(u32*)((u8*)p2 + 0x14) <<= 4;
    }
    *(u16*)((u8*)r2) = *(u32*)((u8*)p2 + 0x04);
    *(u16*)((u8*)r2 + 0x06) = *(u32*)((u8*)p2 + 0x08);
    *(u16*)((u8*)r2 + 0x08) = *(u32*)((u8*)p2 + 0x0C);
    *(u16*)((u8*)r2 + 0x02) = *(u32*)((u8*)p2 + 0x10);
    *(u16*)((u8*)r2 + 0x04) = *(u32*)((u8*)p2 + 0x14);
    *(u16*)((u8*)r2 + 0x0A) = *(u32*)((u8*)p2 + 0x18);
}
#endif
