#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// init_btl_process_80FC25C needs.

asm_unified(".include \"asm/macros.inc\"");

ASM_FUNC("asm/nonmatching/init_btl_process_80FC25C.s", void * init_btl_process_80FC25C(void *arg0, u8 arg1, void *arg3));
ASM_FUNC("asm/nonmatching/btl_80FC310.s", void btl_80FC310(void *arg0, s32 arg1));