#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806E884 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E884.s\"");
#else
#error "TODO: write sub_806E884 to match asm/nonmatching/sub_806E884.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E8E8.s\"");
#else
#error "TODO: write sub_806E8E8 to match asm/nonmatching/sub_806E8E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E91C.s\"");
#else
#error "TODO: write sub_806E91C to match asm/nonmatching/sub_806E91C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E98C.s\"");
#else
#error "TODO: write sub_806E98C to match asm/nonmatching/sub_806E98C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E9CC.s\"");
#else
#error "TODO: write sub_806E9CC to match asm/nonmatching/sub_806E9CC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EA10.s\"");
#else
#error "TODO: write sub_806EA10 to match asm/nonmatching/sub_806EA10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EA54.s\"");
#else
#error "TODO: write sub_806EA54 to match asm/nonmatching/sub_806EA54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EAA8.s\"");
#else
#error "TODO: write sub_806EAA8 to match asm/nonmatching/sub_806EAA8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806EADC.s\"");
#else
#error "TODO: write sub_806EADC to match asm/nonmatching/sub_806EADC.s, then delete this #error"
#endif
