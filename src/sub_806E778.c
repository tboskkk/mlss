#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E778 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_806E778(void *arg0) {
    s32 temp_r1_9;

    temp_r1_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r1_9 == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x4C))) = temp_r1_9;
        (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x4C))) = temp_r1_9;
    }
}
