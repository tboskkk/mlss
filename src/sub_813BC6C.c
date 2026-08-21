#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813BC6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BC6C.s\"");
#else
void sub_813BC6C(void *arg0, void *arg1) {
    (*(s32 *)((s8 *)(arg1) + (0))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0))) << 8);
    (*(s32 *)((s8 *)(arg1) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) << 8);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BCE4.s\"");
#else
#error "TODO: write sub_813BCE4 to match asm/nonmatching/sub_813BCE4.s, then delete this #error"
#endif
