#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802A608 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802A608.s\"");
#else
#error "TODO: write sub_802A608 to match asm/nonmatching/sub_802A608.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802A740.s\"");
#else
#error "TODO: write sub_802A740 to match asm/nonmatching/sub_802A740.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802B654.s\"");
#else
#error "TODO: write sub_802B654 to match asm/nonmatching/sub_802B654.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802B804.s\"");
#else
#error "TODO: write sub_802B804 to match asm/nonmatching/sub_802B804.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802BD2C.s\"");
#else
#error "TODO: write sub_802BD2C to match asm/nonmatching/sub_802BD2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802BFB0.s\"");
#else
#error "TODO: write sub_802BFB0 to match asm/nonmatching/sub_802BFB0.s, then delete this #error"
#endif
