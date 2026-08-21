#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F82E8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F82E8.s\"");
#else
#error "TODO: write sub_80F82E8 to match asm/nonmatching/sub_80F82E8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F83A0.s\"");
#else
extern void sub_81054D4();

void sub_80F83A0(void* p0, void* p1, void* p2) {
    u32* r3 = (u32*)0x03000FD8;
    u32* r0 = (u32*)((u8*)r3 + (*(u32*)((u8*)p2) << 2) + 0xB6);
    u32* r4 = (u32*)*(u32*)((u8*)r0);
    u32* r2 = (u32*)((u8*)p1);
    u32 r1 = *(u32*)((u8*)r2) ^ 1;
    u32 r5 = (u32)r3;
    if ((r1 & 1) == 0) {
        r1 = 0;
    } else {
        if (*(u32*)((u8*)p2) & 2) {
            r1 = 1;
        } else {
            r1 = 2;
        }
    }
    u8* r4_5 = (u8*)r4 + 5;
    *(u8*)r4_5 = (*(u8*)r4_5 & 0xFC) | r1;
    u32* r1_2 = (u32*)((u8*)r5);
    *(u32*)((u8*)r1_2 + 0x24) = (u32)sub_81054D4;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F83F0.s\"");
#else
#error "TODO: write sub_80F83F0 to match asm/nonmatching/sub_80F83F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8438.s\"");
#else
#error "TODO: write sub_80F8438 to match asm/nonmatching/sub_80F8438.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F84AC.s\"");
#else
#error "TODO: write sub_80F84AC to match asm/nonmatching/sub_80F84AC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F84F8.s\"");
#else
#error "TODO: write sub_80F84F8 to match asm/nonmatching/sub_80F84F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F857C.s\"");
#else
#error "TODO: write sub_80F857C to match asm/nonmatching/sub_80F857C.s, then delete this #error"
#endif
