#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816BEC4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816BEC4.s\"");
#else
#error "TODO: write sub_816BEC4 to match asm/nonmatching/sub_816BEC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C21C.s\"");
#else
#error "TODO: write sub_816C21C to match asm/nonmatching/sub_816C21C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C74C.s\"");
#else
#error "TODO: write sub_816C74C to match asm/nonmatching/sub_816C74C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816C834.s\"");
#else
#error "TODO: write sub_816C834 to match asm/nonmatching/sub_816C834.s, then delete this #error"
#endif
