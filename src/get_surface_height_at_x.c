#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_surface_height_at_x needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_surface_height_at_x.s\"");
#else
#error "TODO: write get_surface_height_at_x to match asm/nonmatching/get_surface_height_at_x.s, then delete this #error"
#endif
