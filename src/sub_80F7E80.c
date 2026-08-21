#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7E80 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80F7E80(void) {
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7E84.s\"");
#else
#error "TODO: write sub_80F7E84 to match asm/nonmatching/sub_80F7E84.s, then delete this #error"
#endif
