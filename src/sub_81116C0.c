#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81116C0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81116C0.s\"");
#else
#error "TODO: write sub_81116C0 to match asm/nonmatching/sub_81116C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111754.s\"");
#else
#error "TODO: write sub_8111754 to match asm/nonmatching/sub_8111754.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111848.s\"");
#else
#error "TODO: write sub_8111848 to match asm/nonmatching/sub_8111848.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81118F0.s\"");
#else
#error "TODO: write sub_81118F0 to match asm/nonmatching/sub_81118F0.s, then delete this #error"
#endif
