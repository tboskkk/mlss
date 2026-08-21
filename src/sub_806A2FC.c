#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806A2FC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A2FC.s\"");
#else
#error "TODO: write sub_806A2FC to match asm/nonmatching/sub_806A2FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A348.s\"");
#else
#error "TODO: write sub_806A348 to match asm/nonmatching/sub_806A348.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A3C0.s\"");
#else
#error "TODO: write sub_806A3C0 to match asm/nonmatching/sub_806A3C0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A3F8.s\"");
#else
#error "TODO: write sub_806A3F8 to match asm/nonmatching/sub_806A3F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A47C.s\"");
#else
#error "TODO: write sub_806A47C to match asm/nonmatching/sub_806A47C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806A510.s\"");
#else
#error "TODO: write sub_806A510 to match asm/nonmatching/sub_806A510.s, then delete this #error"
#endif
