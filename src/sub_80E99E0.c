#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E99E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E99E0.s\"");
#else
void sub_80E99E0(s32 arg0)
{
    s32 r1;
    u32 *r0_ptr;
    u32 r2;
    
    r1 = arg0;
    if (r1 > 0x1CB7)
    {
        if (r1 > 0x1CD7)
        {
            if (r1 > 0x1D17)
            {
                r0 = 0;
            }
            else
            {
                r2 = 0xFFFFE328;
                r0 = r1 + r2;
                r0 <<= 16;
                r1 = r0 >> 15;
                r0_ptr = (u32*)0x03000FC0;
                r0 = *r0_ptr;
                r0 += 0xE5 << 2;
                r0 += r1;
                r0 = *(u16*)r0;
            }
        }
        else
        {
            r2 = 0xFFFFE470;
            r0 = r1 + r2;
            r0 <<= 16;
            r1 = r0 >> 16;
            r0_ptr = (u32*)0x03000FC0;
            r0 = *r0_ptr;
            r2 = 0x414;
            r0 += r2;
            r0 += r1;
            r0 = *(u8*)r0;
        }
    }
    else
    {
        r2 = 0xFFFFE470;
        r0 = r1 + r2;
        r0 <<= 16;
        r1 = r0 >> 16;
        r0_ptr = (u32*)0x03000FC0;
        r0 = *r0_ptr;
        r2 = 0x414;
        r0 += r2;
        r0 += r1;
        r0 = *(u8*)r0;
    }
}
#endif
