#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80504BC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80504BC.s\"");
#else
#error "TODO: write sub_80504BC to match asm/nonmatching/sub_80504BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050518.s\"");
#else
#error "TODO: write sub_8050518 to match asm/nonmatching/sub_8050518.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050554.s\"");
#else
#error "TODO: write sub_8050554 to match asm/nonmatching/sub_8050554.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8050584.s\"");
#else
#error "TODO: write sub_8050584 to match asm/nonmatching/sub_8050584.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505C4.s\"");
#else
#error "TODO: write sub_80505C4 to match asm/nonmatching/sub_80505C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80505F4.s\"");
#else
#error "TODO: write sub_80505F4 to match asm/nonmatching/sub_80505F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805062C.s\"");
#else
#error "TODO: write sub_805062C to match asm/nonmatching/sub_805062C.s, then delete this #error"
#endif
