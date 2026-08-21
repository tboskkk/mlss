#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810AC60 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810AC60.s\"");
#else
#error "TODO: write sub_810AC60 to match asm/nonmatching/sub_810AC60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810AD9C.s\"");
#else
#error "TODO: write sub_810AD9C to match asm/nonmatching/sub_810AD9C.s, then delete this #error"
#endif
