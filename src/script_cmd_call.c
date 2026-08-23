#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_call needs.

asm_unified(".include \"asm/macros.inc\"");

s32 script_cmd_call(s32 arg0, void *arg1, void *arg2) {
    if ((*(s32 *)((s8 *)(arg2) + (0))) == 1) {
        (*(s32 *)((s8 *)(arg1) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg1) + (0)));
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_return.s\"");
#else
s32 script_cmd_return(s32 arg0, void *arg1) {
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
