#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134CAC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134CAC.s\"");
#else
#error "TODO: write sub_8134CAC to match asm/nonmatching/sub_8134CAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135084.s\"");
#else
#error "TODO: write sub_8135084 to match asm/nonmatching/sub_8135084.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8135110.s\"");
#else
#error "TODO: write sub_8135110 to match asm/nonmatching/sub_8135110.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81352B4.s\"");
#else
#error "TODO: write sub_81352B4 to match asm/nonmatching/sub_81352B4.s, then delete this #error"
#endif
