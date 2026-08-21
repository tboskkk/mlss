#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA0E0 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_80DA098;

void sub_80DA0E0(void *arg0) {
    u8 temp_r2_10;

    temp_r2_10 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x21)));
    if (temp_r2_10 == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = (s16) temp_r2_10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80DA098;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA100.s\"");
#else
#error "TODO: write sub_80DA100 to match asm/nonmatching/sub_80DA100.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA140.s\"");
#else
#error "TODO: write sub_80DA140 to match asm/nonmatching/sub_80DA140.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA180.s\"");
#else
#error "TODO: write sub_80DA180 to match asm/nonmatching/sub_80DA180.s, then delete this #error"
#endif
