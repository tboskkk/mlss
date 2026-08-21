#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816AFF0 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_816AFF0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x490))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x490))) | 8);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B000.s\"");
#else
void sub_816B000(void *arg0) {
    if (8 & (*(u16 *)((s8 *)((void *)0x0300034C) + (0x2A)))) {
        (*(s32 *)((s8 *)(arg0) + (0x474))) = 4;
    }
}
#endif
