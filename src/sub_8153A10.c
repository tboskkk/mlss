#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8153A10 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153A10.s\"");
#else
#error "TODO: write sub_8153A10 to match asm/nonmatching/sub_8153A10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153CD0.s\"");
#else
#error "TODO: write sub_8153CD0 to match asm/nonmatching/sub_8153CD0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153F5C.s\"");
#else
#error "TODO: write sub_8153F5C to match asm/nonmatching/sub_8153F5C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8154030.s\"");
#else
#error "TODO: write sub_8154030 to match asm/nonmatching/sub_8154030.s, then delete this #error"
#endif
