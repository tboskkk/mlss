#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090608 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090608.s\"");
#else
#error "TODO: write sub_8090608 to match asm/nonmatching/sub_8090608.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8090660.s\"");
#else
#error "TODO: write sub_8090660 to match asm/nonmatching/sub_8090660.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80906B8.s\"");
#else
#error "TODO: write sub_80906B8 to match asm/nonmatching/sub_80906B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80906E4.s\"");
#else
#error "TODO: write sub_80906E4 to match asm/nonmatching/sub_80906E4.s, then delete this #error"
#endif
