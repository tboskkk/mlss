#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FACA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FACA4.s\"");
#else
#error "TODO: write sub_80FACA4 to match asm/nonmatching/sub_80FACA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FACCC.s\"");
#else
#error "TODO: write sub_80FACCC to match asm/nonmatching/sub_80FACCC.s, then delete this #error"
#endif
