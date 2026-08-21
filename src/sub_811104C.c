#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_811104C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811104C.s\"");
#else
#error "TODO: write sub_811104C to match asm/nonmatching/sub_811104C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811108C.s\"");
#else
#error "TODO: write sub_811108C to match asm/nonmatching/sub_811108C.s, then delete this #error"
#endif
