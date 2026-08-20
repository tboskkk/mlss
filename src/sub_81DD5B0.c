#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD5B0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD5B0.s\"");
#else
void sub_81DD5B0(void* p0, u32 p1)
{
    u32* ptr = (u32*)((u8*)p0 + 0x338);
    *ptr = 0x08CDBDE8;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD5D4.s\"");
#else
void sub_81DD5D4(void* p0, u32 p1)
{
    u32* ptr = (u32*)((u8*)p0 + 0x338);
    *ptr = 0x08CDBDE8;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif

void sub_81DD5F8(void* p0, u32 p1)
{
    u32* ptr = (u32*)((u8*)p0 + 0x338);
    *ptr = 0x08CDBDE8;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
