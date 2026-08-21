#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8165420 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8165420(void *arg0) {
    sub_8018218((*(void **)((s8 *)(arg0) + (4))), (*(void **)((s8 *)(arg0) + (0x10))), 0x2000U, 0x20, 0);
    *(*(s16 **)((s8 *)(arg0) + (0x2C))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x24)));
    *(*(s16 **)((s8 *)(arg0) + (0x30))) = (s16) (*(s32 *)((s8 *)(arg0) + (0x28)));
}
