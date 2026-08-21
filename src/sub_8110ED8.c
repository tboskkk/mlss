#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8110ED8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110ED8.s\"");
#else
#error "TODO: write sub_8110ED8 to match asm/nonmatching/sub_8110ED8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110F5C.s\"");
#else
#error "TODO: write sub_8110F5C to match asm/nonmatching/sub_8110F5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8110FC8.s\"");
#else
#error "TODO: write sub_8110FC8 to match asm/nonmatching/sub_8110FC8.s, then delete this #error"
#endif
