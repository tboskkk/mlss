#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815F7FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815F7FC.s\"");
#else
void sub_815F7FC(u32* p0, u32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDCF50;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
#endif
