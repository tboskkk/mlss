#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80A2C80 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2C80.s\"");
#else
u32* sub_80A2C80(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1;
    puVar1 = (u32*)((s32)puVar1 + 0xb2);
    *(u16*)puVar1 = 0xFE4D;
    *(u32*)(param_1 + 0x13) = (u32)sub_80A2BC0;
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2C98.s\"");
#else
#error "TODO: write sub_80A2C98 to match asm/nonmatching/sub_80A2C98.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2D2C.s\"");
#else
#error "TODO: write sub_80A2D2C to match asm/nonmatching/sub_80A2D2C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2E7C.s\"");
#else
#error "TODO: write sub_80A2E7C to match asm/nonmatching/sub_80A2E7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80A2EFC.s\"");
#else
#error "TODO: write sub_80A2EFC to match asm/nonmatching/sub_80A2EFC.s, then delete this #error"
#endif
