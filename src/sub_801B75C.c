#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801B75C needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801B75C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0))) = 0;
    (*(s16 *)((s8 *)(arg0) + (4))) = 0;
    (*(s32 *)((s8 *)(arg0) + (8))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B768.s\"");
#else
#error "TODO: write sub_801B768 to match asm/nonmatching/sub_801B768.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801B7B0.s\"");
#else
#error "TODO: write sub_801B7B0 to match asm/nonmatching/sub_801B7B0.s, then delete this #error"
#endif
