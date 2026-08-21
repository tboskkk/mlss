#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813AEAC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AEAC.s\"");
#else
#error "TODO: write sub_813AEAC to match asm/nonmatching/sub_813AEAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AF94.s\"");
#else
#error "TODO: write sub_813AF94 to match asm/nonmatching/sub_813AF94.s, then delete this #error"
#endif
