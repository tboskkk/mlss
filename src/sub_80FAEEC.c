#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAEEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAEEC.s\"");
#else
u8 sub_80FAEEC(u8* param_1) {
    return param_1[0x24 + 0x9A1];
}
#endif
