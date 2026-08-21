#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F110C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F110C.s\"");
#else
s32 sub_80F110C(s32 arg0, void *arg1, s32 *arg2, void *arg3) {
    if (((u32) ~(*(u32 *)((s8 *)(arg1) + (0x25C))) >> 0x1F) == (*(s32 *)((s8 *)(arg3) + (0)))) {
        *arg2 = (*(s32 *)((s8 *)(arg3) + (4)));
    }
    return 1;
}
#endif
