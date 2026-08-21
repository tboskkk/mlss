#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7E80 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80F7E80(void) {
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7E84.s\"");
#else
s32 sub_8082B00();                                  /* extern */

s32 sub_80F7E84(s32 arg0, void *arg1) {
    if ((sub_8082B00() << 0x18) == 0) {
        return 1;
    }
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) (*(s32 *)((s8 *)(arg1) + (0x14)));
    return 0;
}
#endif
