#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD670 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81DD670(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x04) = 0x08CDCF50;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD690.s\"");
#else
s32 sub_8161330();                              /* extern */

void sub_81DD690(void) {
    sub_8161330();
}
#endif
