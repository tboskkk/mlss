#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8DA4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8DA4.s\"");
#else
u16 sub_80F8DA4(u32* param_1, s16 param_2) {
    u32* puVar1;
    u16 uVar2;
    
    puVar1 = param_1 + 0xB;
    uVar2 = *puVar1;
    uVar2 = uVar2 + param_2;
    uVar2 = uVar2 + 0x1A0;
    return *(u16*)((u32)uVar2);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8DE0.s\"");
#else
void sub_80F8DE0(void *arg0, u8 arg1) {
    (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x1780))) = (s32) arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8E80.s\"");
#else
#error "TODO: write sub_80F8E80 to match asm/nonmatching/sub_80F8E80.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8EB0.s\"");
#else
#error "TODO: write sub_80F8EB0 to match asm/nonmatching/sub_80F8EB0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8F78.s\"");
#else
#error "TODO: write sub_80F8F78 to match asm/nonmatching/sub_80F8F78.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F92DC.s\"");
#else
#error "TODO: write sub_80F92DC to match asm/nonmatching/sub_80F92DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F940C.s\"");
#else
#error "TODO: write sub_80F940C to match asm/nonmatching/sub_80F940C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F94A8.s\"");
#else
#error "TODO: write sub_80F94A8 to match asm/nonmatching/sub_80F94A8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9544.s\"");
#else
#error "TODO: write sub_80F9544 to match asm/nonmatching/sub_80F9544.s, then delete this #error"
#endif
