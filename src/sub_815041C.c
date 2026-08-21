#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815041C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815041C.s\"");
#else
#error "TODO: write sub_815041C to match asm/nonmatching/sub_815041C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150498.s\"");
#else
#error "TODO: write sub_8150498 to match asm/nonmatching/sub_8150498.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81504F4.s\"");
#else
#error "TODO: write sub_81504F4 to match asm/nonmatching/sub_81504F4.s, then delete this #error"
#endif
