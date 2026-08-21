#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E1B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E1B8.s\"");
#else
#error "TODO: write sub_806E1B8 to match asm/nonmatching/sub_806E1B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E388.s\"");
#else
#error "TODO: write sub_806E388 to match asm/nonmatching/sub_806E388.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E414.s\"");
#else
#error "TODO: write sub_806E414 to match asm/nonmatching/sub_806E414.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E5D8.s\"");
#else
#error "TODO: write sub_806E5D8 to match asm/nonmatching/sub_806E5D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E5F4.s\"");
#else
#error "TODO: write sub_806E5F4 to match asm/nonmatching/sub_806E5F4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E624.s\"");
#else
#error "TODO: write sub_806E624 to match asm/nonmatching/sub_806E624.s, then delete this #error"
#endif
