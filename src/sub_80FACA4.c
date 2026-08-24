#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FACA4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80FACA4.s", s32 sub_80FACA4(void *arg0, void *arg2));
ASM_FUNC("asm/nonmatching/sub_80FACCC.s", s32 sub_80FACCC(void *arg0, void *arg1, void *arg2, u8 arg3));