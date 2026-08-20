#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047C18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047C18.s\"");
#else
void sub_8047C18(void* p0, void* p1)
{
    u32 r1 = *(u32*)((u8*)p0 + 0x1C);
    u32 r0 = *(u32*)((u8*)p1 + 0x1C);
    if (r1 == r0)
    {
        r0 = 0;
    }
    else
    {
        u8 r1_1 = *(u8*)((u8*)p0 + 0x26);
        u32 r4 = 0x0C;
        u32 r0_1 = (r4 | 0x0) & r1_1;
        if (r0_1 != 0)
        {
            u8 r1_2 = *(u8*)((u8*)p1 + 0x26);
            u32 r0_2 = (r4 | 0x0) & r1_2;
            if (r0_2 == 0)
            {
                r0 = r1 - *(u32*)((u8*)p1 + 0x1C);
            }
            else
            {
                u32 r0_3 = *(u32*)((u8*)p0 + 0x20);
                u32 r1_3 = *(u32*)(r0_3);
                u32 r0_4 = *(u32*)((u8*)p1 + 0x20);
                u32 r0_5 = *(u32*)(r0_4);
                u32 r0_6 = (r0_5 & r1_3) << 1;
                r0_6 >>= 0x1E;
                if (r0_6 != 0)
                {
                    r0 = 0;
                }
                else
                {
                    r0 = r1 - *(u32*)((u8*)p1 + 0x1C);
                }
            }
        }
        else
        {
            r0 = r1 - *(u32*)((u8*)p1 + 0x1C);
        }
    }
}
#endif
