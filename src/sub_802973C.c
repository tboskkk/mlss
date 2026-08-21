#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802973C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802973C.s\"");
#else
#error "TODO: write sub_802973C to match asm/nonmatching/sub_802973C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029788.s\"");
#else
#error "TODO: write sub_8029788 to match asm/nonmatching/sub_8029788.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80297B8.s\"");
#else
#error "TODO: write sub_80297B8 to match asm/nonmatching/sub_80297B8.s, then delete this #error"
#endif
