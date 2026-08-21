#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A2F74 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2F74.s\"");
#else
#error "TODO: write sub_80A2F74 to match asm/nonmatching/sub_80A2F74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A3048.s\"");
#else
#error "TODO: write sub_80A3048 to match asm/nonmatching/sub_80A3048.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A32AC.s\"");
#else
#error "TODO: write sub_80A32AC to match asm/nonmatching/sub_80A32AC.s, then delete this #error"
#endif
