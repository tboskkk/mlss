#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_813B224 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B224.s\"");
#else
#error "TODO: write sub_813B224 to match asm/nonmatching/sub_813B224.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B2C0.s\"");
#else
#error "TODO: write sub_813B2C0 to match asm/nonmatching/sub_813B2C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813B360.s\"");
#else
#error "TODO: write sub_813B360 to match asm/nonmatching/sub_813B360.s, then delete this #error"
#endif
