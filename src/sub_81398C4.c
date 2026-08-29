#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81398C4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_81398C4.s", s32 sub_81398C4(s32 arg0, void *arg1));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81398F0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

s32 sub_813B380(s32, void *);               /* extern */
extern s32 sub_8139508;
extern s32 sub_81396D8;

void sub_81398FC(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_813B380;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_8139508;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_8139508;
    (*(s32 **)((s8 *)(arg1) + (0x1AC))) = &sub_81396D8;
    sub_813B380(arg0, arg1);
}
extern s32 sub_813955C;

void sub_813993C(s32 arg0, void *arg1) {
    (*(s32 (**)(s32, void *))((s8 *)(arg1) + (0x198))) = sub_81398C4;
    (*(s32 **)((s8 *)(arg1) + (0x1A0))) = &sub_813955C;
    (*(s32 **)((s8 *)(arg1) + (0x1A4))) = &sub_813955C;
    sub_81398C4(arg0, arg1);
}
