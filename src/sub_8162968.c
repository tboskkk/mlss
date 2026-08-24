#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8162968 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8162968.s", s32 * sub_8162968(s32 *arg0));
ASM_FUNC("asm/nonmatching/sub_8162A2C.s", void sub_8162A2C(void *arg0, s32 arg1));
ASM_FUNC("asm/nonmatching/sub_8162AD4.s", s32 sub_8162AD4(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8162C00.s", void sub_8162C00(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_8162CC0.s", void ** sub_8162CC0(void **arg0));
ASM_FUNC("asm/nonmatching/sub_8162DFC.s", void sub_8162DFC(void *arg0, u8 arg1));
ASM_FUNC("asm/nonmatching/sub_8162F20.s", s32 sub_8162F20(void *arg0, s32 arg3));