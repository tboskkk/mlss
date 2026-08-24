#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8199F24 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_8199F24(u32 param_1) {
    *(u32*)0x03001074 = param_1;
    return param_1;
}

ASM_FUNC("asm/nonmatching/sub_8199F30.s", s32 sub_8199F30(void));
ASM_FUNC("asm/nonmatching/sub_819A138.s", void sub_819A138(void *arg0, u32 arg1));
ASM_FUNC("asm/nonmatching/sub_819A204.s", void sub_819A204(s32 arg0, s32 arg1, s32 arg2));