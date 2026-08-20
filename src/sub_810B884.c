#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810B884 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B884.s\"");
#else
void sub_810B884(u32* p0)
{
    u16 r1 = *(u16*)((u8*)p0 + 0x14);
    u16 r0 = r1 - 3;
    *(u16*)((u8*)p0 + 0x14) = r0;
    if (r0 <= 0)
    {
        *(u32*)((u8*)p0 + 0x04) = 0;
    }
    else
    {
        u32* r0_ptr = *(u32**)0x03000FD8;
        r0_ptr = *(u32**)(r0_ptr + 0xA4 * 4 / sizeof(u32));
        r0 = *(u16*)(*(u32**)(r0_ptr + 0xC / sizeof(u32)) + 0x16 * 2);
        u16* r2 = (u16*)0x0400001A;
        r0 = r0 - (r1 + 3);
        *(u16*)((u8*)r2 + 0x00) = r0;
        r2 += 0x04 / sizeof(u16);
        u16* r0_2 = (u16*)0x0200001E;
        r0 = *(u16*)((u8*)r0_2 + 0x00) - *(u16*)((u8*)p0 + 0x14);
        *(u16*)((u8*)r2 + 0x00) = r0;
        u32* r6 = (u32*)0x04000044;
        u32* r4 = (u32*)0x0200001A;
        u16 r2_2 = *(u16*)((u8*)r4 + 0x00);
        u16 r3_2 = *(u16*)((u8*)p0 + 0x14);
        s16 r3_3 = *(s16*)((u8*)p0 + 0x14 + 0x14);
        s16 r5 = r3_3 - 0x99;
        u16 r0_3 = r2_2 - r5;
        u16 r1_2 = *(u16*)((u8*)r4 + 0x00);
        s16 r3_4 = r3_3 - 0x8E;
        u16 r0_4 = r1_2 - r3_4;
        u32 r2_3 = r0_3 | (r0_4 << 0x10);
        *(u32*)((u8*)r6 + 0x00) = r2_3;
    }
}
#endif
