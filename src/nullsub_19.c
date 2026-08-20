#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_19 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/nullsub_19.s\"");
#else
#error "TODO: write nullsub_19 to match asm/nonmatching/nullsub_19.s, then delete this #error"
#endif
