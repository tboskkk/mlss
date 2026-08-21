#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81582C4 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_81582C4(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x20))) = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81582CC.s\"");
#else
#error "TODO: write sub_81582CC to match asm/nonmatching/sub_81582CC.s, then delete this #error"
#endif
