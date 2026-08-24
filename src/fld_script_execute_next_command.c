#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// fld_script_execute_next_command needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/fld_script_execute_next_command.s", void fld_script_execute_next_command());
ASM_FUNC("asm/nonmatching/sub_80EC970.s", void sub_80EC970());