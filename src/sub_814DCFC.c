#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814DCFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814DCFC.s\"");
#else
#error "TODO: write sub_814DCFC to match asm/nonmatching/sub_814DCFC.s, then delete this #error"
#endif
