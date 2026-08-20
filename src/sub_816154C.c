#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816154C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_816154C(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDD090;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}
