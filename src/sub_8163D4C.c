#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163D4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163D4C.s\"");
#else
void sub_8163D4C(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD118;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163D6C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

void sub_8163D80(u16 arg0) {
    s32 sp0;
    s32 temp_r4_10;

    temp_r4_10 = arg0 | (arg0 << 0x10);
    sp0 = temp_r4_10;
    CpuFastSet(&sp0, (void *)0x05000000, 0x01000080U);
    sp0 = temp_r4_10;
    CpuFastSet(&sp0, (void *)0x05000200, 0x01000080U);
}
