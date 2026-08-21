#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80AC4AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80AC4AC.s\"");
#else
#error "TODO: write sub_80AC4AC to match asm/nonmatching/sub_80AC4AC.s, then delete this #error"
#endif
