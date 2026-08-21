#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8152650 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152650.s\"");
#else
void sub_8152650(u32* param_1)
{
    u8* puVar1;
    u32 uVar2;
    
    puVar1 = (u8*)param_1 + 0xC;
    if (*(u8*)puVar1 <= 0x13) {
        uVar2 = *(u32*)((u32*)param_1 + 0x15266C + ((u32)*(u8*)puVar1 << 2));
        (*(code**)uVar2)();
    }
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81528D0.s\"");
#else
#error "TODO: write sub_81528D0 to match asm/nonmatching/sub_81528D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815294C.s\"");
#else
#error "TODO: write sub_815294C to match asm/nonmatching/sub_815294C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152BF4.s\"");
#else
#error "TODO: write sub_8152BF4 to match asm/nonmatching/sub_8152BF4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152CF0.s\"");
#else
#error "TODO: write sub_8152CF0 to match asm/nonmatching/sub_8152CF0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8152FE8.s\"");
#else
#error "TODO: write sub_8152FE8 to match asm/nonmatching/sub_8152FE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81531B0.s\"");
#else
#error "TODO: write sub_81531B0 to match asm/nonmatching/sub_81531B0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153304.s\"");
#else
#error "TODO: write sub_8153304 to match asm/nonmatching/sub_8153304.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8153688.s\"");
#else
#error "TODO: write sub_8153688 to match asm/nonmatching/sub_8153688.s, then delete this #error"
#endif
