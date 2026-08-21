#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81126BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81126BC.s\"");
#else
#error "TODO: write sub_81126BC to match asm/nonmatching/sub_81126BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81126E4.s\"");
#else
#error "TODO: write sub_81126E4 to match asm/nonmatching/sub_81126E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8112740.s\"");
#else
#error "TODO: write sub_8112740 to match asm/nonmatching/sub_8112740.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81127B8.s\"");
#else
#error "TODO: write sub_81127B8 to match asm/nonmatching/sub_81127B8.s, then delete this #error"
#endif
