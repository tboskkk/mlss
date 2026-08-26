#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113E44 needs.

asm_unified(".include \"asm/macros.inc\"");



extern s32 sub_8114404;

int sub_8082E1C();

void sub_8113E44(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, 0x01, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x28;
        arg0->handler = &sub_8114404;
    }
}

void sub_8113E78(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)(arg0->unk08) + (0x12)))) {
        sub_8082E1C(arg0, -1, -1, 0);
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = 0;
    }
}

ASM_FUNC("asm/nonmatching/sub_8113EA0.s", s32 sub_8113EA0(void *arg0, void *arg1));