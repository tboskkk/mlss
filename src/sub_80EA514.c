#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA514 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA514.s\"");
#else
#error "TODO: write sub_80EA514 to match asm/nonmatching/sub_80EA514.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA530.s\"");
#else
#error "TODO: write sub_80EA530 to match asm/nonmatching/sub_80EA530.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA550.s\"");
#else
#error "TODO: write sub_80EA550 to match asm/nonmatching/sub_80EA550.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA584.s\"");
#else
#error "TODO: write sub_80EA584 to match asm/nonmatching/sub_80EA584.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA5C8.s\"");
#else
#error "TODO: write sub_80EA5C8 to match asm/nonmatching/sub_80EA5C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA60C.s\"");
#else
#error "TODO: write sub_80EA60C to match asm/nonmatching/sub_80EA60C.s, then delete this #error"
#endif
