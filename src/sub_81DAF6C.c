#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DAF6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DAF6C.s\"");
#else
#error "TODO: write sub_81DAF6C to match asm/nonmatching/sub_81DAF6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB1D8.s\"");
#else
#error "TODO: write sub_81DB1D8 to match asm/nonmatching/sub_81DB1D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB240.s\"");
#else
#error "TODO: write sub_81DB240 to match asm/nonmatching/sub_81DB240.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB670.s\"");
#else
#error "TODO: write sub_81DB670 to match asm/nonmatching/sub_81DB670.s, then delete this #error"
#endif
