#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// __udivsi3 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/__udivsi3.s\"");
#else
#error "TODO: write __udivsi3 to match asm/nonmatching/__udivsi3.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/__umodsi3.s\"");
#else
#error "TODO: write __umodsi3 to match asm/nonmatching/__umodsi3.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DAD4C.s\"");
#else
#error "TODO: write sub_81DAD4C to match asm/nonmatching/sub_81DAD4C.s, then delete this #error"
#endif
