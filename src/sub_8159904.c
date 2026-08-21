#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159904 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_8159904(u32* param_1, u32 param_2) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x14B;
    *puVar1 = param_2;
    return puVar1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159910.s\"");
#else
#error "TODO: write sub_8159910 to match asm/nonmatching/sub_8159910.s, then delete this #error"
#endif
