#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8154950 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154950.s\"");
#else
void sub_8154950(void* param_1)
{
    u8* puVar1;
    void** ppvVar2;
    
    puVar1 = (u8*)param_1 + 0x24;
    if (*puVar1 <= 0xa) {
        ppvVar2 = (void**)(0x8154970 + ((uint)*puVar1 << 2));
        (*(ppvVar2[0]))();
    }
    return;
}
#endif
