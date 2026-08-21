#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801E3EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801E3EC.s\"");
#else
#error "TODO: write sub_801E3EC to match asm/nonmatching/sub_801E3EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801E68C.s\"");
#else
#error "TODO: write sub_801E68C to match asm/nonmatching/sub_801E68C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801E80C.s\"");
#else
#error "TODO: write sub_801E80C to match asm/nonmatching/sub_801E80C.s, then delete this #error"
#endif
