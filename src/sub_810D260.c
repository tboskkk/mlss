#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810D260 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_810D260(u32 arg0, s32 arg1) {
    s32 var_r1_8;
    u32 var_r0_0;

    var_r0_0 = arg0;
    var_r1_8 = 0;
    do {
        var_r0_0 = var_r0_0 >> 4;
        var_r1_8 += 4;
    } while (var_r0_0 != 0);
    return arg1 + var_r1_8;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810D274.s\"");
#else
#error "TODO: write sub_810D274 to match asm/nonmatching/sub_810D274.s, then delete this #error"
#endif
