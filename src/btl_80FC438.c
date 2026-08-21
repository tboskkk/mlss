#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_80FC438 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/btl_80FC438.s\"");
#else
#error "TODO: write btl_80FC438 to match asm/nonmatching/btl_80FC438.s, then delete this #error"
#endif
