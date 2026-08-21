#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801DC38 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_801DC38(void *arg0) {
    (*(s32 (**)(s32, s32))((s8 *)(arg0) + (0x14)))((*(s32 *)((s8 *)(arg0) + (0))), (*(s32 *)((s8 *)(arg0) + (4))));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DC4C.s\"");
#else
#error "TODO: write sub_801DC4C to match asm/nonmatching/sub_801DC4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DD80.s\"");
#else
#error "TODO: write sub_801DD80 to match asm/nonmatching/sub_801DD80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801DE8C.s\"");
#else
#error "TODO: write sub_801DE8C to match asm/nonmatching/sub_801DE8C.s, then delete this #error"
#endif
