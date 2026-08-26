#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80679FC needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8067A4C;

void sub_80679FC(struct Entity *arg0) {
    s32 temp_r0_11;

    temp_r0_11 = arg0->unk84 - 1;
    arg0->unk84 = temp_r0_11;
    if (temp_r0_11 <= 0) {
        arg0->unk8C = 0x300;
        arg0->handler = &sub_8067A4C;
    }
}

s32 sub_8082B00();                                  /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8066EE0;

void sub_8067A24(struct Entity *arg0) {
    if (sub_8082B00() == 0) {
        sub_8082E1C(arg0, 2, 0, 0);
        arg0->handler = &sub_8066EE0;
    }
}
