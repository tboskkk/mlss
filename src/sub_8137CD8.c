#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8137CD8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8137CD8.s", void sub_8137CD8(void *arg0, u8 arg1, s32 arg2, s32 arg3));