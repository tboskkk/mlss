#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8160C18 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8160C18.s", u32 sub_8160C18(s32 arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_8160C64.s", void sub_8160C64(void *arg0));