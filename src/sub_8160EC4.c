#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160EC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EC4.s\"");
#else
void sub_8160EC4(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x804))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x80C))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160EDC.s\"");
#else
#error "TODO: write sub_8160EDC to match asm/nonmatching/sub_8160EDC.s, then delete this #error"
#endif
