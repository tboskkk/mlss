#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8116654 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116654.s\"");
#else
#error "TODO: write sub_8116654 to match asm/nonmatching/sub_8116654.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8116680.s\"");
#else
#error "TODO: write sub_8116680 to match asm/nonmatching/sub_8116680.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81166AC.s\"");
#else
#error "TODO: write sub_81166AC to match asm/nonmatching/sub_81166AC.s, then delete this #error"
#endif
