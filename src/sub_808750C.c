#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808750C needs.

asm_unified(".include \"asm/macros.inc\"");


extern s32 sub_80874B4;

void sub_808750C(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80874B4;
    }
}

void sub_8087524(void *arg0) {
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x21))) == 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80874B4;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087540.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_8082B00();                                  /* extern */

void sub_808759C(void *arg0) {
    if (sub_8082B00() == 0) {
        (*(s32 (**)(void *))((s8 *)((*(void **)((s8 *)(arg0) + (0x6C)))) + (4)))(arg0);
    }
}
