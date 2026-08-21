#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8113F30 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113F30.s\"");
#else
#error "TODO: write sub_8113F30 to match asm/nonmatching/sub_8113F30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8113FB4.s\"");
#else
#error "TODO: write sub_8113FB4 to match asm/nonmatching/sub_8113FB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_811403C.s\"");
#else
#error "TODO: write sub_811403C to match asm/nonmatching/sub_811403C.s, then delete this #error"
#endif
