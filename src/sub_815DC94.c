#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815DC94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815DC94.s\"");
#else
#error "TODO: write sub_815DC94 to match asm/nonmatching/sub_815DC94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815DE30.s\"");
#else
#error "TODO: write sub_815DE30 to match asm/nonmatching/sub_815DE30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E114.s\"");
#else
#error "TODO: write sub_815E114 to match asm/nonmatching/sub_815E114.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E1A0.s\"");
#else
#error "TODO: write sub_815E1A0 to match asm/nonmatching/sub_815E1A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E2D8.s\"");
#else
#error "TODO: write sub_815E2D8 to match asm/nonmatching/sub_815E2D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E63C.s\"");
#else
#error "TODO: write sub_815E63C to match asm/nonmatching/sub_815E63C.s, then delete this #error"
#endif
