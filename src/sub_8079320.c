#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8079320 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8079320(void *arg0) {
    s32 temp_r0_9;
    void *temp_r2_13;

    temp_r0_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r0_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r0_9;
        temp_r2_13 = (*(void **)((s8 *)(arg0) + (0x28)));
        (*(s32 *)((s8 *)(temp_r2_13) + (0xA4))) = 2;
        (*(s8 *)((s8 *)(temp_r2_13) + (0x113))) = 2;
    }
}

s32 sub_807F4FC(void *);                        /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8079284;
extern s32 sub_80797E0;

void sub_8079348(struct Entity *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        sub_8082E1C(arg0, 4, 0x4029, 0);
        play_sfx_80195B4(0xE6, -1);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 4;
        arg0->handler = &sub_8079284;
        sub_807F4FC(arg0);
        (*(s32 **)((s8 *)(arg0) + (0x60))) = &sub_80797E0;
    }
}
