#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EE028 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE028.s\"");
#else
#error "TODO: write sub_80EE028 to match asm/nonmatching/sub_80EE028.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE140.s\"");
#else
#error "TODO: write sub_80EE140 to match asm/nonmatching/sub_80EE140.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE1A4.s\"");
#else
#error "TODO: write sub_80EE1A4 to match asm/nonmatching/sub_80EE1A4.s, then delete this #error"
#endif
