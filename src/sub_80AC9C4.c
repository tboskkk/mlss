#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC9C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC9C4.s\"");
#else
#error "TODO: write sub_80AC9C4 to match asm/nonmatching/sub_80AC9C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ACA6C.s\"");
#else
#error "TODO: write sub_80ACA6C to match asm/nonmatching/sub_80ACA6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80ACB18.s\"");
#else
#error "TODO: write sub_80ACB18 to match asm/nonmatching/sub_80ACB18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AD0A8.s\"");
#else
#error "TODO: write sub_80AD0A8 to match asm/nonmatching/sub_80AD0A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AD188.s\"");
#else
#error "TODO: write sub_80AD188 to match asm/nonmatching/sub_80AD188.s, then delete this #error"
#endif
