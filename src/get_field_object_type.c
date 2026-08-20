#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// get_field_object_type needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/get_field_object_type.s\"");
#else
#error "TODO: write get_field_object_type to match asm/nonmatching/get_field_object_type.s, then delete this #error"
#endif
