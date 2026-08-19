#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DA1EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA1EC.s\"");
#else
#error "TODO: write sub_80DA1EC to match asm/nonmatching/sub_80DA1EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80DA208.s\"");
#else
#error "TODO: write sub_80DA208 to match asm/nonmatching/sub_80DA208.s, then delete this #error"
#endif
