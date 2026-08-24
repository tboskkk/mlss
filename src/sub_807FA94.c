#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FA94 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_807FA94.s", s32 * sub_807FA94(s32 *arg0));
ASM_FUNC("asm/nonmatching/sub_807FABC.s", void * sub_807FABC(s32 arg0, s32 arg1, s32 arg2));
ASM_FUNC("asm/nonmatching/sub_807FB04.s", s32 * sub_807FB04(void));