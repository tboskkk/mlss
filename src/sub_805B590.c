#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805B590 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805B590.s", void sub_805B590(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_805B618.s", void sub_805B618(void *arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_805B6C4.s", void sub_805B6C4(void *arg0, u16 arg1, u16 *arg2));
ASM_FUNC("asm/nonmatching/sub_805B7F0.s", void sub_805B7F0(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805B8BC.s", void sub_805B8BC(void *arg0));