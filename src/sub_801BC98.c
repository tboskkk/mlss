#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801BC98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BC98.s\"");
#else
#error "TODO: write sub_801BC98 to match asm/nonmatching/sub_801BC98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/time_init.s\"");
#else
#error "TODO: write time_init to match asm/nonmatching/time_init.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BD30.s\"");
#else
#error "TODO: write sub_801BD30 to match asm/nonmatching/sub_801BD30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801BD50.s\"");
#else
#error "TODO: write sub_801BD50 to match asm/nonmatching/sub_801BD50.s, then delete this #error"
#endif
