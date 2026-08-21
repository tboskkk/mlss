#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163394 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163394.s\"");
#else
#error "TODO: write sub_8163394 to match asm/nonmatching/sub_8163394.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81633C0.s\"");
#else
#error "TODO: write sub_81633C0 to match asm/nonmatching/sub_81633C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163474.s\"");
#else
#error "TODO: write sub_8163474 to match asm/nonmatching/sub_8163474.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81634DC.s\"");
#else
#error "TODO: write sub_81634DC to match asm/nonmatching/sub_81634DC.s, then delete this #error"
#endif
