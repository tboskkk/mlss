#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809B738 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B738.s\"");
#else
#error "TODO: write sub_809B738 to match asm/nonmatching/sub_809B738.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B754.s\"");
#else
#error "TODO: write sub_809B754 to match asm/nonmatching/sub_809B754.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B770.s\"");
#else
#error "TODO: write sub_809B770 to match asm/nonmatching/sub_809B770.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B7D8.s\"");
#else
#error "TODO: write sub_809B7D8 to match asm/nonmatching/sub_809B7D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809B89C.s\"");
#else
#error "TODO: write sub_809B89C to match asm/nonmatching/sub_809B89C.s, then delete this #error"
#endif
