#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F032C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F032C.s\"");
#else
#error "TODO: write sub_80F032C to match asm/nonmatching/sub_80F032C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F034C.s\"");
#else
#error "TODO: write sub_80F034C to match asm/nonmatching/sub_80F034C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F03C8.s\"");
#else
#error "TODO: write sub_80F03C8 to match asm/nonmatching/sub_80F03C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0420.s\"");
#else
#error "TODO: write sub_80F0420 to match asm/nonmatching/sub_80F0420.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/bevs_process_init_80F048C.s\"");
#else
#error "TODO: write bevs_process_init_80F048C to match asm/nonmatching/bevs_process_init_80F048C.s, then delete this #error"
#endif
