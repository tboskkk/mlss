#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7ED0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7ED0.s\"");
#else
s32 sub_80F7ED0(void *arg2) {
    s32 temp_r3_8;
    void *temp_r0_12;

    temp_r3_8 = (*(s32 *)((s8 *)(arg2) + (0)));
    if (temp_r3_8 == 0) {
        temp_r0_12 = *(void **)0x03000FD8;
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r0_12) + (0x2D8)))) + (8))) = (s16) (*(s32 *)((s8 *)(arg2) + (4)));
        (*(s16 *)((s8 *)((*(void **)((s8 *)(temp_r0_12) + (0x2D8)))) + (0xA))) = (s16) temp_r3_8;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7EF8.s\"");
#else
#error "TODO: write sub_80F7EF8 to match asm/nonmatching/sub_80F7EF8.s, then delete this #error"
#endif
