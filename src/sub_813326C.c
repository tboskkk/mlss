#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813326C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813326C.s\"");
#else
#error "TODO: write sub_813326C to match asm/nonmatching/sub_813326C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81332BC.s\"");
#else
#error "TODO: write sub_81332BC to match asm/nonmatching/sub_81332BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81332E8.s\"");
#else
#error "TODO: write sub_81332E8 to match asm/nonmatching/sub_81332E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133358.s\"");
#else
#error "TODO: write sub_8133358 to match asm/nonmatching/sub_8133358.s, then delete this #error"
#endif
