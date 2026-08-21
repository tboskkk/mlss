#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B820 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 process_remove(void *, s32);                /* extern */
s32 sub_801B7B0(void *, u8, u16, u16);          /* extern */

void sub_801B820(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0x1E))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x1E))) + 1);
    sub_801B7B0(arg0, (*(u8 *)((s8 *)(arg0) + (0x20))), (*(u16 *)((s8 *)(arg0) + (0x1E))), (*(u16 *)((s8 *)(arg0) + (0x1C))));
    if (((u32) (*(u16 *)((s8 *)(arg0) + (0x1E))) >= (u32) (*(u16 *)((s8 *)(arg0) + (0x1C)))) && (arg0 != NULL)) {
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDBD98;
        process_remove(arg0, 3);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B85C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
