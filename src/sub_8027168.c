#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8027168 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027168.s\"");
#else
#error "TODO: write sub_8027168 to match asm/nonmatching/sub_8027168.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8027378.s\"");
#else
#error "TODO: write sub_8027378 to match asm/nonmatching/sub_8027378.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80273E4.s\"");
#else
#error "TODO: write sub_80273E4 to match asm/nonmatching/sub_80273E4.s, then delete this #error"
#endif
