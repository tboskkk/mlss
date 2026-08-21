#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAEC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEC4.s\"");
#else
u8 sub_8120E90(s32, u8);                            /* extern */

void sub_80FAEC4(void *arg0, void *arg1, u8 arg2) {
    if (sub_8120E90((*(s32 *)((s8 *)(arg0) + (0x14))), arg2) == 1) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) ((*(u16 *)((s8 *)(arg1) + (0xA0))) ^ 2);
    }
}
#endif
