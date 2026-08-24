#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E0BF8 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E0BF8.s", void sub_80E0BF8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80E0C88.s", void sub_80E0C88(s16 arg0));
ASM_FUNC("asm/nonmatching/sub_80E0DA4.s", void sub_80E0DA4(void));
ASM_FUNC("asm/nonmatching/sub_80E122C.s", void sub_80E122C(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_80E128C.s", void sub_80E128C(void *arg0));