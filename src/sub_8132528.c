#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132528 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132528.s\"");
#else
#error "TODO: write sub_8132528 to match asm/nonmatching/sub_8132528.s, then delete this #error"
#endif
