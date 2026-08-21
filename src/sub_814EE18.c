#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814EE18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814EE18.s\"");
#else
#error "TODO: write sub_814EE18 to match asm/nonmatching/sub_814EE18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814F06C.s\"");
#else
#error "TODO: write sub_814F06C to match asm/nonmatching/sub_814F06C.s, then delete this #error"
#endif
