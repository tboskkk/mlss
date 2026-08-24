#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805D3F8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805D3F8.s", void sub_805D3F8(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_805D5C0.s", void sub_805D5C0(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_805D634.s", void sub_805D634(void *arg0));