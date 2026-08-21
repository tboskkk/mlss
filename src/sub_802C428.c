#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802C428 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C428.s\"");
#else
#error "TODO: write sub_802C428 to match asm/nonmatching/sub_802C428.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C4D4.s\"");
#else
#error "TODO: write sub_802C4D4 to match asm/nonmatching/sub_802C4D4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C588.s\"");
#else
#error "TODO: write sub_802C588 to match asm/nonmatching/sub_802C588.s, then delete this #error"
#endif
