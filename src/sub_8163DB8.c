#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163DB8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8163DB8.s", void sub_8163DB8(s32 *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_8163E0C.s", s32 sub_8163E0C(s32 arg0, s32 arg1, s32 arg2, s32 arg3));