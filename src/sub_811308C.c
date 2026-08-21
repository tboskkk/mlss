#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_811308C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811308C.s\"");
#else
#error "TODO: write sub_811308C to match asm/nonmatching/sub_811308C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811313C.s\"");
#else
#error "TODO: write sub_811313C to match asm/nonmatching/sub_811313C.s, then delete this #error"
#endif
