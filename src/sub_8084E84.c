#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8084E84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084E84.s\"");
#else
u32* sub_8084E84(u32* param_1, s16 param_2) {
    u32* puVar1;
    u32 uVar2;
    
    uVar2 = (u32)param_2;
    puVar1 = param_1 + 0xC + (uVar2 * 5);
    return puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084E98.s\"");
#else
#error "TODO: write sub_8084E98 to match asm/nonmatching/sub_8084E98.s, then delete this #error"
#endif
