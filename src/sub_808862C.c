#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_808862C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808862C.s\"");
#else
u32* sub_808862C(u32* param_1) {
    u32* puVar1;
    
    puVar1 = param_1 + 0x13;
    *(param_1 + 0x14) = *puVar1;
    *(param_1 + 0x13) = 0x080886BD;
    return param_1;
}
#endif

extern s32 sub_80886E0;

void sub_808863C(void *arg0) {
    (*(s32 **)((s8 *)(arg0) + (0x50))) = (s32 *) (*(s32 **)((s8 *)(arg0) + (0x4C)));
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_80886E0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808864C.s\"");
#else
#error "TODO: write sub_808864C to match asm/nonmatching/sub_808864C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80886BC.s\"");
#else
#error "TODO: write sub_80886BC to match asm/nonmatching/sub_80886BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80886E0.s\"");
#else
#error "TODO: write sub_80886E0 to match asm/nonmatching/sub_80886E0.s, then delete this #error"
#endif
