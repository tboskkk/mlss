#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// tld_init_8127A94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/tld_init_8127A94.s\"");
#else
#error "TODO: write tld_init_8127A94 to match asm/nonmatching/tld_init_8127A94.s, then delete this #error"
#endif
