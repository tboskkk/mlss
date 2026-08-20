#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801DC38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DC38.s\"");
#else
void sub_801DC38(void* p0)
{
    u32 r2 = *(u32*)((u8*)p0);
    u32 r1 = *(u32*)((u8*)p0 + 0x04);
    u32 r3 = *(u32*)((u8*)p0 + 0x14);
    (void)r1;
    ((void(*)(void))r3)();
    p0 = *(void**)p0;
    (void)p0;
}
#endif
