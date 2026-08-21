#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B9B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B9B4.s\"");
#else
void sub_813B9B4(u32* p1, u32* p2, s16 arg2)
{
    u32* r3 = p1;
    u32* r4 = p2;
    s16 r5;
    s16 r0;
    s16 r1;
    
    r0 = *(u16*)((u8*)r3 + 0x00);
    if (r0 == 0)
    {
        r0 = 0;
    }
    else
    {
        r1 = *(s16*)((u8*)r3 + 0x242);
        *(u32*)((u8*)r3 + 0x0C) += r1;
        r1 = *(s16*)((u8*)r3 + 0x242 + 0x91 * 2);
        *(u32*)((u8*)r3 + 0x10) += r1;
        r0 = *(u16*)((u8*)r3 + 0x00);
        r0--;
        *(u16*)((u8*)r3 + 0x00) = r0;
        r0 = -r0;
        r0 >>= 31;
    }
    
    if (r0 != 0)
    {
        *(u32**)r4 = *(u32**)((u8*)r4 + 0x08);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BA0C.s\"");
#else
#error "TODO: write sub_813BA0C to match asm/nonmatching/sub_813BA0C.s, then delete this #error"
#endif
