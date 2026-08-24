#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A2868 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80A2868.s", void sub_80A2868(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A2918.s", void sub_80A2918(void *arg0));