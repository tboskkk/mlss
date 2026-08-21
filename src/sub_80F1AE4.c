#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F1AE4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1AE4.s\"");
#else
u32 sub_80F1AE4(u32* param1, u32* param2) {
    *param2 = *param1;
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1AEC.s\"");
#else
s32 sub_80F1AEC(s32 arg0, s32 *arg1, void *arg2) {
    if ((*(u16 *)((s8 *)(*(void **)0x03000FD0) + (0x54C))) == (*(s32 *)((s8 *)(arg2) + (0)))) {
        *arg1 = (*(s32 *)((s8 *)(arg2) + (4)));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F1B14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
