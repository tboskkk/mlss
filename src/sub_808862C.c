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

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808873C.s\"");
#else
#error "TODO: write sub_808873C to match asm/nonmatching/sub_808873C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088858.s\"");
#else
#error "TODO: write sub_8088858 to match asm/nonmatching/sub_8088858.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088964.s\"");
#else
#error "TODO: write sub_8088964 to match asm/nonmatching/sub_8088964.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80889F0.s\"");
#else
#error "TODO: write sub_80889F0 to match asm/nonmatching/sub_80889F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088A74.s\"");
#else
#error "TODO: write sub_8088A74 to match asm/nonmatching/sub_8088A74.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088BC0.s\"");
#else
#error "TODO: write sub_8088BC0 to match asm/nonmatching/sub_8088BC0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088C3C.s\"");
#else
#error "TODO: write sub_8088C3C to match asm/nonmatching/sub_8088C3C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088CC8.s\"");
#else
#error "TODO: write sub_8088CC8 to match asm/nonmatching/sub_8088CC8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088D50.s\"");
#else
#error "TODO: write sub_8088D50 to match asm/nonmatching/sub_8088D50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088DF0.s\"");
#else
#error "TODO: write sub_8088DF0 to match asm/nonmatching/sub_8088DF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088E7C.s\"");
#else
#error "TODO: write sub_8088E7C to match asm/nonmatching/sub_8088E7C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8088F9C.s\"");
#else
#error "TODO: write sub_8088F9C to match asm/nonmatching/sub_8088F9C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80891A0.s\"");
#else
#error "TODO: write sub_80891A0 to match asm/nonmatching/sub_80891A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089264.s\"");
#else
#error "TODO: write sub_8089264 to match asm/nonmatching/sub_8089264.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089348.s\"");
#else
#error "TODO: write sub_8089348 to match asm/nonmatching/sub_8089348.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808942C.s\"");
#else
#error "TODO: write sub_808942C to match asm/nonmatching/sub_808942C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80894B8.s\"");
#else
#error "TODO: write sub_80894B8 to match asm/nonmatching/sub_80894B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808954C.s\"");
#else
#error "TODO: write sub_808954C to match asm/nonmatching/sub_808954C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80895D8.s\"");
#else
#error "TODO: write sub_80895D8 to match asm/nonmatching/sub_80895D8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_808965C.s\"");
#else
#error "TODO: write sub_808965C to match asm/nonmatching/sub_808965C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089788.s\"");
#else
#error "TODO: write sub_8089788 to match asm/nonmatching/sub_8089788.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089800.s\"");
#else
#error "TODO: write sub_8089800 to match asm/nonmatching/sub_8089800.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80898B0.s\"");
#else
#error "TODO: write sub_80898B0 to match asm/nonmatching/sub_80898B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089928.s\"");
#else
#error "TODO: write sub_8089928 to match asm/nonmatching/sub_8089928.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8089964.s\"");
#else
#error "TODO: write sub_8089964 to match asm/nonmatching/sub_8089964.s, then delete this #error"
#endif
