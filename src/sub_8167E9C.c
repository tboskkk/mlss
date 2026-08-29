#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8167E9C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8167E9C(void* p0, s32 p1)
{
    *(u32*)((u8*)p0 + 0x10) = 0x08CDD158;
    if (p1 & 1)
        free_heap_8018DA8(p0);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167EBC.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_8167EBC(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD168;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8167ED0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
