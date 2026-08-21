#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E7B48 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E7B48.s\"");
#else
#error "TODO: write sub_80E7B48 to match asm/nonmatching/sub_80E7B48.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E7E0C.s\"");
#else
#error "TODO: write sub_80E7E0C to match asm/nonmatching/sub_80E7E0C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8228.s\"");
#else
#error "TODO: write sub_80E8228 to match asm/nonmatching/sub_80E8228.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E84BC.s\"");
#else
#error "TODO: write sub_80E84BC to match asm/nonmatching/sub_80E84BC.s, then delete this #error"
#endif
