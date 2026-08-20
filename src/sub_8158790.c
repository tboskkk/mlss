#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8158790 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8158790.s\"");
#else
void sub_8158790(u32* p0)
{
    u32* r6;
    u8 r0;
    u32* r5;
    u32* r2;
    u32 r1;
    u32 r4;
    
    r6 = (u32*)((u8*)p0 + 0x24);
    r0 = *(u8*)r6;
    if (r0 == 1)
    {
        r4 = 0;
        r5 = (u32*)0x03001018;
        r0 = *(u32*)((u8*)r5 + 0x00);
        r1 = 0x00001C98;
        r0 += r1;
        r2 = *(u32**)r0;
        r0 = *(u32*)((u8*)p0 + 0x04);
        r1 = *(u32*)((u8*)r2 + 0x04);
        r0 -= r1;
        if (r0 < 0)
        {
            r4 = 1;
            r1 = (u32)r2;
            r1 += 0x24;
            *(u8*)r1 = 6;
        }
        r0 = *(u32*)((u8*)r5 + 0x00);
        r1 = 0x00001C9C;
        r0 += r1;
        r2 = *(u32**)r0;
        r0 = *(u32*)((u8*)p0 + 0x04);
        r1 = *(u32*)((u8*)r2 + 0x04);
        r0 -= r1;
        if (r0 < 0)
        {
            r4++;
            r1 = (u32)r2;
            r1 += 0x24;
            *(u8*)r1 = 6;
        }
        if (r4 > 1)
        {
            *(u8*)r6 = 2;
        }
    }
    else
    {
        if (r0 != 2)
        {
            r0 = 0;
        }
        else
        {
            r0 = 1;
        }
    }
}
#endif
