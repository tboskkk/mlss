#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083E78 needs.

asm_unified(".include \"asm/macros.inc\"");

s8 sub_8083E78(void *arg0) {
    return (s8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xE4)))) + (6)));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083E84.s\"");
#else
#error "TODO: write sub_8083E84 to match asm/nonmatching/sub_8083E84.s, then delete this #error"
#endif
