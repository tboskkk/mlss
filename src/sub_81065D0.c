#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81065D0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81065D0.s\"");
#else
#error "TODO: write sub_81065D0 to match asm/nonmatching/sub_81065D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106608.s\"");
#else
#error "TODO: write sub_8106608 to match asm/nonmatching/sub_8106608.s, then delete this #error"
#endif
