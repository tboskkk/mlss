#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112030 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8112450;

void sub_8112030(struct Entity *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_8082E1C(arg0, 4, 0, 0);
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x20;
        arg0->handler = &sub_8112450;
    }
}
