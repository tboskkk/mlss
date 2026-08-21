#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F08A0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F08A0.s\"");
#else
s32 sub_80F08A0(void *arg0, s32 *arg2) {
    void *temp_r3_6;

    temp_r3_6 = (*(void **)((s8 *)(arg0) + (0x14)));
    (*(u8 *)((s8 *)(temp_r3_6) + (0x208))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r3_6) + (0x208)))) | (*arg2 & 1));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F08C0.s\"");
#else
#error "TODO: write sub_80F08C0 to match asm/nonmatching/sub_80F08C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0914.s\"");
#else
#error "TODO: write sub_80F0914 to match asm/nonmatching/sub_80F0914.s, then delete this #error"
#endif
