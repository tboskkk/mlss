#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8083EEC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8083EEC.s\"");
#else
void sub_8083EEC(u32 param_1, u32 param_2)
{
    u8 *puVar1;
    u32 uVar2;
    
    puVar1 = (u8 *)(param_1 + 0xF0);
    uVar2 = *(u8 *)(puVar1 + 0x1D);
    if (param_2 == 1) {
        uVar2 = uVar2 >> 4;
    }
    else {
        if (param_2 < 2) {
            if (param_2 != 0) {
                uVar2 = -1;
            }
            else {
                uVar2 = uVar2 >> 6;
            }
        }
        else {
            if (param_2 == 2) {
                uVar2 = uVar2 >> 2;
            }
            else {
                uVar2 = -1;
            }
        }
    }
    uVar2 = uVar2 & 3;
    *(u32 *)puVar1 = uVar2;
}
#endif
