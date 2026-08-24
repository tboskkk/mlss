#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805D914 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805D914.s", s32 sub_805D914(s32 arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_805D93C.s", void sub_805D93C(void *arg0));