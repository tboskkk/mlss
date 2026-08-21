#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9BD8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9BD8.s\"");
#else
void sub_80E9BD8(u32* param_1, u32* param_2, s16 param_3, u32 param_4)
{
    u32* puVar1;
    u32 uVar2;
    
    uVar2 = (u32)param_3;
    if (0xf < uVar2) {
        if (0x34 < uVar2) {
            puVar1 = *(u32**)(0x3000FC0);
            puVar1 = puVar1 + (uVar2 - 0x35);
            *puVar1 = param_4;
        }
        else {
            puVar1 = param_1 + (uVar2 - 0x10);
            *puVar1 = param_4;
        }
    }
    else {
        puVar1 = param_2 + uVar2;
        *puVar1 = param_4;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9C14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
