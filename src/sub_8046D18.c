#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8046D18 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8046D18.s", void sub_8046D18(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8047154.s", void sub_8047154(void *arg0, s32 arg1, s32 arg2));