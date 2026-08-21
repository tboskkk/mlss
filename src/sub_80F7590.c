#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7590 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7590.s\"");
#else
void sub_80F7590(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) & ~arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F75B4.s\"");
#else
void sub_80F75B4(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F75D8.s\"");
#else
void sub_80F75D8(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) | arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7608.s\"");
#else
#error "TODO: write sub_80F7608 to match asm/nonmatching/sub_80F7608.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7644.s\"");
#else
#error "TODO: write sub_80F7644 to match asm/nonmatching/sub_80F7644.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F76B8.s\"");
#else
#error "TODO: write sub_80F76B8 to match asm/nonmatching/sub_80F76B8.s, then delete this #error"
#endif
