#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816544C needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_816544C(u32* param_1, u32 param_2, u32 param_3) {
    param_1[0x24 / 4] = param_2;
    param_1[0x28 / 4] = param_3;
    return param_1;
}
