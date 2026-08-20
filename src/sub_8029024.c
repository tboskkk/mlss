#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029024 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029024.s\"");
#else
u32 sub_8029024(u32 param_1, u8 param_2) {
    u32 *ptr = (u32*)(param_1 + 0x12B);
    *ptr = (u32)param_2;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029030.s\"");
#else
#error "TODO: write sub_8029030 to match asm/nonmatching/sub_8029030.s, then delete this #error"
#endif
