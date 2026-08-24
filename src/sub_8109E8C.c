#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8109E8C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8109E8C.s", s16 sub_8109E8C(s32 arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8109F4C.s", s32 sub_8109F4C(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8109FEC.s", void sub_8109FEC(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_810A240.s", void sub_810A240(u32 arg0, s32 arg1, s16 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_810A648.s", void sub_810A648(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_810A78C.s", void sub_810A78C(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_810A84C.s", void sub_810A84C(s32 arg0, s32 arg1, s32 arg2, s32 arg3));