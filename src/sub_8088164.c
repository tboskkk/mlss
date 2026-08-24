#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8088164 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8088164.s", void sub_8088164(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8088274.s", void sub_8088274(void *arg0, s32 arg1, s32 arg2));