#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113420 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113420.s\"");
#else
#error "TODO: write sub_8113420 to match asm/nonmatching/sub_8113420.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113458.s\"");
#else
#error "TODO: write sub_8113458 to match asm/nonmatching/sub_8113458.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81134A8.s\"");
#else
#error "TODO: write sub_81134A8 to match asm/nonmatching/sub_81134A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81135C0.s\"");
#else
#error "TODO: write sub_81135C0 to match asm/nonmatching/sub_81135C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113674.s\"");
#else
#error "TODO: write sub_8113674 to match asm/nonmatching/sub_8113674.s, then delete this #error"
#endif
