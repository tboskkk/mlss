#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808EC88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808EC88.s\"");
#else
extern void sub_808ED18();
extern void sub_808DD2C();

void sub_808EC88(void* p0)
{
    u8* temp = (u8*)p0 + 0x77;
    u8 val = *(temp);
    val &= 0xBF;
    val &= 0xDF;
    *(temp) = val;
    
    u32* ptr1 = (u32*)((u8*)p0 + 0x28);
    u32* ptr2 = (u32*)*(ptr1);
    u32* ptr3 = (u32*)((u8*)ptr2 + 0xEC);
    s16 val2 = *(s16*)ptr3;
    val2 = ~val2;
    val2 <<= 4;
    val2 -= val2;
    val2 <<= 2;
    
    u32* ptr4 = (u32*)((u8*)*(u32**)(0x03000FF4) + val2);
    u16 val3 = *(u16*)((u8*)ptr4 + 0x2C);
    
    *(u32*)((u8*)(*(u32**)((u8*)p0 + 0x28)) + 0x114) = val3;
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_808ED18;
    *(u32*)((u8*)p0 + 0x68) = (u32)sub_808DD2C;
}
#endif
