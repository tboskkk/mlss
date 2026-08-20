#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// script_cmd_wait_for_user_input needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_wait_for_user_input.s\"");
#else
#error "TODO: write script_cmd_wait_for_user_input to match asm/nonmatching/script_cmd_wait_for_user_input.s, then delete this #error"
#endif
