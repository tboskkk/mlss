#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1C7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1C7C.s\"");
#else
void sub_80F1C7C(u32* p0, u32* p1, u32* p2, u32* p3)
{
    u32 r4 = *(u32*)((u8*)p1);
    u32 r5 = *(u32*)((u8*)p2);
    u32 r6;
    u32 r0;
    u32 r1;
    u32 r2;
    
    r6 = *(u32*)((u8*)p0 + 0x14);
    r0 = *(u32*)((u8*)p3);
    if (r0 != 0)
    {
        r0 = *(u32*)((u8*)p3 + 0x04);
        r2 = r5 + (r0 << 2);
    }
    else
    {
        r2 = r5;
    }
    
    r1 = *(u32*)((u8*)p1 + 0x04);
    if ((r1 << 16) > 0)
    {
        do
        {
            r3 = *(u32*)((u8*)r2);
            r0 = r3 + 0xF8;
            r1 = *(u16*)((u8*)r0);
            if (r1 & 1)
            {
                r0 = r3 + 0xFC;
                if (*(u8*)((u8*)r0) == r6)
                {
                    *(u32*)((u8*)p2) = *(u32*)((u8*)p2 + 0x14);
                    return;
                }
            }
            r4--;
            r2 += 4;
        } while ((r4 << 16) > 0);
    }
}
#endif
