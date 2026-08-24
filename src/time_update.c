#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// time_update needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/time_update.s", void time_update(void *arg0));
ASM_FUNC("asm/nonmatching/sub_801BBE4.s", void sub_801BBE4(void *arg0, s8 arg1, s8 arg2, u8 arg3));