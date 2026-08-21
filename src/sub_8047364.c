#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047364 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047364.s\"");
#else
#error "TODO: write sub_8047364 to match asm/nonmatching/sub_8047364.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80473DC.s\"");
#else
#error "TODO: write sub_80473DC to match asm/nonmatching/sub_80473DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80474D0.s\"");
#else
#error "TODO: write sub_80474D0 to match asm/nonmatching/sub_80474D0.s, then delete this #error"
#endif
