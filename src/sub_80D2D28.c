#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80D2D28 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D28.s\"");
#else
#error "TODO: write sub_80D2D28 to match asm/nonmatching/sub_80D2D28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D34.s\"");
#else
#error "TODO: write sub_80D2D34 to match asm/nonmatching/sub_80D2D34.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D4C.s\"");
#else
#error "TODO: write sub_80D2D4C to match asm/nonmatching/sub_80D2D4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2D6C.s\"");
#else
#error "TODO: write sub_80D2D6C to match asm/nonmatching/sub_80D2D6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80D2DA4.s\"");
#else
#error "TODO: write sub_80D2DA4 to match asm/nonmatching/sub_80D2DA4.s, then delete this #error"
#endif
