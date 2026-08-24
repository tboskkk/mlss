#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A0304 needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/sub_80A0304.s", void sub_80A0304(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A04F8.s", void sub_80A04F8(void *arg0));
ASM_FUNC("asm/nonmatching/sub_80A0600.s", void sub_80A0600(void *arg0));