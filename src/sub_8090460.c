#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8090460 needs.

asm_unified(".include \"asm/macros.inc\"");


ASM_FUNC("asm/nonmatching/sub_8090460.s", void sub_8090460(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80904C4.s", void sub_80904C4(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8090528.s", void sub_8090528(void *arg0));
ASM_FUNC("asm/nonmatching/sub_8090598.s", void sub_8090598(void *arg0));