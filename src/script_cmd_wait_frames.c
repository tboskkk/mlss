#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_wait_frames needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_wait_frames.s\"");
#else
s32 script_cmd_wait_frames(s32 arg0, void *arg1, s32 *arg2) {
    s32 temp_r0_9;

    temp_r0_9 = *arg2;
    (*(s32 *)((s8 *)(arg1) + (0x9C))) = temp_r0_9;
    if (temp_r0_9 != 0) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0x10 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
        return 0;
    }
    return 1;
}
#endif
