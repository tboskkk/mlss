#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80DBA98 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80DBA98.s", void sub_80DBA98(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DBB1C.s", void sub_80DBB1C(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80DBBCC.s", void sub_80DBBCC(void *arg0));