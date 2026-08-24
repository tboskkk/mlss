#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8057D2C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8057D2C.s", void sub_8057D2C());
ASM_FUNC("asm/nonmatching/sub_8057F60.s", void sub_8057F60(s32 arg0, u8 arg1, u16 arg2, u16 arg3));