#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81346D0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81346D0.s\"");
#else
#error "TODO: write sub_81346D0 to match asm/nonmatching/sub_81346D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81346EC.s\"");
#else
#error "TODO: write sub_81346EC to match asm/nonmatching/sub_81346EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81347C0.s\"");
#else
#error "TODO: write sub_81347C0 to match asm/nonmatching/sub_81347C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813481C.s\"");
#else
#error "TODO: write sub_813481C to match asm/nonmatching/sub_813481C.s, then delete this #error"
#endif
