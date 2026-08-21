#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E0BF8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0BF8.s\"");
#else
#error "TODO: write sub_80E0BF8 to match asm/nonmatching/sub_80E0BF8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0C88.s\"");
#else
#error "TODO: write sub_80E0C88 to match asm/nonmatching/sub_80E0C88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E0DA4.s\"");
#else
#error "TODO: write sub_80E0DA4 to match asm/nonmatching/sub_80E0DA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E122C.s\"");
#else
#error "TODO: write sub_80E122C to match asm/nonmatching/sub_80E122C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E128C.s\"");
#else
#error "TODO: write sub_80E128C to match asm/nonmatching/sub_80E128C.s, then delete this #error"
#endif
