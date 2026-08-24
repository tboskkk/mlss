#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816359C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_816359C.s", s32 sub_816359C(s32 arg0));

ASM_FUNC("asm/nonmatching/sub_8163608.s", void sub_8163608(s32 arg0));
