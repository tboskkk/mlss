#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80665AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80665AC.s\"");
#else
#error "TODO: write sub_80665AC to match asm/nonmatching/sub_80665AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066604.s\"");
#else
#error "TODO: write sub_8066604 to match asm/nonmatching/sub_8066604.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806670C.s\"");
#else
#error "TODO: write sub_806670C to match asm/nonmatching/sub_806670C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8066780.s\"");
#else
#error "TODO: write sub_8066780 to match asm/nonmatching/sub_8066780.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80667C4.s\"");
#else
#error "TODO: write sub_80667C4 to match asm/nonmatching/sub_80667C4.s, then delete this #error"
#endif
