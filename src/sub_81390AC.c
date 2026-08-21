#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81390AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81390AC.s\"");
#else
#error "TODO: write sub_81390AC to match asm/nonmatching/sub_81390AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813915C.s\"");
#else
#error "TODO: write sub_813915C to match asm/nonmatching/sub_813915C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81391A0.s\"");
#else
#error "TODO: write sub_81391A0 to match asm/nonmatching/sub_81391A0.s, then delete this #error"
#endif
