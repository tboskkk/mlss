#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801EEBC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801EEBC.s\"");
#else
#error "TODO: write sub_801EEBC to match asm/nonmatching/sub_801EEBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801F370.s\"");
#else
#error "TODO: write sub_801F370 to match asm/nonmatching/sub_801F370.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801F7D0.s\"");
#else
#error "TODO: write sub_801F7D0 to match asm/nonmatching/sub_801F7D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801FBAC.s\"");
#else
#error "TODO: write sub_801FBAC to match asm/nonmatching/sub_801FBAC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801FFA8.s\"");
#else
#error "TODO: write sub_801FFA8 to match asm/nonmatching/sub_801FFA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802039C.s\"");
#else
#error "TODO: write sub_802039C to match asm/nonmatching/sub_802039C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802083C.s\"");
#else
#error "TODO: write sub_802083C to match asm/nonmatching/sub_802083C.s, then delete this #error"
#endif
