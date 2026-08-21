#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FA94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FA94.s\"");
#else
#error "TODO: write sub_807FA94 to match asm/nonmatching/sub_807FA94.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FABC.s\"");
#else
#error "TODO: write sub_807FABC to match asm/nonmatching/sub_807FABC.s, then delete this #error"
#endif
