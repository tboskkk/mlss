#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_805980C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_805980C.s\"");
#else
void sub_805980C(u32* param_1)
{
    u16* puVar1;
    u32* puVar2;
    u8* puVar3;
    u32 uVar4;
    
    puVar1 = (u16*)((u8*)param_1 + 0x1C);
    uVar4 = (u32)*puVar1;
    if (uVar4 + 5 < 5) {
        puVar2 = (u32*)0x86527F4;
        puVar3 = *(u8**)(puVar2 + 0xDE8);
        puVar3 = puVar3 + 3;
        if (*puVar3 == 0) {
            return;
        }
        if (*puVar3 == 1) {
            *puVar1 = uVar4 + 5;
            return;
        }
        if (*puVar3 == 2) {
            *puVar1 = uVar4 + 5;
            return;
        }
    }
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8059924.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
