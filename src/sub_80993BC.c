#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80993BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80993BC.s\"");
#else
u32 sub_80993BC(u32* param_1) {
    param_1[0x4C/4] = (u32)sub_80993C8;
    return 1;
}
#endif
