#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E5118 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5118.s\"");
#else
#error "TODO: write sub_80E5118 to match asm/nonmatching/sub_80E5118.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5298.s\"");
#else
#error "TODO: write sub_80E5298 to match asm/nonmatching/sub_80E5298.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E53E8.s\"");
#else
#error "TODO: write sub_80E53E8 to match asm/nonmatching/sub_80E53E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5780.s\"");
#else
#error "TODO: write sub_80E5780 to match asm/nonmatching/sub_80E5780.s, then delete this #error"
#endif
