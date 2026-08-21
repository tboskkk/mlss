#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// time_update needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/time_update.s\"");
#else
#error "TODO: write time_update to match asm/nonmatching/time_update.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BBE4.s\"");
#else
#error "TODO: write sub_801BBE4 to match asm/nonmatching/sub_801BBE4.s, then delete this #error"
#endif
