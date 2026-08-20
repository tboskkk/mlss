#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E19CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E19CC.s\"");
#else
#error "TODO: write sub_80E19CC to match asm/nonmatching/sub_80E19CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E19EC.s\"");
#else
#error "TODO: write sub_80E19EC to match asm/nonmatching/sub_80E19EC.s, then delete this #error"
#endif
