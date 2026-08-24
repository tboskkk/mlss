#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80582DC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80582DC.s", void sub_80582DC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80584F8.s", void sub_80584F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80587BC.s", void sub_80587BC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8058898.s", void sub_8058898(void *arg0, u16 arg1, s16 arg2, u16 arg3, s32 arg4));