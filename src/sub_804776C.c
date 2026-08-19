#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804776C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804776C.s\"");
#else
#error "TODO: write sub_804776C to match asm/nonmatching/sub_804776C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047784.s\"");
#else
#error "TODO: write sub_8047784 to match asm/nonmatching/sub_8047784.s, then delete this #error"
#endif
