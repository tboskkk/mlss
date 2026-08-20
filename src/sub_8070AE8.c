#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070AE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070AE8.s\"");
#else
extern void sub_8070E4C();

void sub_8070AE8(void* p0)
{
    u32* ptr1;
    s16 val;
    
    ptr1 = *(u32**)((u8*)p0 + 0x2C);
    ptr1 = *(u32**)((u8*)ptr1 + 0x28);
    ptr1 = (u32*)((u8*)ptr1 + 0xEC);
    val = *(s16*)((u8*)ptr1 + 0x00);
    
    if (val != -1)
    {
        *(u32*)((u8*)p0 + 0xA0) = 0x00000001;
    }
    else
    {
        *(u32*)((u8*)p0 + 0xA0) = 0x00000000;
    }
    
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_8070E4C;
}
#endif
