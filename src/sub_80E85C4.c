#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E85C4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E85C4.s\"");
#else
#error "TODO: write sub_80E85C4 to match asm/nonmatching/sub_80E85C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E87E4.s\"");
#else
#error "TODO: write sub_80E87E4 to match asm/nonmatching/sub_80E87E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8878.s\"");
#else
#error "TODO: write sub_80E8878 to match asm/nonmatching/sub_80E8878.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8944.s\"");
#else
#error "TODO: write sub_80E8944 to match asm/nonmatching/sub_80E8944.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E8B84.s\"");
#else
#error "TODO: write sub_80E8B84 to match asm/nonmatching/sub_80E8B84.s, then delete this #error"
#endif
