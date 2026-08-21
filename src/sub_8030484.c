#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8030484 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8030484.s\"");
#else
#error "TODO: write sub_8030484 to match asm/nonmatching/sub_8030484.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80306A0.s\"");
#else
#error "TODO: write sub_80306A0 to match asm/nonmatching/sub_80306A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031234.s\"");
#else
#error "TODO: write sub_8031234 to match asm/nonmatching/sub_8031234.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80313C0.s\"");
#else
#error "TODO: write sub_80313C0 to match asm/nonmatching/sub_80313C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031518.s\"");
#else
#error "TODO: write sub_8031518 to match asm/nonmatching/sub_8031518.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8031650.s\"");
#else
#error "TODO: write sub_8031650 to match asm/nonmatching/sub_8031650.s, then delete this #error"
#endif
