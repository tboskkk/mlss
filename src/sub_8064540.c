#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064540 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064540.s\"");
#else
u32 sub_8064540(u32* param_1) {
    u8* puVar1;
    u32 uVar2;
    
    puVar1 = (u8*)param_1[2];
    uVar2 = puVar1[0x12] & 8;
    if (uVar2 != 0) {
        param_1[0x13] = 0;
    }
    return param_1[0];
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064558.s\"");
#else
#error "TODO: write sub_8064558 to match asm/nonmatching/sub_8064558.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064614.s\"");
#else
#error "TODO: write sub_8064614 to match asm/nonmatching/sub_8064614.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064908.s\"");
#else
#error "TODO: write sub_8064908 to match asm/nonmatching/sub_8064908.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806499C.s\"");
#else
#error "TODO: write sub_806499C to match asm/nonmatching/sub_806499C.s, then delete this #error"
#endif
