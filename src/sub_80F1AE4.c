#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1AE4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1AE4.s\"");
#else
u32 sub_80F1AE4(u32* param1, u32* param2) {
    *param2 = *param1;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1AEC.s\"");
#else
#error "TODO: write sub_80F1AEC to match asm/nonmatching/sub_80F1AEC.s, then delete this #error"
#endif
