#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134560 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134560.s\"");
#else
#error "TODO: write sub_8134560 to match asm/nonmatching/sub_8134560.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81345E8.s\"");
#else
#error "TODO: write sub_81345E8 to match asm/nonmatching/sub_81345E8.s, then delete this #error"
#endif
