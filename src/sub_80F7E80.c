#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7E80 needs.

asm_unified(".include \"asm/macros.inc\"");

u32 sub_80F7E80(void) {
    return 1;
}
