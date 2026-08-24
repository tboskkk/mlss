#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805CCD8 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_805CCD8(u32 param_1) {
    *(u8*)(param_1 + 0xA) = 0;
    return param_1;
}

ASM_FUNC("asm/nonmatching/sub_805CCE0.s", void * sub_805CCE0(void *arg0, u8 arg1, u16 arg3, s32 arg4, s32 arg5, s32 arg6));
ASM_FUNC("asm/nonmatching/sub_805CE78.s", void sub_805CE78());
ASM_FUNC("asm/nonmatching/sub_805D038.s", void sub_805D038(void));