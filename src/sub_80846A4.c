#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80846A4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80846A4.s", void sub_80846A4(void *arg0, u8 arg1, u8 arg2));
ASM_FUNC("asm/nonmatching/sub_80847B0.s", void sub_80847B0());