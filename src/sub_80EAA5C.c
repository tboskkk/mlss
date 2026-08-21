#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAA5C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAA5C.s\"");
#else
#error "TODO: write sub_80EAA5C to match asm/nonmatching/sub_80EAA5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAA84.s\"");
#else
#error "TODO: write sub_80EAA84 to match asm/nonmatching/sub_80EAA84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAACC.s\"");
#else
#error "TODO: write sub_80EAACC to match asm/nonmatching/sub_80EAACC.s, then delete this #error"
#endif
