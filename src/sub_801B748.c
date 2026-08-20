#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B748 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801B748(void *arg0, s32 arg1, s16 arg2, s16 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0))) = arg1;
    (*(s16 *)((s8 *)(arg0) + (4))) = arg2;
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) arg3;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0xFFFF0000;
}
