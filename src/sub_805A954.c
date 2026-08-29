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

s32 process_remove(void *, s32);                /* extern */
s32 sub_80184F4(s32);                           /* extern */

void sub_805A99C(void *arg0, s32 arg1) {
    void *temp_r0_14;
    void *temp_r0_19;
    void *temp_r0_24;
    void *temp_r0_29;

    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC2A8;
    sub_80184F4(0x06000000);
    temp_r0_14 = (*(void **)((s8 *)(arg0) + (0x40)));
    if (temp_r0_14 != NULL) {
        free_heap_8018D9C(temp_r0_14);
    }
    temp_r0_19 = (*(void **)((s8 *)(arg0) + (0x44)));
    if (temp_r0_19 != NULL) {
        free_heap_8018D9C(temp_r0_19);
    }
    temp_r0_24 = (*(void **)((s8 *)(arg0) + (0x3C)));
    if (temp_r0_24 != NULL) {
        free_heap_8018D9C(temp_r0_24);
    }
    temp_r0_29 = (*(void **)((s8 *)(arg0) + (0x38)));
    if (temp_r0_29 != NULL) {
        free_heap_8018D9C(temp_r0_29);
    }
    process_remove(arg0, arg1);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805A9E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805AB24.s\"");
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