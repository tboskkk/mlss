#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F6AC0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6AC0.s\"");
#else
#error "TODO: write sub_80F6AC0 to match asm/nonmatching/sub_80F6AC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F6B44.s\"");
#else
#error "TODO: write sub_80F6B44 to match asm/nonmatching/sub_80F6B44.s, then delete this #error"
#endif
