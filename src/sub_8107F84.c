#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8107F84 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8107F84.s\"");
#else
#error "TODO: write sub_8107F84 to match asm/nonmatching/sub_8107F84.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108084.s\"");
#else
#error "TODO: write sub_8108084 to match asm/nonmatching/sub_8108084.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108180.s\"");
#else
#error "TODO: write sub_8108180 to match asm/nonmatching/sub_8108180.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810835C.s\"");
#else
#error "TODO: write sub_810835C to match asm/nonmatching/sub_810835C.s, then delete this #error"
#endif
