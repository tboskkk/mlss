#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_807FE7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FE7C.s\"");
#else
extern s32 sub_807FEB4;

void sub_807FE7C(void *arg0) {
    void *temp_r2_16;
    void *temp_r3_14;

    (*(u8 *)((s8 *)(arg0) + (0x79))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x79))) | 0x10);
    temp_r3_14 = *(void **)0x03000FD8;
    temp_r2_16 = (*(void **)((s8 *)(temp_r3_14) + (0x3C)));
    (*(void **)((s8 *)(temp_r3_14) + (0x3C))) = (void *) (*(void **)((s8 *)(temp_r2_16) + (0)));
    (*(void **)((s8 *)(temp_r2_16) + (0))) = (void *) (*(void **)((s8 *)(temp_r3_14) + (0x4C)));
    (*(s32 **)((s8 *)(temp_r2_16) + (4))) = &sub_807FEB4;
    (*(s16 *)((s8 *)(temp_r2_16) + (0x10))) = 0;
    (*(void **)((s8 *)(temp_r3_14) + (0x4C))) = temp_r2_16;
    (*(void **)((s8 *)(temp_r2_16) + (8))) = arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_807FEB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
