#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EE594 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE594.s\"");
#else
#error "TODO: write sub_80EE594 to match asm/nonmatching/sub_80EE594.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE624.s\"");
#else
#error "TODO: write sub_80EE624 to match asm/nonmatching/sub_80EE624.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EE73C.s\"");
#else
#error "TODO: write sub_80EE73C to match asm/nonmatching/sub_80EE73C.s, then delete this #error"
#endif
