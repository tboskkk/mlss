#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199E48 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8199E48.s", void sub_8199E48(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 *arg4, s32 arg5, u32 arg6, s32 arg7));