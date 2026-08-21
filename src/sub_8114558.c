#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114558 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_81140C0;
extern s32 sub_811458C;

void sub_8114558(void *arg0) {
    s32 *var_r1_21;
    s32 temp_r0_19;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x30)))) + (8)))) + (0x12)))) {
        temp_r0_19 = (*(s32 *)((s8 *)(arg0) + (0xA0))) - 1;
        (*(s32 *)((s8 *)(arg0) + (0xA0))) = temp_r0_19;
        var_r1_21 = &sub_81140C0;
        if (temp_r0_19 != 0) {
            var_r1_21 = &sub_811458C;
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = var_r1_21;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811458C.s\"");
#else
#error "TODO: write sub_811458C to match asm/nonmatching/sub_811458C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81145C8.s\"");
#else
#error "TODO: write sub_81145C8 to match asm/nonmatching/sub_81145C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81145F8.s\"");
#else
#error "TODO: write sub_81145F8 to match asm/nonmatching/sub_81145F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114680.s\"");
#else
#error "TODO: write sub_8114680 to match asm/nonmatching/sub_8114680.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81146DC.s\"");
#else
#error "TODO: write sub_81146DC to match asm/nonmatching/sub_81146DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114760.s\"");
#else
#error "TODO: write sub_8114760 to match asm/nonmatching/sub_8114760.s, then delete this #error"
#endif
