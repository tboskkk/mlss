#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8145B00 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145B00.s\"");
#else
#error "TODO: write sub_8145B00 to match asm/nonmatching/sub_8145B00.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145B64.s\"");
#else
#error "TODO: write sub_8145B64 to match asm/nonmatching/sub_8145B64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145B88.s\"");
#else
#error "TODO: write sub_8145B88 to match asm/nonmatching/sub_8145B88.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8145C58.s\"");
#else
#error "TODO: write sub_8145C58 to match asm/nonmatching/sub_8145C58.s, then delete this #error"
#endif
