#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81631DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81631DC.s\"");
#else
u32 sub_81631DC(u32* param) {
    u32 r1 = 0;
    u32 r0 = param[0x24 / sizeof(u32)];
    if (r0 != 0)
        r1 = 1;
    return r1;
}
#endif
