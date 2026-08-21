#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809D9F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809D9F4.s\"");
#else
#error "TODO: write sub_809D9F4 to match asm/nonmatching/sub_809D9F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809DAD8.s\"");
#else
#error "TODO: write sub_809DAD8 to match asm/nonmatching/sub_809DAD8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809DB6C.s\"");
#else
#error "TODO: write sub_809DB6C to match asm/nonmatching/sub_809DB6C.s, then delete this #error"
#endif
