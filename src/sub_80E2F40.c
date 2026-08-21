#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E2F40 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E2F40.s\"");
#else
#error "TODO: write sub_80E2F40 to match asm/nonmatching/sub_80E2F40.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3034.s\"");
#else
#error "TODO: write sub_80E3034 to match asm/nonmatching/sub_80E3034.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E30B0.s\"");
#else
#error "TODO: write sub_80E30B0 to match asm/nonmatching/sub_80E30B0.s, then delete this #error"
#endif
