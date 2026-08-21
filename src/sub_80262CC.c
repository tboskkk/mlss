#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80262CC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80262CC.s\"");
#else
#error "TODO: write sub_80262CC to match asm/nonmatching/sub_80262CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802641C.s\"");
#else
#error "TODO: write sub_802641C to match asm/nonmatching/sub_802641C.s, then delete this #error"
#endif
