#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8048040 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8048040(void* p0, u32 p1)
{
    u32* ptr = (u32*)((u8*)p0 + 0x338);
    *ptr = 0x08CDBDE8;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
