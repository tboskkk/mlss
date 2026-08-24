#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8165250 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_8165250.s", void sub_8165250(void *arg0, s32 arg1, u16 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_8165274.s", void sub_8165274(void *arg0, u16 arg1, u16 arg2, u16 arg3));
ASM_FUNC("asm/nonmatching/sub_8165350.s", void sub_8165350(void *arg0, s32 arg1, u16 arg2));
void sub_8165404(void *arg0) {
    s32 sp0;

    sp0 = 0;
    CpuFastSet(&sp0, (*(void **)((s8 *)(arg0) + (4))), 0x01000800U);
}
