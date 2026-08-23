#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F8C60 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_80F8C60(void *arg0, void *arg1) {
    if ((*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x1788))) & 0x4000) {
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xFDFF & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
}

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
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F8D6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
