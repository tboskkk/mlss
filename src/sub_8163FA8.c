#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163FA8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32* sub_8163FA8(u32* param_1, u32* param_2) {
    *param_1 = *param_2;
    *(param_1 + 1) = *(param_2 + 1);
    *(param_1 + 2) = *(param_2 + 2);
    return param_1;
}
