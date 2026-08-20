#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161C9C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161C9C.s\"");
#else
void sub_8161C9C(u32* p0, s16 p1, u32* p2)
{
    u32* r4 = p0;
    u32* r5 = p2;
    u32* r2 = *(u32**)((u8*)r4 + 0x10);
    if (r2 == 0)
        goto _08161D14;
    u32* r3 = *(u32**)((u8*)r4 + 0x14);
    if (r3 == 0)
        goto _08161CD6;
    s16 r0 = (*(s32*)((u8*)r4 + 0x18) >> 8) - p1;
    *(u16*)(r3) = r0;
    *(u16*)(r2) = r0;
    r3 = *(u32**)((u8*)r4 + 0x10);
    r2 = *(u32**)((u8*)r4 + 0x14);
    s16 r1 = (*(s32*)((u8*)r4 + 0x1C) + *(u32*)((u8*)r4 + 0x20)) >> 8;
    r0 = r1 - *r5;
    *(u16*)((u8*)r2 + 0x02) = r0;
    *(u16*)((u8*)r3 + 0x02) = r0;
    u32* r1_2 = *(u32**)((u8*)r4 + 0x10);
    s16 r0_2 = (*(s32*)((u8*)r4 + 0x3C) >> 8) + *(u16*)((u8*)r1_2 + 0x02);
    goto _08161CEE;
_08161CD6:
    r0 = (*(s32*)((u8*)r4 + 0x18) >> 8) - p1;
    *(u16*)(r5) = r0;
    s16 r1_3 = (*(s32*)((u8*)r4 + 0x1C) + *(u32*)((u8*)r4 + 0x20) + *(u32*)((u8*)r4 + 0x3C)) >> 8;
    r0 = r1_3 - *r5;
_08161CEE:
    *(u16*)((u8*)r1_2 + 0x02) = r0;
    u32* r1_4 = *(u32**)((u8*)r4 + 0x10);
    s16 r0_3 = *(s16*)((u8*)r1_4 + 0x02);
    if (r0_3 <= 0xD0)
        goto _08161D00;
    *(u16*)((u8*)r1_4 + 0x00) = 0x178;
_08161D00:
    s16 r1_5 = *(s32*)((u8*)r4 + 0x20) >> 8;
    u32* r0_4 = (u32*)((u8*)r4 + 0x50);
    r1_5 += 0xFFFFFC00;
    s16 r0_5 = *(u16*)(r0_4);
    r0_5 -= r1_5;
    *(u16*)((u8*)r1_4 + 0x0E) = r0_5;
_08161D14:
    return;
}
#endif
