#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163650 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8163650.s", void sub_8163650(s32 arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_8163674.s", void sub_8163674(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_81636C4.s", void sub_81636C4(void *arg0, s32 arg1));