#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8062134 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062134.s\"");
#else
#error "TODO: write sub_8062134 to match asm/nonmatching/sub_8062134.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062150.s\"");
#else
#error "TODO: write sub_8062150 to match asm/nonmatching/sub_8062150.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062188.s\"");
#else
#error "TODO: write sub_8062188 to match asm/nonmatching/sub_8062188.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80621DC.s\"");
#else
#error "TODO: write sub_80621DC to match asm/nonmatching/sub_80621DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80622A0.s\"");
#else
#error "TODO: write sub_80622A0 to match asm/nonmatching/sub_80622A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8062310.s\"");
#else
#error "TODO: write sub_8062310 to match asm/nonmatching/sub_8062310.s, then delete this #error"
#endif
