#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F4180 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4180.s\"");
#else
#error "TODO: write sub_80F4180 to match asm/nonmatching/sub_80F4180.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F423C.s\"");
#else
#error "TODO: write sub_80F423C to match asm/nonmatching/sub_80F423C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4360.s\"");
#else
#error "TODO: write sub_80F4360 to match asm/nonmatching/sub_80F4360.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4468.s\"");
#else
#error "TODO: write sub_80F4468 to match asm/nonmatching/sub_80F4468.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4530.s\"");
#else
#error "TODO: write sub_80F4530 to match asm/nonmatching/sub_80F4530.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4608.s\"");
#else
#error "TODO: write sub_80F4608 to match asm/nonmatching/sub_80F4608.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4750.s\"");
#else
#error "TODO: write sub_80F4750 to match asm/nonmatching/sub_80F4750.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4844.s\"");
#else
#error "TODO: write sub_80F4844 to match asm/nonmatching/sub_80F4844.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F492C.s\"");
#else
#error "TODO: write sub_80F492C to match asm/nonmatching/sub_80F492C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F49D4.s\"");
#else
#error "TODO: write sub_80F49D4 to match asm/nonmatching/sub_80F49D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4B64.s\"");
#else
#error "TODO: write sub_80F4B64 to match asm/nonmatching/sub_80F4B64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F4CE8.s\"");
#else
#error "TODO: write sub_80F4CE8 to match asm/nonmatching/sub_80F4CE8.s, then delete this #error"
#endif
