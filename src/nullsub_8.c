#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// nullsub_8 needs.

asm_unified(".include \"asm/macros.inc\"");

void nullsub_8(void) {
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8142A70.s\"");
#else
#error "TODO: write sub_8142A70 to match asm/nonmatching/sub_8142A70.s, then delete this #error"
#endif
