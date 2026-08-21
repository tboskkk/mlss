#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815A288 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815A288.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815A394.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815A5D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815A6D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815AFA8.s\"");
#else
void sub_815AFA8(void *arg0) {
    s32 temp_r0_69;
    s32 temp_r1_59;
    s32 temp_r2_15;
    s32 temp_r2_39;
    s32 var_r0_42;
    s32 var_r0_72;
    u32 temp_r0_16;
    u32 temp_r0_32;

    temp_r2_15 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C9C)))) + (4)));
    temp_r0_16 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C98)))) + (4))) - temp_r2_15;
    (*(s32 *)((s8 *)(arg0) + (0x1CA4))) = (s32) (temp_r2_15 + ((s32) (temp_r0_16 + (temp_r0_16 >> 0x1F)) >> 1) + 0xFFFF8800);
    temp_r0_32 = (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C9C)))) + (8))) + (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x1C98)))) + (8)));
    (*(s32 *)((s8 *)(arg0) + (0x1CA8))) = (s32) (((s32) (temp_r0_32 + (temp_r0_32 >> 0x1F)) >> 1) + 0xFFFF7400);
    temp_r2_39 = (*(s32 *)((s8 *)(arg0) + (0x1CA4)));
    if (temp_r2_39 < 0) {
        var_r0_42 = 0;
        goto block_4;
    }
    temp_r1_59 = (*(u16 *)((s8 *)((((*(u8 *)((s8 *)(arg0) + (0x1EA2))) << 5) + 0x083CC1A0)) + (0x18))) - 1;
    if ((s32) (temp_r2_39 >> 8) >= (s32) (temp_r1_59 << 8)) {
        var_r0_42 = temp_r1_59 << 0x10;
block_4:
        (*(s32 *)((s8 *)(arg0) + (0x1CA4))) = var_r0_42;
    }
    temp_r0_69 = (*(s32 *)((s8 *)(arg0) + (0x1CA8)));
    if (temp_r0_69 < 0) {
        var_r0_72 = 0;
        goto block_9;
    }
    if ((s32) (temp_r0_69 >> 8) > 0x5F) {
        var_r0_72 = 0x6000;
block_9:
        (*(s32 *)((s8 *)(arg0) + (0x1CA8))) = var_r0_72;
    }
}
#endif
