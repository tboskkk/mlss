#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816D734 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D734.s\"");
#else
void sub_816D734(void* p0)
{
    u32* ptr = (u32*)((u8*)p0 + 0x78);
    u32* ptr2 = (u32*)((u8*)p0 + 0x70);
    u32 temp = *ptr + *ptr2;
    *ptr = temp;
    if (temp > 0x57FF)
    {
        *ptr = 0xB0 << 7;
        *ptr2 = (-*ptr2 + ((*ptr2) >> 31)) >> 1;
    }
    else
    {
        if (temp > 0xF0 << 7)
        {
            *ptr = 0xF0 << 7;
            *ptr2 = (-*ptr2 + ((*ptr2) >> 31)) >> 1;
        }
    }
}
#endif
