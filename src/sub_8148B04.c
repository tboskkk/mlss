#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8148B04 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148B04.s\"");
#else
#error "TODO: write sub_8148B04 to match asm/nonmatching/sub_8148B04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148B60.s\"");
#else
#error "TODO: write sub_8148B60 to match asm/nonmatching/sub_8148B60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148BBC.s\"");
#else
#error "TODO: write sub_8148BBC to match asm/nonmatching/sub_8148BBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8148C20.s\"");
#else
#error "TODO: write sub_8148C20 to match asm/nonmatching/sub_8148C20.s, then delete this #error"
#endif
