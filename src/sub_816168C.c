#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816168C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_816168C(u32* param_1) {
    *param_1 = 0x08CDD0B8;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161698.s\"");
#else
#error "TODO: write sub_8161698 to match asm/nonmatching/sub_8161698.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161780.s\"");
#else
#error "TODO: write sub_8161780 to match asm/nonmatching/sub_8161780.s, then delete this #error"
#endif
