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
#error "TODO: write sub_8068168 to match asm/nonmatching/sub_8068168.s, then delete this #error"
#endif
