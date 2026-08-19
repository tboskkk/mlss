#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8150E2C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E2C.s\"");
#else
#error "TODO: write sub_8150E2C to match asm/nonmatching/sub_8150E2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E38.s\"");
#else
#error "TODO: write sub_8150E38 to match asm/nonmatching/sub_8150E38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8150E44.s\"");
#else
#error "TODO: write sub_8150E44 to match asm/nonmatching/sub_8150E44.s, then delete this #error"
#endif
