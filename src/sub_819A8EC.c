#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A8EC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_819A8EC.s", void * sub_819A8EC(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_819A928.s", void sub_819A928(void));