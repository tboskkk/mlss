#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813BB60 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BB60.s\"");
#else
void sub_813BB60(u32* p1, u32* p2, u32* p3)
{
    u32* r3 = p1;
    u32* r4 = p2;
    u32 r0;
    u32 r1;
    s16 r5;
    
    r0 = 0x000002DE;
    r2 = r3 + r0;
    r0 = *(u16*)r2;
    if (r0 == 0)
    {
        r0 = 0;
        goto _0813BBA4;
    }
    
    r1 = 0x00000242;
    r0 = r3 + r1;
    r5 = 0;
    r1 = *(s16*)((u8*)r0 + r5);
    r0 = *(u32*)((u8*)r3 + 0x0C);
    r0 += r1;
    *(u32*)((u8*)r3 + 0x0C) = r0;
    
    r1 = 0x91;
    r1 <<= 2;
    r0 = r3 + r1;
    r5 = 0;
    r1 = *(s16*)((u8*)r0 + r5);
    r0 = *(u32*)((u8*)r3 + 0x10);
    r0 += r1;
    *(u32*)((u8*)r3 + 0x10) = r0;
    
    r0 = *(u16*)r2;
    r0--;
    *(u16*)r2 = r0;
    r0 <<= 16;
    r0 >>= 16;
    r0 = -r0;
    r0 >>= 31;
    
_0813BBA4:
    if (r0 != 0)
        goto _0813BBAC;
    
    r0 = *(u32*)((u8*)r4 + 0x04);
    *(u32*)((u8*)r4) = r0;
    
_0813BBAC:
    return;
}
#endif
