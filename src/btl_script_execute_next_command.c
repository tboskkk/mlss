#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_script_execute_next_command needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/btl_script_execute_next_command.s", void btl_script_execute_next_command());
ASM_FUNC("asm/nonmatching/sub_80F36F0.s", void sub_80F36F0());