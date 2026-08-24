#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805A1A8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_805A1A8.s", void sub_805A1A8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805A230.s", void * sub_805A230(void *arg0, u8 arg1, u16 arg3, s32 arg4, s32 arg5, s32 arg6));
ASM_FUNC("asm/nonmatching/sub_805A438.s", void sub_805A438(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805A618.s", void sub_805A618(void *arg0));
ASM_FUNC("asm/nonmatching/sub_805A6EC.s", void sub_805A6EC(void *arg0));