#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8028EE8 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8028EE8(void *arg0) {
    (*(u8 *)((s8 *)(arg0) + (0xF8))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0xF8))) | 0x40);
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8028EF4.s\"");
#else
#error "TODO: write sub_8028EF4 to match asm/nonmatching/sub_8028EF4.s, then delete this #error"
#endif
