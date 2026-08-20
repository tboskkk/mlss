#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8108C38 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108C38.s\"");
#else
#error "TODO: write sub_8108C38 to match asm/nonmatching/sub_8108C38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108C64.s\"");
#else
#error "TODO: write sub_8108C64 to match asm/nonmatching/sub_8108C64.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8108C90.s\"");
#else
#error "TODO: write sub_8108C90 to match asm/nonmatching/sub_8108C90.s, then delete this #error"
#endif
