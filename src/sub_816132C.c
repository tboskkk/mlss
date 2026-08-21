#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816132C needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_816132C(void) {
    return 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161330.s\"");
#else
#error "TODO: write sub_8161330 to match asm/nonmatching/sub_8161330.s, then delete this #error"
#endif
