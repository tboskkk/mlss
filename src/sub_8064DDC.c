#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064DDC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064DDC.s\"");
#else
#error "TODO: write sub_8064DDC to match asm/nonmatching/sub_8064DDC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064E08.s\"");
#else
#error "TODO: write sub_8064E08 to match asm/nonmatching/sub_8064E08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064E30.s\"");
#else
#error "TODO: write sub_8064E30 to match asm/nonmatching/sub_8064E30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064EDC.s\"");
#else
#error "TODO: write sub_8064EDC to match asm/nonmatching/sub_8064EDC.s, then delete this #error"
#endif
