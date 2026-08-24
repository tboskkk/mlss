#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8116654 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8116654.s", void sub_8116654(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_8116680.s", void sub_8116680(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_81166AC.s", void sub_81166AC(void *arg0, s32 arg1));