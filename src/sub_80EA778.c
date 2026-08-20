#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EA778 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA778.s\"");
#else
#error "TODO: write sub_80EA778 to match asm/nonmatching/sub_80EA778.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_test_condition.s\"");
#else
#error "TODO: write script_test_condition to match asm/nonmatching/script_test_condition.s, then delete this #error"
#endif
