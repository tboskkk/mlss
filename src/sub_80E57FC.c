#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E57FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E57FC.s\"");
#else
#error "TODO: write sub_80E57FC to match asm/nonmatching/sub_80E57FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5810.s\"");
#else
#error "TODO: write sub_80E5810 to match asm/nonmatching/sub_80E5810.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E588C.s\"");
#else
#error "TODO: write sub_80E588C to match asm/nonmatching/sub_80E588C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5968.s\"");
#else
#error "TODO: write sub_80E5968 to match asm/nonmatching/sub_80E5968.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5AA0.s\"");
#else
#error "TODO: write sub_80E5AA0 to match asm/nonmatching/sub_80E5AA0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E5BCC.s\"");
#else
#error "TODO: write sub_80E5BCC to match asm/nonmatching/sub_80E5BCC.s, then delete this #error"
#endif
