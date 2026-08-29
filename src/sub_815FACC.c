#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FACC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_815FACC(void *arg0) {
    s32 temp_r2_10;
    s32 temp_r3_6;

    temp_r3_6 = (*(s32 *)((s8 *)(arg0) + (4)));
    (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (temp_r3_6 - (*(s32 *)((s8 *)(arg0) + (0xC))));
    temp_r2_10 = (*(s32 *)((s8 *)(arg0) + (8)));
    (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) (temp_r2_10 - (*(s32 *)((s8 *)(arg0) + (0x10))));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r3_6;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_10;
}

void sub_815FAE4(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + (*(s16 *)((s8 *)(arg0) + (0x14))));
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + (*(s16 *)((s8 *)(arg0) + (0x18))) + arg1);
}

s32 sub_8021308();                              /* extern */

void sub_815FAFC(s32 *arg0) {
    if (*arg0 != 0) {
        sub_8021308();
        *arg0 = 0;
    }
}

ASM_FUNC("asm/nonmatching/sub_815FB14.s", void sub_815FB14(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_815FB88.s", void sub_815FB88(void *arg0, s32 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5, s32 arg6));
#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FD78.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

ASM_FUNC("asm/nonmatching/sub_815FEF8.s", void sub_815FEF8(void *arg0, u32 arg1, u32 arg2));