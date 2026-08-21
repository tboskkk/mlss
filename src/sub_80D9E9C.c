#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D9E9C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9E9C.s\"");
#else
extern s32 sub_80D9F50;

void sub_80D9E9C(void *arg0) {
    u16 temp_r0_11;

    temp_r0_11 = (*(u16 *)((s8 *)(arg0) + (0xAC))) - 1;
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = temp_r0_11;
    if ((s32) (temp_r0_11 << 0x10) < 0) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80D9F50;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D9EBC.s\"");
#else
#error "TODO: write sub_80D9EBC to match asm/nonmatching/sub_80D9EBC.s, then delete this #error"
#endif
