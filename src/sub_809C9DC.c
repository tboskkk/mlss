#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_809C9DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809C9DC.s\"");
#else
#error "TODO: write sub_809C9DC to match asm/nonmatching/sub_809C9DC.s, then delete this #error"
#endif
