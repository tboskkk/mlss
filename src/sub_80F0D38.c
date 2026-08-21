#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0D38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0D38.s\"");
#else
s32 sub_80F0D38(void *arg0, void *arg2) {
    s32 temp_r0_52;
    s32 temp_r1_26;
    s32 temp_r2_9;
    u32 var_r0_19;
    u32 var_r0_36;
    u32 var_r1_33;
    u32 var_r2_16;

    temp_r2_9 = (*(s32 *)((s8 *)(arg2) + (4)));
    if (0x40 & temp_r2_9) {
        var_r2_16 = (u32) (temp_r2_9 & 0x3F) >> 2;
    } else {
        var_r0_19 = 0;
        if (temp_r2_9 > 1) {
            var_r0_19 = 3;
        }
        var_r2_16 = var_r0_19;
    }
    temp_r1_26 = (*(s32 *)((s8 *)(arg2) + (8)));
    if (0x40 & temp_r1_26) {
        var_r1_33 = (u32) (temp_r1_26 & 0x3F) >> 2;
    } else {
        var_r0_36 = 0;
        if (temp_r1_26 > 1) {
            var_r0_36 = 3;
        }
        var_r1_33 = var_r0_36;
    }
    temp_r0_52 = (*(s32 *)((s8 *)(arg2) + (0)));
    (*(s16 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0xD4)))) + (0xC))) = (s16) (temp_r0_52 | ((var_r2_16 << 8) | ((var_r1_33 << 6) | 0xFFFFE000) | (temp_r0_52 * 8)));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0DA0.s\"");
#else
#error "TODO: write sub_80F0DA0 to match asm/nonmatching/sub_80F0DA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0E18.s\"");
#else
#error "TODO: write sub_80F0E18 to match asm/nonmatching/sub_80F0E18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0E80.s\"");
#else
#error "TODO: write sub_80F0E80 to match asm/nonmatching/sub_80F0E80.s, then delete this #error"
#endif
