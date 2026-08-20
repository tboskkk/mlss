#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1BA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1BA4.s\"");
#else
void sub_80F1BA4(u32* p1, u32 p2, u32* p3)
{
    u32 r3 = p2;
    u32 r1 = *(u32*)((u8*)p3);
    if (r1 == 1)
    {
        u32* r0 = (u32*)0x03000FD0;
        r0 = (u32*)((u8*)r0 + 0x00);
        r1 = 0xFC << 1;
        r0 = (u32*)((u8*)r0 + (r1 & 0xFFFF));
    }
    else if (r1 != 0)
    {
        if (r1 == 2)
        {
            u32* r0 = (u32*)0x03000FD0;
            r0 = (u32*)((u8*)r0 + 0x00);
            r0 = (u32*)((u8*)r0 + 0xA8);
        }
        else if (r1 == 3)
        {
            u32* r0 = (u32*)0x03000FD0;
            r0 = (u32*)((u8*)r0 + 0x00);
            r1 = 0xA8 << 1;
            r0 = (u32*)((u8*)r0 + (r1 & 0xFFFF));
        }
    }
    else
    {
        u32* r0 = (u32*)0x03000FD0;
        r0 = (u32*)((u8*)r0 + 0x00);
    }
    r0 = (u32*)((u8*)r0 + 0xA0);
    u16 r1_val = *(u16*)((u8*)r0);
    r1_val &= 1;
    if (r1_val != 0)
    {
        u32 r0_val = *(u32*)((u8*)p3);
        *(u32*)((u8*)p1) = r0_val;
    }
}
#endif
