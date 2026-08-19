#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// _negdi2 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/_negdi2.s\"");
#else
#error "TODO: write _negdi2 to match asm/nonmatching/_negdi2.s, then delete this #error"
#endif
