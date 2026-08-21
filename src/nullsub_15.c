#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_15 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_15(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E794.s\"");
#else
#error "TODO: write sub_806E794 to match asm/nonmatching/sub_806E794.s, then delete this #error"
#endif
