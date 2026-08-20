#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81639F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81639F8.s\"");
#else
u32* sub_81639F8(u32* param_1, u32 param_2) {
    param_1[0x11] = param_2;
    param_1[0x10] = 0;
    param_1[0x12] = 0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163A08.s\"");
#else
#error "TODO: write sub_8163A08 to match asm/nonmatching/sub_8163A08.s, then delete this #error"
#endif
