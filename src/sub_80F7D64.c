#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7D64 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7D64.s\"");
#else
u32 sub_80F7D64(u32 param_1) {
    u32 *puVar1;
    u8 uVar2;
    
    puVar1 = (u32 *)(param_1 + 0x2C);
    *puVar1 = *puVar1 + 0x179D;
    uVar2 = *(u8 *)*puVar1 & 0xFFFFFFFC;
    *(u8 *)*puVar1 = uVar2 | 1;
    return 1;
}
#endif
