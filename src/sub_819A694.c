#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A694 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819A694(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0))) = (u16) (0xCFFF & (*(u16 *)((s8 *)(arg0) + (0))));
    (*(u8 *)((s8 *)(arg0) + (0x17))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x16)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A6A8.s\"");
#else
#error "TODO: write sub_819A6A8 to match asm/nonmatching/sub_819A6A8.s, then delete this #error"
#endif
