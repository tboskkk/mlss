#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8B34 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8B34.s\"");
#else
void sub_80F8B34(u32 r0, u16 r1, s16 r2)
{
    u32 *r3;
    u32 *r4;
    u16 *r5;
    u16 r6;
    
    r3 = &r0;
    if (r2 <= 7)
    {
        r4 = (u32*)0x03000FD8;
        r4 = (u32*)*r4;
        r4 = (u32*)((u8*)r4 + 0x58 + (r2 * 4));
        r4 = (u32*)*r4;
        r4 = (u32*)((u8*)r4 + 0x08);
    }
    else
    {
        r4 = (u32*)0x03000FDC;
        r4 = (u32*)*r4;
        r4 = (u32*)(r4 + (r2 * 0xD0) + (0xC0 << 2));
    }
    
    r4 = (u32*)((u8*)r4 + 0x80);
    if (*r4 == 0)
    {
        r5 = (u16*)((u8*)r3 + 0xA0);
        r6 = *r5;
        *r5 = r6 & 0xFFFD;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8B84.s\"");
#else
#error "TODO: write sub_80F8B84 to match asm/nonmatching/sub_80F8B84.s, then delete this #error"
#endif
