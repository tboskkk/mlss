#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A954 needs.

asm_unified(".include \"asm/macros.inc\"");

u16* sub_805A954(u16* param_1, u16 param_2, u16 param_3) {
    param_1[0x10] = param_2;
    param_1[0x11] = param_3;
    return param_1;
}

void sub_805A95C(void *arg0) {
    (*(s16 *)((s8 *)((void *)0x02000010) + (0))) = (s16) (0x1FF & (*(u16 *)((s8 *)(arg0) + (0x30))));
    *(s16 *)0x02000014 = 0x1FF & (*(u16 *)((s8 *)(arg0) + (0x32)));
    (*(s16 *)((s8 *)((void *)0x02000010) + (2))) = (s16) (0xFF & (*(u16 *)((s8 *)(arg0) + (0x34))));
    *(s16 *)0x02000016 = 0xFF & (*(u16 *)((s8 *)(arg0) + (0x36)));
}

ASM_FUNC("asm/nonmatching/sub_805A99C.s", void sub_805A99C(void *arg0, s32 arg1));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A9E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_805ABE8.s", void sub_805ABE8(void *arg0, u16 arg1, u16 *arg2));
ASM_FUNC("asm/nonmatching/sub_805AC98.s", void sub_805AC98(void *arg0, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_805AEC8.s", void sub_805AEC8(void *arg0));