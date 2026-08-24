#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199624 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8199624.s", u16 sub_8199624(struct struc_15*arg0));
ASM_FUNC("asm/nonmatching/sub_8199888.s", void sub_8199888(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8199A28.s", s32 sub_8199A28(s32 arg0, s32 **arg1, u8 *arg2, s32 arg3));