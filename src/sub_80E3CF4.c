#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E3CF4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3CF4.s\"");
#else
#error "TODO: write sub_80E3CF4 to match asm/nonmatching/sub_80E3CF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3D1C.s\"");
#else
#error "TODO: write sub_80E3D1C to match asm/nonmatching/sub_80E3D1C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E3D70.s\"");
#else
#error "TODO: write sub_80E3D70 to match asm/nonmatching/sub_80E3D70.s, then delete this #error"
#endif
