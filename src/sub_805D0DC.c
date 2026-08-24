#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805D0DC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805D0DC.s", void sub_805D0DC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805D288.s", void sub_805D288(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805D34C.s", void sub_805D34C(void *arg0, u16 arg1, s16 arg2, u16 arg3, s32 arg4));