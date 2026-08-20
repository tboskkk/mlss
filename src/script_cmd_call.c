#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_call needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_call.s\"");
#else
u32 script_cmd_call(u32* a0, u32* a1, u32 a2) {
    if (a2 == 1) {
        *a1 = *a0;
    }
    *a0 = a2;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_return.s\"");
#else
s32 script_cmd_return(void *arg1) {
    s32 temp_r2_7;

    temp_r2_7 = (*(s32 *)((s8 *)(arg1) + (0x10)));
    if (temp_r2_7 == 0) {
        (*(s32 *)((s8 *)(arg1) + (4))) = (s32) (*(s32 *)((s8 *)(arg1) + (0)));
    } else {
        (*(s32 *)((s8 *)(arg1) + (0))) = temp_r2_7;
        (*(s32 *)((s8 *)(arg1) + (0x10))) = 0;
    }
    return 1;
}
#endif
