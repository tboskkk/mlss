#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029A0C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029A0C.s\"");
#else
#error "TODO: write sub_8029A0C to match asm/nonmatching/sub_8029A0C.s, then delete this #error"
#endif
