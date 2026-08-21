#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806B56C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B56C.s\"");
#else
u32 sub_806B56C(u32* param_1) {
    u32* puVar1;
    u8 uVar2;
    
    puVar1 = param_1;
    uVar2 = *(u8*)(param_1[2] + 0x12);
    if (uVar2 & 0x8) {
        puVar1[0x13] = 0;
    }
    return (u32)puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B584.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_806AA18;

void sub_806B584(void *arg0) {
    sub_8082E1C(arg0, 5, 0, 0);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806AA18;
    (*(s16 *)((s8 *)(arg0) + (0xAC))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B5A8.s\"");
#else
#error "TODO: write sub_806B5A8 to match asm/nonmatching/sub_806B5A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B5F8.s\"");
#else
#error "TODO: write sub_806B5F8 to match asm/nonmatching/sub_806B5F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B644.s\"");
#else
#error "TODO: write sub_806B644 to match asm/nonmatching/sub_806B644.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B7BC.s\"");
#else
#error "TODO: write sub_806B7BC to match asm/nonmatching/sub_806B7BC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806B824.s\"");
#else
#error "TODO: write sub_806B824 to match asm/nonmatching/sub_806B824.s, then delete this #error"
#endif
