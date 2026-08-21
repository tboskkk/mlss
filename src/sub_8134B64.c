#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134B64 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8134B64(u32 param_1) {
    *(u16*)param_1 = 0;
    *(u16*)(param_1 + 2) = 0;
    *(u16*)(param_1 + 4) = 0x10;
    return param_1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134B70.s\"");
#else
#error "TODO: write sub_8134B70 to match asm/nonmatching/sub_8134B70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134BD0.s\"");
#else
#error "TODO: write sub_8134BD0 to match asm/nonmatching/sub_8134BD0.s, then delete this #error"
#endif
