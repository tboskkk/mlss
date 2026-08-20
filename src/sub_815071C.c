#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815071C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815071C.s\"");
#else
u32* sub_815071C(u32* param1) {
    *param1 = (u32)&sub_81507A8;
    return param1;
}
#endif
