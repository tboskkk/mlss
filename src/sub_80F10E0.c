#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F10E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F10E0.s\"");
#else
s32 sub_80F10E0(void *arg0, s32 *arg1, void *arg2) {
    if (((u32) ~(*(u32 *)((s8 *)((*(void **)((s8 *)((((*(s32 *)((s8 *)(arg2) + (0))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)))) + (0x25C))) >> 0x1F) == (*(s32 *)((s8 *)(arg2) + (4)))) {
        *arg1 = (*(s32 *)((s8 *)((arg2 + 4)) + (4)));
    }
    return 1;
}
#endif
