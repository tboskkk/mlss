#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_80FC438 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/btl_80FC438.s", void btl_80FC438(void));
ASM_FUNC("asm/nonmatching/btl_80FC5C0.s", void btl_80FC5C0(void));
ASM_FUNC("asm/nonmatching/btl_80FC8A4.s", void btl_80FC8A4(void));