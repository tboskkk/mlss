#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804FA94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804FA94.s\"");
#else
void sub_804FA94(u32* p0, u32 p1, u32 p2)
{
    u32 r3;
    s32 r0;
    s32 r1;
    s32 r4;
    u32* r2;
    
    r3 = p0;
    r0 = (s32)p1 >> 16;
    r4 = (s32)p2 >> 16;
    r2 = *(u32**)((u8*)r3 + 0x44);
    r1 = *(u32*)((u8*)r3 + 0x08);
    if (r1 < 0)
        r1 += 0xFF;
    r1 >>= 8;
    r0 <<= 16;
    r0 >>= 16;
    r1 -= r0;
    *(u16*)(r2) = r1;
    r2 = *(u32**)((u8*)r3 + 0x44);
    r0 = *(u32*)((u8*)r3 + 0x0C);
    r1 = *(u32*)((u8*)r3 + 0x10);
    r0 -= r1;
    r1 = *(u32*)((u8*)r3 + 0x14);
    r0 -= r1;
    if (r0 < 0)
        r0 += 0xFF;
    r0 >>= 8;
    r1 = r4 << 16;
    r1 >>= 16;
    r0 -= r1;
    *(u16*)((u8*)r2 + 0x02) = r0;
    r4 = *(u32**)((u8*)r3 + 0x44);
    r0 = *(u16*)((u8*)r3);
    r0 <<= 0x15;
    r0 >>= 0x1C;
    r2 = r0 << 0x0C;
    r0 = *(u32*)((u8*)r3 + 0x0C);
    if (r0 < 0)
        r0 += 0xFF;
    r1 = r0 >> 8;
    r0 = 0x800;
    r0 += 0x0;
    r0 -= r1;
    r2 |= r0;
    *(u16*)((u8*)r4 + 0x0E) = r2;
}
#endif
