#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80262CC needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80262CC.s", void sub_80262CC(void *arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, void *arg5, u8 arg7));
ASM_FUNC("asm/nonmatching/sub_802641C.s", void sub_802641C(void *arg0, s32 arg2, s32 arg3, s32 arg4));
ASM_FUNC("asm/nonmatching/sub_80264F4.s", void sub_80264F4(void *arg0, u16 arg1));
ASM_FUNC("asm/nonmatching/sub_80265EC.s", void sub_80265EC(void *arg0));
ASM_FUNC("asm/nonmatching/make_field_objects_80267C0.s", void make_field_objects_80267C0());
ASM_FUNC("asm/nonmatching/sub_8026C78.s", void sub_8026C78(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8026E94.s", void sub_8026E94(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8027030.s", void sub_8027030(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4, s32 arg5));