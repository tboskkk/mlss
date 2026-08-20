#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139200 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139200.s\"");
#else
void sub_8139200(void* p0)
{
    u32* ptr0 = (u32*)((u8*)p0 + 0x25C);
    u32* ptr1 = (u32*)((u8*)p0 + 0x18);
    u32* ptr2 = (u32*)((u8*)p0 + 0x258);
    u32* ptr3 = (u32*)((u8*)p0 + 0x248);
    u32* ptr4 = (u32*)((u8*)p0 + 0x25C);
    u32* ptr5 = (u32*)((u8*)p0 + 0x18);
    u32* ptr6 = (u32*)((u8*)p0 + 0x248);
    u32* ptr7 = (u32*)((u8*)p0 + 0x258);
    u32* ptr8 = (u32*)((u8*)p0 + 0x25C);
    u8* ptr9 = (u8*)p0 + 0x2B5;
    
    if (*ptr0 != 0xFFFFFFFF)
    {
        *ptr1 += *ptr3;
        *ptr2 -= *ptr6;
        (*ptr0)++;
        if (*ptr5 <= 0)
        {
            *ptr5 = 0;
            *ptr8 = 0xFFFFFFFF;
            *ptr9 &= 0xF0;
        }
    }
}
#endif
