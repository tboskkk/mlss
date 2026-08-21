#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E92A8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80E92A8(u32* param_1) {
    return *param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E92AC.s\"");
#else
#error "TODO: write sub_80E92AC to match asm/nonmatching/sub_80E92AC.s, then delete this #error"
#endif
