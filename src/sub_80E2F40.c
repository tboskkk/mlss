#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E2F40 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E2F40.s", void sub_80E2F40(void));
ASM_FUNC("asm/nonmatching/sub_80E3034.s", void * sub_80E3034(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_80E30B0.s", s32 sub_80E30B0(void));