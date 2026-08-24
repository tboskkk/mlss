#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FC198 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80FC198.s", void sub_80FC198(void));
ASM_FUNC("asm/nonmatching/sub_80FC1F8.s", void sub_80FC1F8(void));