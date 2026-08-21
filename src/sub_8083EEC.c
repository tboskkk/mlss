#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083EEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083EEC.s\"");
#else
u32 sub_8083EEC(void *arg0, s32 arg1) {
    s32 var_r0_25;
    u8 temp_r0_9;

    temp_r0_9 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xF0)))) + (0x1D)));
    switch (arg1) {                                 /* irregular */
    case 0:
        return temp_r0_9 >> 6;
    case 1:
        var_r0_25 = (s32) temp_r0_9 >> 4;
block_9:
        return var_r0_25 & 3;
    case 2:
        var_r0_25 = (s32) temp_r0_9 >> 2;
        goto block_9;
    default:
        return -1U;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083F20.s\"");
#else
#error "TODO: write sub_8083F20 to match asm/nonmatching/sub_8083F20.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083F88.s\"");
#else
#error "TODO: write sub_8083F88 to match asm/nonmatching/sub_8083F88.s, then delete this #error"
#endif
