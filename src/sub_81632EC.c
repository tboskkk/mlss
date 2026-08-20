#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81632EC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81632EC(void *arg0, u16 arg1) {
    u16 temp_r1_9;

    temp_r1_9 = arg1;
    (*(u16 *)((s8 *)(arg0) + (0))) = temp_r1_9;
    if (temp_r1_9 == 0) {
        (*(u16 *)((s8 *)(arg0) + (0))) = 1U;
    }
    (*(s16 *)((s8 *)(arg0) + (2))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163308.s\"");
#else
#error "TODO: write sub_8163308 to match asm/nonmatching/sub_8163308.s, then delete this #error"
#endif
