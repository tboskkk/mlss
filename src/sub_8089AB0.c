#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8089AB0 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_808750C;

extern s32 sub_808942C;

void sub_8089AB0(struct Entity *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x80))) = 0;
    arg0->handler = &sub_808942C;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}

void sub_8089AC8(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        arg0->handler = &sub_808750C;
    }
}

ASM_FUNC("asm/nonmatching/sub_8089AE4.s", void sub_8089AE4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8089B4C.s", s16 sub_8089B4C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8089B90.s", s16 sub_8089B90(void *arg0));