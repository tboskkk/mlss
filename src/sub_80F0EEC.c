#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0EEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0EEC.s\"");
#else
void sub_80F0EEC(u32* p1, u32* p2, u32* p3)
{
    u32* r2 = p2;
    u32* r3 = p3;
    u32 r0;
    u32 r1;
    
    if (*(u32*)((u8*)p1 + 0x344) != 0)
    {
        r2 = *(u32**)((u8*)p1 + 0x344);
    }
    
    r0 = *(u32*)((u8*)r3);
    if (r0 & 1)
    {
        *(u32*)((u8*)r3 + 0x04) <<= 4;
        *(u32*)((u8*)r3 + 0x08) <<= 4;
        *(u32*)((u8*)r3 + 0x0C) <<= 4;
    }
    
    r1 = *(u32*)((u8*)r3);
    if (r1 >= 0)
    {
        if (r1 <= 1)
        {
            *(u32*)((u8*)(r2 + 0xAF)) = *(u32*)((u8*)r3);
            *(u32*)((u8*)(r2 + 0xB0)) = *(u32*)((u8*)r3 + 0x04);
            *(u32*)((u8*)(r2 + 0xB2)) = *(u32*)((u8*)r3 + 0x08);
        }
        else if (r1 <= 3)
        {
            *(u32*)((u8*)(r2 + 0xB3)) = *(u32*)((u8*)r3);
            *(u32*)((u8*)(r2 + 0xB4)) = *(u32*)((u8*)r3 + 0x04);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0F60.s\"");
#else
#error "TODO: write sub_80F0F60 to match asm/nonmatching/sub_80F0F60.s, then delete this #error"
#endif
