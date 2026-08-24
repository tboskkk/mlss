#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805B074 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805B074.s", void sub_805B074(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805B120.s", void sub_805B120(s32 arg0, s32 arg1, s32 arg2, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_805B154.s", void sub_805B154(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_805B31C.s", void sub_805B31C(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_805B490.s", void sub_805B490(void *arg0, u16 arg1));