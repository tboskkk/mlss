#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80877FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80877FC.s\"");
#else
void sub_80877FC(s32 r0, s32 r1, s32 r2, s32 r3)
{
    s32 r4;
    s32 temp;
    
    r4 = r0;
    if (r2 >= 0)
    {
        temp = r1 * r4;
        if (temp < 0)
        {
            temp += 0x3FFF;
        }
        temp >>= 0xE;
        r0 = temp - r2;
        r4 = r0;
        temp = r2 * r2;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r2 = r3 - temp;
        temp = r1 * r1;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r1 = r2 - temp;
        temp = r4 * r4;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r0 = r1 + temp;
    }
    else
    {
        r0 = 0x80 << 7;
        r0 -= r4;
        temp = r0 * r1;
        if (temp < 0)
        {
            temp += 0x3FFF;
        }
        temp >>= 0xE;
        if (temp >= 0)
        {
            r0 = temp - r2;
        }
        else
        {
            r0 = temp + r2;
        }
        r4 = r0;
        temp = r2 * r2;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r2 = r3 - temp;
        temp = r1 * r1;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r1 = r2 - temp;
        temp = r4 * r4;
        if (temp < 0)
        {
            temp += 0xFF;
        }
        temp >>= 0x08;
        r0 = r1 + temp;
    }
}
#endif
