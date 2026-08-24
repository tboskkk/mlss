#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029888 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8029888.s", void sub_8029888(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_80298B0.s", void sub_80298B0(void));