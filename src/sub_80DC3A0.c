#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DC3A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DC3A0.s\"");
#else
u32 sub_80DC3A0(u32 param_1) {
    u32 *ptr = (u32*)((u32)param_1 + 0x80);
    if (*ptr == 0) {
        *(u32*)((u32)param_1 + 0x4C) = 0x0808750D;
    }
    return param_1;
}
#endif
