#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114110 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114110.s\"");
#else
#error "TODO: write sub_8114110 to match asm/nonmatching/sub_8114110.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811416C.s\"");
#else
#error "TODO: write sub_811416C to match asm/nonmatching/sub_811416C.s, then delete this #error"
#endif
