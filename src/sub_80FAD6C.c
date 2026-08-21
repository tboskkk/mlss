#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FAD6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAD6C.s\"");
#else
#error "TODO: write sub_80FAD6C to match asm/nonmatching/sub_80FAD6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FADD4.s\"");
#else
#error "TODO: write sub_80FADD4 to match asm/nonmatching/sub_80FADD4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAE34.s\"");
#else
#error "TODO: write sub_80FAE34 to match asm/nonmatching/sub_80FAE34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FAE64.s\"");
#else
#error "TODO: write sub_80FAE64 to match asm/nonmatching/sub_80FAE64.s, then delete this #error"
#endif
