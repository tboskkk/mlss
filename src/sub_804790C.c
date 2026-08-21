#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804790C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804790C.s\"");
#else
u32 sub_804790C(u32 param_1, s16 param_2) {
    u32 *puVar1;
    u32 uVar2;
    
    puVar1 = (u32 *)((param_2 << 0x18 >> 0x18) + param_1 + 0x239);
    *puVar1 = (u32)param_2;
    uVar2 = ((param_2 & 0xff) << 2) + param_1;
    *(u8 *)(uVar2 + 0x20) = (u8)param_2;
    return uVar2;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047928.s\"");
#else
#error "TODO: write sub_8047928 to match asm/nonmatching/sub_8047928.s, then delete this #error"
#endif
