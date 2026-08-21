#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81393D8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81393D8.s\"");
#else
#error "TODO: write sub_81393D8 to match asm/nonmatching/sub_81393D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139420.s\"");
#else
#error "TODO: write sub_8139420 to match asm/nonmatching/sub_8139420.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813946C.s\"");
#else
#error "TODO: write sub_813946C to match asm/nonmatching/sub_813946C.s, then delete this #error"
#endif
