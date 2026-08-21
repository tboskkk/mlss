#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0FA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0FA0.s\"");
#else
#error "TODO: write sub_80F0FA0 to match asm/nonmatching/sub_80F0FA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1054.s\"");
#else
#error "TODO: write sub_80F1054 to match asm/nonmatching/sub_80F1054.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1088.s\"");
#else
#error "TODO: write sub_80F1088 to match asm/nonmatching/sub_80F1088.s, then delete this #error"
#endif
