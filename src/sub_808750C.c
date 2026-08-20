#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808750C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808750C.s\"");
#else
u32 sub_808750C(u32 param_1) {
    u32 *puVar1;
    
    puVar1 = (u32*)((u32)param_1 + 0x80);
    if (*puVar1 == 0) {
        *(puVar1 + 0x13) = (u32)sub_80874B4;
    }
    return (u32)puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8087524.s\"");
#else
#error "TODO: write sub_8087524 to match asm/nonmatching/sub_8087524.s, then delete this #error"
#endif
