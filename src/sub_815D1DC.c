#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815D1DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D1DC.s\"");
#else
#error "TODO: write sub_815D1DC to match asm/nonmatching/sub_815D1DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D2E8.s\"");
#else
#error "TODO: write sub_815D2E8 to match asm/nonmatching/sub_815D2E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D658.s\"");
#else
#error "TODO: write sub_815D658 to match asm/nonmatching/sub_815D658.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D7D8.s\"");
#else
#error "TODO: write sub_815D7D8 to match asm/nonmatching/sub_815D7D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D8CC.s\"");
#else
#error "TODO: write sub_815D8CC to match asm/nonmatching/sub_815D8CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D980.s\"");
#else
#error "TODO: write sub_815D980 to match asm/nonmatching/sub_815D980.s, then delete this #error"
#endif
