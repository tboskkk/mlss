#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8084338 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084338.s\"");
#else
#error "TODO: write sub_8084338 to match asm/nonmatching/sub_8084338.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80843C0.s\"");
#else
#error "TODO: write sub_80843C0 to match asm/nonmatching/sub_80843C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80844C4.s\"");
#else
#error "TODO: write sub_80844C4 to match asm/nonmatching/sub_80844C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084578.s\"");
#else
#error "TODO: write sub_8084578 to match asm/nonmatching/sub_8084578.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084614.s\"");
#else
#error "TODO: write sub_8084614 to match asm/nonmatching/sub_8084614.s, then delete this #error"
#endif
