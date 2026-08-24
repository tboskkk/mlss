#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80475A0 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80475A0.s", void sub_80475A0(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_804761C.s", void sub_804761C(void *arg0, s8 arg1, s32 arg3));