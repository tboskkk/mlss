#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8058944 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8058944.s\"");
#else
#error "TODO: write sub_8058944 to match asm/nonmatching/sub_8058944.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8058ED0.s\"");
#else
#error "TODO: write sub_8058ED0 to match asm/nonmatching/sub_8058ED0.s, then delete this #error"
#endif
