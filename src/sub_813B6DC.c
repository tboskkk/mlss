#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B6DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B6DC.s\"");
#else
#error "TODO: write sub_813B6DC to match asm/nonmatching/sub_813B6DC.s, then delete this #error"
#endif
