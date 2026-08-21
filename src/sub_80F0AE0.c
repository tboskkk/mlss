#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F0AE0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0AE0.s\"");
#else
s32 sub_80F0AE0(void *arg0, s32 *arg2) {
    s32 temp_r2_8;
    void *temp_r1_14;

    temp_r2_8 = *arg2;
    if (!((temp_r2_8 >> 1) & 1)) {
        temp_r1_14 = (*(void **)((s8 *)(arg0) + (0x14)));
        (*(u8 *)((s8 *)(temp_r1_14) + (0xF9))) = (u8) ((-5 & (*(u8 *)((s8 *)(temp_r1_14) + (0xF9)))) | ((temp_r2_8 & 1) * 4));
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F0B0C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
