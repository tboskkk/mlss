#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8025D24 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025D24.s\"");
#else
void sub_8025D24(u32* param_1, s32 param_2)
{
    u32* puVar1;
    u32 uVar2;
    
    puVar1 = param_1;
    if (param_1 != (u32*)0x0) {
        puVar1 = (u32*)((u8*)param_1 + 0x12A);
    }
    uVar2 = *(u8*)puVar1;
    if (uVar2 == 1) {
        if (param_2 < 8) {
            void (**ppvVar3)(void) = (void (**)(void))((u8*)0x08025D4C + (param_2 * 4));
            (*ppvVar3)();
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025E94.s\"");
#else
#error "TODO: write sub_8025E94 to match asm/nonmatching/sub_8025E94.s, then delete this #error"
#endif
