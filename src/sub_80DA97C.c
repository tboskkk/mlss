#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA97C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA97C.s\"");
#else
#error "TODO: write sub_80DA97C to match asm/nonmatching/sub_80DA97C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA9E0.s\"");
#else
#error "TODO: write sub_80DA9E0 to match asm/nonmatching/sub_80DA9E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA9FC.s\"");
#else
#error "TODO: write sub_80DA9FC to match asm/nonmatching/sub_80DA9FC.s, then delete this #error"
#endif
