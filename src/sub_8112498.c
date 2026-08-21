#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8112498 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112498.s\"");
#else
#error "TODO: write sub_8112498 to match asm/nonmatching/sub_8112498.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81124D0.s\"");
#else
#error "TODO: write sub_81124D0 to match asm/nonmatching/sub_81124D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811251C.s\"");
#else
#error "TODO: write sub_811251C to match asm/nonmatching/sub_811251C.s, then delete this #error"
#endif
