#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8070AE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070AE8.s\"");
#else
extern s32 sub_8070E4C;

s32 sub_8070AE8(void *arg0) {
    s32 *var_r1_18;
    s32 var_r0_19;

    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        var_r1_18 = arg0 + 0xA0;
        var_r0_19 = 0;
    } else {
        var_r1_18 = arg0 + 0xA0;
        var_r0_19 = 1;
    }
    *var_r1_18 = var_r0_19;
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8070E4C;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070B70.s\"");
#else
#error "TODO: write sub_8070B70 to match asm/nonmatching/sub_8070B70.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8070BC8.s\"");
#else
#error "TODO: write sub_8070BC8 to match asm/nonmatching/sub_8070BC8.s, then delete this #error"
#endif
