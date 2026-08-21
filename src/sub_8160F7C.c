#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160F7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8160F7C.s\"");
#else
#error "TODO: write sub_8160F7C to match asm/nonmatching/sub_8160F7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161080.s\"");
#else
#error "TODO: write sub_8161080 to match asm/nonmatching/sub_8161080.s, then delete this #error"
#endif
