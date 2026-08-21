#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112064 needs.

asm_unified(".include \"asm/macros.inc\"");

extern s32 sub_8111CA8;

void sub_8112064(void *arg0) {
    if ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0x113))) == 0) {
        (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0x10;
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8111CA8;
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811208C.s\"");
#else
#error "TODO: write sub_811208C to match asm/nonmatching/sub_811208C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81120E4.s\"");
#else
#error "TODO: write sub_81120E4 to match asm/nonmatching/sub_81120E4.s, then delete this #error"
#endif
