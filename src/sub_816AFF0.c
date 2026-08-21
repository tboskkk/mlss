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
#error "TODO: write sub_816B000 to match asm/nonmatching/sub_816B000.s, then delete this #error"
#endif
