#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81367C0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81367C0.s\"");
#else
void sub_81367C0(u32* param_1, s16 param_2)
{
    u32* puVar1;
    
    puVar1 = param_1;
    if (param_2 != 0) {
        process_add(param_1, param_2);
    }
    *(u32*)((u8*)puVar1 + 0x18) = 0x08CDC4A0;
    return;
}
#endif
