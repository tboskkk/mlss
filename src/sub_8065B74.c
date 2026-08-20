#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8065B74 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8065B74.s\"");
#else
#error "TODO: write sub_8065B74 to match asm/nonmatching/sub_8065B74.s, then delete this #error"
#endif
