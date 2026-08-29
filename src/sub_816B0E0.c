#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816B0E0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B0E0.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816B0E0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD1C8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B0F4.s\"");
#else
s32 sub_8161C28(void *, s32);                   /* extern */
s32 sub_8163A64(void *, s32, s32, s32);         /* extern */
s32 sub_8163ADC(void *, s32, s32, s32, s32, s32); /* extern */

void *sub_816B0F4(void *arg0, void *arg1, s32 arg2, s32 arg3) {
    void *temp_r2_27;

    sub_8161C28(arg0, 6);
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD1C8;
    sub_8163ADC(arg0, 3, 0x415A, 0, 0, 2);
    temp_r2_27 = (*(void **)((s8 *)(arg0) + (0x10)));
    (*(u8 *)((s8 *)(temp_r2_27) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_27) + (0x12)))) | 2);
    sub_8163A64(arg0, (*(s32 *)((s8 *)(arg1) + (0))) - arg2, (*(s32 *)((s8 *)(arg1) + (4))), (*(s32 *)((s8 *)(arg1) + (8))) - arg3);
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B15C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B1A8.s\"");
#else
s32 sub_8163978(void *, s32, s32, s32, s32);    /* extern */
s32 sub_8163A08();                                  /* extern */

void sub_816B1A8(void *arg0) {
    s8 sp4;
    s32 var_r0_35;
    s32 var_r1_20;

    if ((sub_8163A08() << 0x18) != 0) {
        var_r1_20 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
        if (var_r1_20 < 0) {
            var_r1_20 += 0x3F;
        }
        var_r0_35 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_35 < 0) {
            var_r0_35 += 0x3F;
        }
        sp4 = 0;
        sub_8163978(arg0, (*(s32 *)((s8 *)(arg0) + (0x6C))) + ((var_r1_20 >> 6) * (*(s32 *)((s8 *)(arg0) + (0x80)))), 0, (*(s32 *)((s8 *)(arg0) + (0x74))) + ((*(s32 *)((s8 *)(arg0) + (0x84))) * (var_r0_35 >> 6)), 0x16);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B21C.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816B21C(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD1D8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B230.s\"");
#else
s32 sub_816B230(void *arg0, void *arg1) {
    s32 temp_r0_20;
    s32 temp_r2_17;

    if (!((*(u16 *)((s8 *)(arg1) + (0x6C))) & 1)) {
        temp_r2_17 = (*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg1) + (0x18)));
        temp_r0_20 = (*(s32 *)((s8 *)(arg0) + (0x20))) - (*(s32 *)((s8 *)(arg1) + (0x20)));
        if ((s32) ((s32) ((temp_r2_17 * temp_r2_17) + (temp_r0_20 * temp_r0_20)) >> 8) <= 0x8FFF) {
            play_sfx_80195B4(0x37, -1);
            (*(u16 *)((s8 *)(arg1) + (0x6C))) = (u16) (1 | (*(u16 *)((s8 *)(arg1) + (0x6C))));
            (*(s32 *)((s8 *)(arg0) + (0x6C))) = 6;
            return 1;
        }
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B288.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B2E0.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816B2E0(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD1E8;
    sub_8163B60();
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816B338.s\"");
#else
s32 sub_8163B60();                              /* extern */

void sub_816B338(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0x08CDD1F8;
    sub_8163B60();
}
#endif
