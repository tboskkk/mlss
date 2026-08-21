#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F5C90 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5C90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/script_cmd_load_sprite.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5F2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F5FF8.s\"");
#else
s32 sub_80F5FF8(void *arg0, void *arg2) {
    s32 temp_r0_24;
    s32 temp_r0_40;
    void *temp_r2_13;
    void *temp_r2_59;
    void *temp_r2_71;
    void *temp_r2_82;
    void *temp_r5_31;
    void *temp_r7_14;

    temp_r2_13 = (*(void **)((s8 *)(arg0) + (0x2C)));
    temp_r7_14 = arg2 + 4;
    (*(u8 *)((s8 *)(temp_r2_13) + (0x179D))) = (u8) ((0x7F & (*(u8 *)((s8 *)(temp_r2_13) + (0x179D)))) | ((*(s32 *)((s8 *)(arg2) + (0))) << 7));
    temp_r0_24 = (*(s32 *)((s8 *)(arg2) + (4)));
    if (temp_r0_24 < 0) {
        (*(s32 *)((s8 *)(arg2) + (4))) = (s32) (0 - temp_r0_24);
    }
    temp_r5_31 = (*(void **)((s8 *)(arg0) + (0x2C)));
    temp_r0_40 = ((s32) (*(s32 *)((s8 *)(arg2) + (4))) / (s32) (*(s32 *)((s8 *)(temp_r7_14) + (4)))) & 0x1F;
    (*(u8 *)((s8 *)(temp_r5_31) + (0x179F))) = (u8) ((-0x7D & (*(u8 *)((s8 *)(temp_r5_31) + (0x179F)))) | (temp_r0_40 * 4));
    (*(u16 *)((s8 *)(temp_r5_31) + (0x179E))) = (u16) ((0xFFFFFC1F & (*(u16 *)((s8 *)(temp_r5_31) + (0x179E)))) | (temp_r0_40 << 5));
    temp_r2_59 = (*(void **)((s8 *)(arg0) + (0x2C)));
    (*(u8 *)((s8 *)(temp_r2_59) + (0x179E))) = (u8) ((-0x20 & (*(u8 *)((s8 *)(temp_r2_59) + (0x179E)))) | ((*(s32 *)((s8 *)(temp_r7_14) + (4))) & 0x1F));
    temp_r2_71 = (*(void **)((s8 *)(arg0) + (0x2C)));
    (*(u8 *)((s8 *)(temp_r2_71) + (0x179D))) = (u8) ((-0x7D & (*(u8 *)((s8 *)(temp_r2_71) + (0x179D)))) | (((*(s32 *)((s8 *)((temp_r7_14 + 4)) + (4))) & 0x1F) * 4));
    temp_r2_82 = (*(void **)((s8 *)(arg0) + (0x2C)));
    (*(u8 *)((s8 *)(temp_r2_82) + (0x179D))) = (u8) ((-4 & (*(u8 *)((s8 *)(temp_r2_82) + (0x179D)))) | 2);
    return 1;
}
#endif
