#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// fld_script_execute_next_command needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/fld_script_execute_next_command.s\"");
#else
#error "TODO: write fld_script_execute_next_command to match asm/nonmatching/fld_script_execute_next_command.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EC970.s\"");
#else
#error "TODO: write sub_80EC970 to match asm/nonmatching/sub_80EC970.s, then delete this #error"
#endif
