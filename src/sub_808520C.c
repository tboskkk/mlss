#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808520C needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_808520C.s", void sub_808520C(s32 arg0, u8 arg1, u16 arg2, u16 arg3, s32 arg4, s32 arg5));
ASM_FUNC("asm/nonmatching/sub_8085260.s", void sub_8085260(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_8085328.s", void sub_8085328(void *arg0));