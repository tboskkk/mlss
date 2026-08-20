#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FAA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FAA4.s\"");
#else
void sub_815FAA4(void *arg0, void *arg1) {
    void *temp_r2_9;

    temp_r2_9 = (*(void **)((s8 *)(arg0) + (0)));
    if (temp_r2_9 != NULL) {
        (*(s16 *)((s8 *)(temp_r2_9) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (4))) - (*(s32 *)((s8 *)(arg1) + (0)))) >> 8);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (2))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (8))) - (*(s32 *)((s8 *)(arg1) + (4)))) >> 8);
    }
}
#endif
