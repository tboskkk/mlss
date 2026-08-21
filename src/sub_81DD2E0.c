#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DD2E0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_81DD2E0(void) {
    return *(s32 *)0x08CDBD64;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DD2EC.s\"");
#else
#error "TODO: write sub_81DD2EC to match asm/nonmatching/sub_81DD2EC.s, then delete this #error"
#endif
