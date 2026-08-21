#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81427AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81427AC.s\"");
#else
extern s32 sub_81417F8;

void sub_81427AC(void *arg1, s32 **arg2) {
    u16 temp_r0_21;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x12)))) {
        temp_r0_21 = (*(u16 *)((s8 *)(arg1) + (0x1D2))) - 1;
        (*(u16 *)((s8 *)(arg1) + (0x1D2))) = temp_r0_21;
        if ((temp_r0_21 << 0x10) == 0) {
            *arg2 = &sub_81417F8;
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81427E0.s\"");
#else
#error "TODO: write sub_81427E0 to match asm/nonmatching/sub_81427E0.s, then delete this #error"
#endif
