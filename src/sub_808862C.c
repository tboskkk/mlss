#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808862C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808862C.s\"");
#else
#error "TODO: write sub_808862C to match asm/nonmatching/sub_808862C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808863C.s\"");
#else
#error "TODO: write sub_808863C to match asm/nonmatching/sub_808863C.s, then delete this #error"
#endif
