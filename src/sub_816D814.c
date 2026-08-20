#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816D814 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D814.s\"");
#else
u32* sub_816D814(u32* param_1) {
    *param_1 = 0;
    *(param_1 + 0x14) = 0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816D898.s\"");
#else
#error "TODO: write sub_816D898 to match asm/nonmatching/sub_816D898.s, then delete this #error"
#endif
