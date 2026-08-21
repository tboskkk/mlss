#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8C60 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8C60.s\"");
#else
void sub_80F8C60(void *arg0, void *arg1) {
    if ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x1788))) & 0x4000) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xFDFF & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8C8C.s\"");
#else
void sub_80F8C8C(void *arg0, void *arg1) {
    if (!(0x20 & (*(u16 *)((s8 *)(((((u8) (*(u8 *)((s8 *)(arg1) + (0xFD))) >> 4) << 8) + (*(s32 *)((s8 *)(arg0) + (0x2C))))) + (0x7A0))))) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xF7FF & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8CC0.s\"");
#else
#error "TODO: write sub_80F8CC0 to match asm/nonmatching/sub_80F8CC0.s, then delete this #error"
#endif
