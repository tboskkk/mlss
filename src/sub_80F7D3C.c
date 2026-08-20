#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7D3C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7D3C.s\"");
#else
s32 sub_80F7D3C(void *arg0, void *arg1) {
    if (!(0x7F & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x179D))))) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif
