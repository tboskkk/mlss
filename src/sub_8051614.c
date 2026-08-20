#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8051614 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8051614.s\"");
#else
void sub_8051614(u32* p0, u32* p1)
{
    u32* r2 = p1 + 0x1A0 / sizeof(u32);
    (*(u32 (**)(void))r2)();
}
#endif
