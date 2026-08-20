#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108CBC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108CBC.s\"");
#else
u16 sub_8108CBC(u16* param)
{
    u16 r1 = 0x8F << 1;
    u16* r2 = param + r1;
    u16 r0 = *r2 & 0x0FFF;
    *r2 = r0;
    return r0;
}
#endif
