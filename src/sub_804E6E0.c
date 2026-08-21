#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804E6E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804E6E0.s\"");
#else
#error "TODO: write sub_804E6E0 to match asm/nonmatching/sub_804E6E0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804EA68.s\"");
#else
#error "TODO: write sub_804EA68 to match asm/nonmatching/sub_804EA68.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804F904.s\"");
#else
#error "TODO: write sub_804F904 to match asm/nonmatching/sub_804F904.s, then delete this #error"
#endif
