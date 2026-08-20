#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DC43C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC43C.s\"");
#else
u32* sub_81DC43C(void)
{
    u32* r0 = (u32*)0x08CDB62C;
    r0 = (u32*)*r0;
    return r0;
}
#endif
