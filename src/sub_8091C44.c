#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8091C44 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8091C44.s\"");
#else
s32 sub_808DD2C(void *);                        /* extern */

void sub_8091C44(void *arg0) {
    if (0x38 & (*(u8 *)((s8 *)(arg0) + (0x76)))) {
        sub_808DD2C(arg0);
        return;
    }
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        sub_808DD2C(arg0);
    }
}
#endif
