#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A718 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_819A718(void *arg0) {
    (*(u16 *)((s8 *)(arg0) + (0))) = (u16) (0xF9FF & (*(u16 *)((s8 *)(arg0) + (0))));
    (*(u8 *)((s8 *)(arg0) + (0x1B))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x1A)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A72C.s\"");
#else
#error "TODO: write sub_819A72C to match asm/nonmatching/sub_819A72C.s, then delete this #error"
#endif
