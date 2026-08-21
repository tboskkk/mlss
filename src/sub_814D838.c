#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_814D838 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D838.s\"");
#else
#error "TODO: write sub_814D838 to match asm/nonmatching/sub_814D838.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_814D968.s\"");
#else
#error "TODO: write sub_814D968 to match asm/nonmatching/sub_814D968.s, then delete this #error"
#endif
