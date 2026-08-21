#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047804 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047804.s\"");
#else
#error "TODO: write sub_8047804 to match asm/nonmatching/sub_8047804.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047858.s\"");
#else
#error "TODO: write sub_8047858 to match asm/nonmatching/sub_8047858.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80478AC.s\"");
#else
#error "TODO: write sub_80478AC to match asm/nonmatching/sub_80478AC.s, then delete this #error"
#endif
