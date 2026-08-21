#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9D04 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9D04.s\"");
#else
#error "TODO: write sub_80E9D04 to match asm/nonmatching/sub_80E9D04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9D1C.s\"");
#else
#error "TODO: write sub_80E9D1C to match asm/nonmatching/sub_80E9D1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9D50.s\"");
#else
#error "TODO: write sub_80E9D50 to match asm/nonmatching/sub_80E9D50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9E10.s\"");
#else
#error "TODO: write sub_80E9E10 to match asm/nonmatching/sub_80E9E10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9EE0.s\"");
#else
#error "TODO: write sub_80E9EE0 to match asm/nonmatching/sub_80E9EE0.s, then delete this #error"
#endif
