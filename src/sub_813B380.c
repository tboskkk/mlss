#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B380 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B380.s\"");
#else
void sub_813B380(u32* param_1)
{
    u32* puVar1;
    
    puVar1 = param_1 + 0x1A0 / sizeof(u32);
    (*(code*)*puVar1)();
}
#endif
