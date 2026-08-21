#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// panm_update needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/panm_update.s\"");
#else
#error "TODO: write panm_update to match asm/nonmatching/panm_update.s, then delete this #error"
#endif
