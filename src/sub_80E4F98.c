#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E4F98 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80E4F98.s", void sub_80E4F98(void *arg0, void *arg1));
ASM_FUNC("asm/nonmatching/sub_80E4FC8.s", void sub_80E4FC8(void));
ASM_FUNC("asm/nonmatching/sub_80E5058.s", void sub_80E5058(void));