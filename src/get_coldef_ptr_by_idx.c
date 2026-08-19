#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_coldef_ptr_by_idx needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_coldef_ptr_by_idx.s\"");
#else
#error "TODO: write get_coldef_ptr_by_idx to match asm/nonmatching/get_coldef_ptr_by_idx.s, then delete this #error"
#endif
