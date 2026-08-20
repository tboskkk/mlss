#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0B4C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0B4C.s\"");
#else
s32 sub_80F0B4C(void *arg1) {
    if (!(0x603F & (*(u16 *)((s8 *)(*(void **)0x03000FD0) + (0x55E))))) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif
