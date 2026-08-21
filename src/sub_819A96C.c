#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A96C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A96C.s\"");
#else
#error "TODO: write sub_819A96C to match asm/nonmatching/sub_819A96C.s, then delete this #error"
#endif
