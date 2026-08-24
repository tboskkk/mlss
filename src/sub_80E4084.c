#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E4084 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E4084.s", void sub_80E4084(void *arg0, s32 arg1, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_80E4BE4.s", s32 sub_80E4BE4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80E4D54.s", s32 sub_80E4D54(void *arg0, s8 arg1));