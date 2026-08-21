#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B650 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B650.s\"");
#else
void sub_813B650(u32* p0)
{
    u32* r2;
    u32* r3;
    u16 r0;
    u32* r1;
    s16 r4;
    s16 r1_2;
    
    r2 = p0;
    r3 = (u32*)((u8*)r2 + 0x2DE);
    r0 = *(u16*)((u8*)r3 + 0x00);
    if (r0 == 0)
        goto _0813B698;
    
    r1 = (u32*)((u8*)r2 + 0x242);
    r4 = *(s16*)((u8*)r1 + 0x00);
    *(u32*)((u8*)r2 + 0x0C) += r4;
    r1_2 = *(s16*)((u8*)r2 + 0x244);
    *(u32*)((u8*)r2 + 0x10) += r1_2;
    r0 = *(u16*)((u8*)r3 + 0x00);
    r0--;
    *(u16*)((u8*)r3 + 0x00) = r0;
    r0 = (r0 << 16) >> 16;
    r0 = (r0 ^ (r0 >> 31)) - (r0 >> 31);
    r0 >>= 31;
_0813B698:
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B6A0.s\"");
#else
#error "TODO: write sub_813B6A0 to match asm/nonmatching/sub_813B6A0.s, then delete this #error"
#endif
