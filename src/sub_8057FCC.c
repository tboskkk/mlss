#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8057FCC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8057FCC.s\"");
#else
#error "TODO: write sub_8057FCC to match asm/nonmatching/sub_8057FCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8058148.s\"");
#else
#error "TODO: write sub_8058148 to match asm/nonmatching/sub_8058148.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8058278.s\"");
#else
#error "TODO: write sub_8058278 to match asm/nonmatching/sub_8058278.s, then delete this #error"
#endif
