#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083860 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083860.s\"");
#else
#error "TODO: write sub_8083860 to match asm/nonmatching/sub_8083860.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083934.s\"");
#else
#error "TODO: write sub_8083934 to match asm/nonmatching/sub_8083934.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083A8C.s\"");
#else
#error "TODO: write sub_8083A8C to match asm/nonmatching/sub_8083A8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083C74.s\"");
#else
#error "TODO: write sub_8083C74 to match asm/nonmatching/sub_8083C74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083E1C.s\"");
#else
#error "TODO: write sub_8083E1C to match asm/nonmatching/sub_8083E1C.s, then delete this #error"
#endif
