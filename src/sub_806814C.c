#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806814C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806814C.s\"");
#else
u32 sub_806814C(u32* param_1) {
    u32* puVar1;
    u8 uVar2;
    
    puVar1 = param_1;
    uVar2 = *(u8*)(param_1[2] + 0x12);
    if ((uVar2 & 8) != 0) {
        puVar1[0x13] = 0x0808750D;
    }
    return (u32)puVar1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8068168.s\"");
#else
extern s32 sub_8067DC8;

s32 sub_8068168(void *arg0) {
    if ((*(s32 *)((s8 *)(arg0) + (0x9C))) == 0) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 2;
        (*(s32 *)((s8 *)((arg0 + 0x9C)) + (4))) = 1;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8067DC8;
    return 1;
}
#endif
