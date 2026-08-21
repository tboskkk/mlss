#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F39C8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F39C8.s\"");
#else
void sub_80F39C8(u32* param_1)
{
    u32* puVar1;
    u32 uVar2;
    u32 uVar3;
    
    puVar1 = (u32*)((u8*)param_1 + 0x2C);
    uVar2 = *puVar1 + 0x179C;
    uVar3 = *(u8*)uVar2;
    if (6 < uVar3) {
        uVar3 = uVar3 - 7;
    }
    else {
        uVar3 = uVar3 - 1;
    }
    uVar3 = uVar3 << 0x18;
    uVar3 = uVar3 >> 0x18;
    uVar2 = *(u32*)((u8*)param_1 + 0x2C);
    if (uVar2 < 5) {
        switch(uVar3) {
            case 0:
                (*(code**)((u8*)param_1 + 0x40))();
                break;
            case 1:
                (*(code**)((u8*)param_1 + 0x44))();
                break;
            case 2:
                (*(code**)((u8*)param_1 + 0x48))();
                break;
            case 3:
                (*(code**)((u8*)param_1 + 0x4C))();
                break;
            case 4:
                (*(code**)((u8*)param_1 + 0x50))();
                break;
        }
    }
    return;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F3BEC.s\"");
#else
#error "TODO: write sub_80F3BEC to match asm/nonmatching/sub_80F3BEC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F3D18.s\"");
#else
#error "TODO: write sub_80F3D18 to match asm/nonmatching/sub_80F3D18.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F3ECC.s\"");
#else
#error "TODO: write sub_80F3ECC to match asm/nonmatching/sub_80F3ECC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F3F58.s\"");
#else
#error "TODO: write sub_80F3F58 to match asm/nonmatching/sub_80F3F58.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F3FE8.s\"");
#else
#error "TODO: write sub_80F3FE8 to match asm/nonmatching/sub_80F3FE8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F40CC.s\"");
#else
#error "TODO: write sub_80F40CC to match asm/nonmatching/sub_80F40CC.s, then delete this #error"
#endif
