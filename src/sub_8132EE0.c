#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8132EE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132EE0.s\"");
#else
#error "TODO: write sub_8132EE0 to match asm/nonmatching/sub_8132EE0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132F10.s\"");
#else
#error "TODO: write sub_8132F10 to match asm/nonmatching/sub_8132F10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8132F9C.s\"");
#else
#error "TODO: write sub_8132F9C to match asm/nonmatching/sub_8132F9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8133100.s\"");
#else
#error "TODO: write sub_8133100 to match asm/nonmatching/sub_8133100.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81331AC.s\"");
#else
#error "TODO: write sub_81331AC to match asm/nonmatching/sub_81331AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813321C.s\"");
#else
#error "TODO: write sub_813321C to match asm/nonmatching/sub_813321C.s, then delete this #error"
#endif
