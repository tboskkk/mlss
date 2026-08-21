#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80841B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80841B8.s\"");
#else
u8 sub_80841B8(void *arg0) {
    u8 var_r1_8;
    void *temp_r2_7;

    temp_r2_7 = (*(void **)((s8 *)(arg0) + (0x40)));
    var_r1_8 = (*(u8 *)((s8 *)(temp_r2_7) + (0)));
    if (0x80 & var_r1_8) {
        var_r1_8 = (*(u8 *)((s8 *)(temp_r2_7) + (7)));
    }
    return var_r1_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084294.s\"");
#else
#error "TODO: write sub_8084294 to match asm/nonmatching/sub_8084294.s, then delete this #error"
#endif
