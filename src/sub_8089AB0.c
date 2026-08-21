#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8089AB0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089AB0.s\"");
#else
u32* sub_8089AB0(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x20;
    *puVar1 = 0;
    *(undefined4*)(param_1 + 0x13) = 0x0808942D;
    *(undefined2*)((int)param_1 + 0xAC) = 0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089AC8.s\"");
#else
#error "TODO: write sub_8089AC8 to match asm/nonmatching/sub_8089AC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089AE4.s\"");
#else
#error "TODO: write sub_8089AE4 to match asm/nonmatching/sub_8089AE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089B4C.s\"");
#else
#error "TODO: write sub_8089B4C to match asm/nonmatching/sub_8089B4C.s, then delete this #error"
#endif
