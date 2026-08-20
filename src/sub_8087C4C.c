#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8087C4C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8087C4C(void *arg0) {
    s32 (*temp_r1_12)(void *);
    s32 temp_r5_9;

    temp_r5_9 = (*(s32 *)((s8 *)(arg0) + (0x80)));
    if (temp_r5_9 == 0) {
        temp_r1_12 = (*(s32 (**)(void *))((s8 *)(arg0) + (0x68)));
        if (temp_r1_12 != NULL) {
            temp_r1_12(arg0);
        }
        (*(s32 *)((s8 *)(arg0) + (0x6C))) = temp_r5_9;
    }
}
