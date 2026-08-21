#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150DE8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8150DE8(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0x30))) = arg1;
}

s32 sub_8150DEC(void *arg0) {
    return (*(s32 *)((s8 *)(arg0) + (0x34)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150DF0.s\"");
#else
void sub_8150DF0(void *arg0, s32 arg1) {
    (*(u16 *)((s8 *)(arg0) + (0x2C))) = (u16) (4 | (*(u16 *)((s8 *)(arg0) + (0x2C))));
    (*(s32 *)((s8 *)(arg0) + (0x38))) = arg1;
    (*(s32 *)((s8 *)(arg0) + (0x3C))) = (s32) ((s32) (arg1 - (*(s32 *)((s8 *)(arg0) + (0x34)))) / 10);
}
#endif
