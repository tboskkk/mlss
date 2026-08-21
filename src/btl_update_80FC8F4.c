#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_update_80FC8F4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/btl_update_80FC8F4.s\"");
#else
#error "TODO: write btl_update_80FC8F4 to match asm/nonmatching/btl_update_80FC8F4.s, then delete this #error"
#endif
