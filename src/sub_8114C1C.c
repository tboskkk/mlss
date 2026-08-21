#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8114C1C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8114C1C.s\"");
#else
#error "TODO: write sub_8114C1C to match asm/nonmatching/sub_8114C1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8115048.s\"");
#else
#error "TODO: write sub_8115048 to match asm/nonmatching/sub_8115048.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81151E4.s\"");
#else
#error "TODO: write sub_81151E4 to match asm/nonmatching/sub_81151E4.s, then delete this #error"
#endif
