#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E7CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E7CC.s\"");
#else
#error "TODO: write sub_806E7CC to match asm/nonmatching/sub_806E7CC.s, then delete this #error"
#endif
