#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81169C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81169C8.s\"");
#else
u32 sub_81169C8(u32* param_1) {
    u8 temp = *(param_1 + 0x1C / 4);
    temp ^= 1;
    *(param_1 + 0x1C / 4) = temp;
    return (u32)temp;
}
#endif
