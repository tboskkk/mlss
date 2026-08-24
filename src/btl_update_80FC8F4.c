#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// btl_update_80FC8F4 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/btl_update_80FC8F4.s", void btl_update_80FC8F4(s32 arg0));
ASM_FUNC("asm/nonmatching/sub_80FC91C.s", void sub_80FC91C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FC9A4.s", void sub_80FC9A4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FCB9C.s", void sub_80FCB9C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FCC78.s", void sub_80FCC78(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FCD68.s", void sub_80FCD68(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80FD09C.s", void sub_80FD09C(void *arg0));