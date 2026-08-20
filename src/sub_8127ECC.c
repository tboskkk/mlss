#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8127ECC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8127ECC.s\"");
#else
#error "TODO: write sub_8127ECC to match asm/nonmatching/sub_8127ECC.s, then delete this #error"
#endif
