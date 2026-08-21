#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802563C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802563C.s\"");
#else
#error "TODO: write sub_802563C to match asm/nonmatching/sub_802563C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025ACC.s\"");
#else
#error "TODO: write sub_8025ACC to match asm/nonmatching/sub_8025ACC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025C04.s\"");
#else
#error "TODO: write sub_8025C04 to match asm/nonmatching/sub_8025C04.s, then delete this #error"
#endif
