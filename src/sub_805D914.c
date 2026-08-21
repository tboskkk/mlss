#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805D914 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D914.s\"");
#else
#error "TODO: write sub_805D914 to match asm/nonmatching/sub_805D914.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805D93C.s\"");
#else
#error "TODO: write sub_805D93C to match asm/nonmatching/sub_805D93C.s, then delete this #error"
#endif
