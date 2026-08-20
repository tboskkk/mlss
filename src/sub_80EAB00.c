#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAB00 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB00.s\"");
#else
s32 sub_80EAB00(u8 *arg2) {
    *(u8 *)0x030003C5 = (-0xD & *(u8 *)0x030003C5) | ((*arg2 & 3) * 4);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAB20.s\"");
#else
void sub_80EAB20(u32* p0, u32* p1)
{
    u32* r2 = p1;
    u32* r0 = (u32*)r2;
    u32 r1 = *(u32*)((u8*)r2);
    if (r1 == 1)
    {
        u32* r0_1 = (u32*)0x0300034C;
        r0_1 = (u32*)((u8*)r0_1 + 0x7A);
        u32 r2_1 = *(u32*)((u8*)r2);
        u16 r1_1 = *(u16*)((u8*)r0_1);
        r1_1 |= r2_1;
        *(u16*)((u8*)r0_1) = r1_1;
    }
    else if (r1 != 0)
    {
        if (r1 == 2)
        {
            u32* r0_2 = (u32*)0x0300034C;
            r0_2 = (u32*)((u8*)r0_2 + 0x7A);
            u32 r2_2 = *(u32*)((u8*)r2);
            u16 r1_2 = *(u16*)((u8*)r0_2);
            r1_2 &= ~r2_2;
            *(u16*)((u8*)r0_2) = r1_2;
        }
        else
        {
            goto _080EAB64;
        }
    }
    else
    {
        u32* r0_3 = (u32*)0x0300034C;
        r0_3 = (u32*)((u8*)r0_3 + 0x7C);
        u32 r2_3 = *(u32*)((u8*)r2);
        u16 r1_3 = *(u16*)((u8*)r0_3);
        r1_3 |= r2_3;
        *(u16*)((u8*)r0_3) = r1_3;
    }
_080EAB64:
    return;
}
#endif
