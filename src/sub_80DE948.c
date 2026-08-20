#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DE948 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DE948.s\"");
#else
u32 sub_80DE948(u32 param_1) {
    u32 *puVar1;
    
    puVar1 = (u32 *)(param_1 + 0x80);
    if (*puVar1 == 0) {
        *(u32 *)(param_1 + 0x4C) = 0x0808750D;
    }
    return *puVar1;
}
#endif
