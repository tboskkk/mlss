#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805D0DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D0DC.s\"");
#else
#error "TODO: write sub_805D0DC to match asm/nonmatching/sub_805D0DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D288.s\"");
#else
#error "TODO: write sub_805D288 to match asm/nonmatching/sub_805D288.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D34C.s\"");
#else
#error "TODO: write sub_805D34C to match asm/nonmatching/sub_805D34C.s, then delete this #error"
#endif
