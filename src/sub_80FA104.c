#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA104 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA104.s\"");
#else
#error "TODO: write sub_80FA104 to match asm/nonmatching/sub_80FA104.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA180.s\"");
#else
#error "TODO: write sub_80FA180 to match asm/nonmatching/sub_80FA180.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA220.s\"");
#else
#error "TODO: write sub_80FA220 to match asm/nonmatching/sub_80FA220.s, then delete this #error"
#endif
