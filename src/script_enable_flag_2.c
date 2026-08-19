#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_enable_flag_2 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_enable_flag_2.s\"");
#else
#error "TODO: write script_enable_flag_2 to match asm/nonmatching/script_enable_flag_2.s, then delete this #error"
#endif
