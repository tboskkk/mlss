#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E690 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E690.s\"");
#else
extern void nullsub_15();
extern void sub_806DD48();

void sub_806E690(void* p0)
{
    u32* r4 = (u32*)((u8*)p0 + 0x2C);
    u32* r0 = *(u32**)r4;
    u32* r1 = (u32*)(*(u32**)((u8*)p0 + 0x2C) + 0x68);
    
    if (*r1 != 0)
        ((void(*)(void))(*r1))();
    
    *(u32*)((u8*)(*r4) + 0x4C) = (u32)nullsub_15;
    *(u32*)((u8*)p0 + 0x4C) = (u32)sub_806DD48;
}
#endif
