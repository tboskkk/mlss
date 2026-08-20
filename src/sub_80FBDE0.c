#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FBDE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FBDE0.s\"");
#else
void sub_80FBDE0(s16* p0, u32* p1, s16 p2, s16 p3)
{
    s16 r4 = p2;
    s16 r5 = p3;
    s16 r6;
    s16 r7;
    s16 r0;
    s16 r1;
    s16 r2;
    s16 r3;
    
    r6 = *(u32*)((u8*)p1 + 0x0C);
    if (r6 < 0)
        r6 += 0xFF;
    r6 <<= 8;
    r6 >>= 16;
    
    r7 = *(u32*)((u8*)p1 + 0x10);
    if (r7 < 0)
        r7 += 0xFF;
    r7 <<= 8;
    r7 >>= 16;
    
    r0 = *(u32*)((u8*)p1 + 0x14);
    r1 = *(u32*)((u8*)p1 + 0x18);
    r0 += r1;
    if (r0 < 0)
        r0 += 0xFF;
    r0 <<= 8;
    r0 >>= 16;
    
    r2 = r6;
    r2 <<= 16;
    r2 >>= 16;
    r3 = *(s16*)((u8*)p0 + 0x00);
    if (r2 < r3)
        goto _080FBE54;
    r3 = *(s16*)((u8*)p0 + 0x02);
    if (r2 > r3)
        goto _080FBE54;
    
    r2 = r7;
    r2 <<= 16;
    r2 >>= 16;
    r3 = *(s16*)((u8*)p0 + 0x06);
    if (r2 < r3)
        goto _080FBE54;
    r3 = *(s16*)((u8*)p0 + 0x04);
    if (r2 > r3)
        goto _080FBE54;
    
    r2 = r0;
    r2 <<= 16;
    r2 >>= 16;
    r3 = r0;
    r3 <<= 16;
    r1 = r5;
    r1 <<= 16;
    r3 >>= 16;
    if (r3 < r1)
        goto _080FBE54;
    r1 = r4;
    r1 <<= 16;
    r1 >>= 16;
    if (r2 > r1)
        goto _080FBE54;
    
    *(u32*)((u8*)p1 + 0x1C) = 1;
    return;
    
_080FBE54:
    *(u32*)((u8*)p1 + 0x1C) = 0;
    return;
}
#endif
