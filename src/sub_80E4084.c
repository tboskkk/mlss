#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E4084 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E4084.s\"");
#else
#error "TODO: write sub_80E4084 to match asm/nonmatching/sub_80E4084.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E4BE4.s\"");
#else
#error "TODO: write sub_80E4BE4 to match asm/nonmatching/sub_80E4BE4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E4D54.s\"");
#else
#error "TODO: write sub_80E4D54 to match asm/nonmatching/sub_80E4D54.s, then delete this #error"
#endif
