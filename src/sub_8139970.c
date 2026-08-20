#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139970 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139970.s\"");
#else
extern void sub_81395AC();

void sub_8139970(u8* param_1, u8* param_2)
{
    u32* ptr = (u32*)((u8*)param_2 + 0x198);
    *ptr = (u32)sub_81395AC;
    sub_81395AC();
}
#endif
