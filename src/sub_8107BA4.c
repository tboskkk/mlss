#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107BA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107BA4.s\"");
#else
#error "TODO: write sub_8107BA4 to match asm/nonmatching/sub_8107BA4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107D58.s\"");
#else
#error "TODO: write sub_8107D58 to match asm/nonmatching/sub_8107D58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107E6C.s\"");
#else
#error "TODO: write sub_8107E6C to match asm/nonmatching/sub_8107E6C.s, then delete this #error"
#endif
