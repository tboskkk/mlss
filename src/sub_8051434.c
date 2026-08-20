#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051434 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051434.s\"");
#else
void sub_8051434(void* p0)
{
    u32* ptr0;
    u32* ptr1;
    s32 val0;
    s32 val1;
    u16 val2;
    u16 val3;
    u16 val4;
    
    ptr0 = (u32*)((u8*)p0 + 0x294);
    val0 = *(u32*)((u8*)p0 + 0x0C);
    if (val0 >= 0)
        val0 = val0 >> 8;
    else
        val0 = (val0 - 1) >> 8;
    ptr1 = *(u32**)ptr0;
    *(u16*)(ptr1 + 0x00) = (u16)val0;
    val1 = *(u32*)((u8*)p0 + 0x10);
    if (val1 >= 0)
        val1 = val1 >> 8;
    else
        val1 = (val1 - 1) >> 8;
    *(u16*)((u8*)ptr1 + 0x02) = (u16)val1;
    val2 = *(u32*)((u8*)p0 + 0x214);
    val3 = val2 << 0xF;
    val4 = val3 >> 0x1C;
    val4 <<= 0xC;
    *(u16*)((u8*)ptr1 + 0x0E) = val4;
}
#endif
