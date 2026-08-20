#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8059E5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059E5C.s\"");
#else
void sub_8059E5C(u32* p0, u32* p1)
{
    *(u32*)((u8*)p0 + 0x18) = 0x08CDC278;
    if (*(u32*)((u8*)p0 + 0x78) != 0)
        free_heap_8018D9C(*(u32*)((u8*)p0 + 0x78));
    if (*(u32*)((u8*)p0 + 0x70) != 0)
        free_heap_8018D9C(*(u32*)((u8*)p0 + 0x70));
    if (*(u32*)((u8*)p0 + 0x68) != 0)
        free_heap_8018D9C(*(u32*)((u8*)p0 + 0x68));
    process_remove(p0, p1);
}
#endif
