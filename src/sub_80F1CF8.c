#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1CF8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1CF8.s\"");
#else
s32 sub_80F1CF8(void *arg0, void *arg2) {
    s16 *var_r2_20;
    s16 var_r0_23;
    s32 temp_r2_12;
    void *temp_r0_11;

    temp_r0_11 = (*(void **)((s8 *)((((*(s32 *)((s8 *)(arg2) + (4))) * 4) + (*(s32 *)((s8 *)(arg0) + (0x14))))) + (0x28)));
    temp_r2_12 = (*(s32 *)((s8 *)(arg2) + (0)));
    switch (temp_r2_12) {                           /* irregular */
    case 0:
        var_r2_20 = temp_r0_11 + 0xF8;
        var_r0_23 = 4 | (*(u16 *)((s8 *)(temp_r0_11) + (0xF8)));
block_5:
        *var_r2_20 = var_r0_23;
        break;
    case 1:
        var_r2_20 = temp_r0_11 + 0xF8;
        var_r0_23 = 0xFFFB & (*(u16 *)((s8 *)(temp_r0_11) + (0xF8)));
        goto block_5;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1EE8.s\"");
#else
#error "TODO: write sub_80F1EE8 to match asm/nonmatching/sub_80F1EE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1F7C.s\"");
#else
#error "TODO: write sub_80F1F7C to match asm/nonmatching/sub_80F1F7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/init_ybai_process_80F2070.s\"");
#else
#error "TODO: write init_ybai_process_80F2070 to match asm/nonmatching/init_ybai_process_80F2070.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F2130.s\"");
#else
#error "TODO: write sub_80F2130 to match asm/nonmatching/sub_80F2130.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/ybai_update.s\"");
#else
#error "TODO: write ybai_update to match asm/nonmatching/ybai_update.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F2524.s\"");
#else
#error "TODO: write sub_80F2524 to match asm/nonmatching/sub_80F2524.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F2618.s\"");
#else
#error "TODO: write sub_80F2618 to match asm/nonmatching/sub_80F2618.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F27B4.s\"");
#else
#error "TODO: write sub_80F27B4 to match asm/nonmatching/sub_80F27B4.s, then delete this #error"
#endif
