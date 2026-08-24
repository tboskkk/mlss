#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8116E84 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8116E84.s", void sub_8116E84());
ASM_FUNC("asm/nonmatching/sub_8117270.s", s32 sub_8117270(u8 arg0, u8 arg1, u8 arg2));