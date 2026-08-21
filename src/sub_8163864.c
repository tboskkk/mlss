#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163864 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8161C9C(void *, s32, s32);              /* extern */

void sub_8163864(void **arg0, s32 arg1, s32 arg2) {
    void *var_r4_9;

    var_r4_9 = *arg0;
    if (var_r4_9 != NULL) {
        do {
            sub_8161C9C(var_r4_9, arg1, arg2);
            var_r4_9 = (*(void **)((s8 *)(var_r4_9) + (8)));
        } while (var_r4_9 != NULL);
    }
}

s32 sub_8163BE4(void *);                        /* extern */

void sub_8163888(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD108;
    sub_8163BE4(arg0);
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
