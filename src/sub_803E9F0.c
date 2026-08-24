#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803E9F0 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_803E9F0(void *arg0) {
    return 1 & (*(u8 *)((s8 *)(arg0) + (0x291)));
}

ASM_FUNC("asm/nonmatching/sub_803EA00.s", void sub_803EA00());
ASM_FUNC("asm/nonmatching/sub_803F4FC.s", void sub_803F4FC(void *arg0));
ASM_FUNC("asm/nonmatching/sub_803F92C.s", void * sub_803F92C(void *arg0, void *arg1, s32 arg2, s32 arg3));
ASM_FUNC("asm/nonmatching/sub_803FBA4.s", void sub_803FBA4());
ASM_FUNC("asm/nonmatching/sub_803FDBC.s", void sub_803FDBC(s32 arg0, s32 arg1, s32 arg2, s8 *arg3, s8 *arg4));