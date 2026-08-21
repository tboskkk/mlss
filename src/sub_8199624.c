#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199624 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199624.s\"");
#else
#error "TODO: write sub_8199624 to match asm/nonmatching/sub_8199624.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199888.s\"");
#else
#error "TODO: write sub_8199888 to match asm/nonmatching/sub_8199888.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8199A28.s\"");
#else
#error "TODO: write sub_8199A28 to match asm/nonmatching/sub_8199A28.s, then delete this #error"
#endif
