#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813BF94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813BF94.s\"");
#else
#error "TODO: write sub_813BF94 to match asm/nonmatching/sub_813BF94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C034.s\"");
#else
#error "TODO: write sub_813C034 to match asm/nonmatching/sub_813C034.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813C1C0.s\"");
#else
#error "TODO: write sub_813C1C0 to match asm/nonmatching/sub_813C1C0.s, then delete this #error"
#endif
