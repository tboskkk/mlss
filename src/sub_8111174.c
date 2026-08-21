#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8111174 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8111174.s\"");
#else
#error "TODO: write sub_8111174 to match asm/nonmatching/sub_8111174.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81111C0.s\"");
#else
#error "TODO: write sub_81111C0 to match asm/nonmatching/sub_81111C0.s, then delete this #error"
#endif
