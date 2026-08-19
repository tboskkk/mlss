#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FF98 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FF98.s\"");
#else
#error "TODO: write sub_807FF98 to match asm/nonmatching/sub_807FF98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FFB8.s\"");
#else
#error "TODO: write sub_807FFB8 to match asm/nonmatching/sub_807FFB8.s, then delete this #error"
#endif
