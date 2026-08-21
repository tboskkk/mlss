#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8052EFC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8052EFC.s\"");
#else
#error "TODO: write sub_8052EFC to match asm/nonmatching/sub_8052EFC.s, then delete this #error"
#endif
