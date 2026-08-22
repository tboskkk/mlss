#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80E9D04 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 free_heap_memory_8018C68(s32);              /* extern */

void sub_80E9D04(void) {
    free_heap_memory_8018C68(*(s32 *)0x03000FC0);
    *(s32 *)0x03000FC0 = 0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9D1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9D50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9E10.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80E9EE0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EA064.s\"");
#else
s32 sub_80EA064(s32 arg0, s32 arg1, void *arg2) {
    s16 temp_r3_28;
    s32 temp_r2_18;
    s32 var_r1_37;
    s32 var_r2_101;
    s32 var_r2_68;
    u16 temp_r0_58;
    u16 temp_r0_91;
    u16 temp_r1_14;
    u16 var_r0_16;
    void *var_r4_11;

    if ((*(s32 *)((s8 *)(arg2) + (0))) == 0) {
        var_r4_11 = *(void **)0x03000FF4;
        temp_r1_14 = (u16) (*(s32 *)((s8 *)(arg2) + (4)));
        var_r0_16 = (*(u16 *)((s8 *)((arg2 + 4)) + (4)));
        temp_r2_18 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */);
        if (temp_r2_18 > 8) {
            var_r4_11 += 0x3C;
            var_r0_16 = temp_r2_18 - 9;
        }
        temp_r3_28 = (s16) var_r0_16;
        if ((s32) temp_r3_28 <= 2) {
            if (temp_r1_14 != 0) {
                var_r1_37 = ((u8) (*(u8 *)((s8 *)(var_r4_11) + (7))) >> 2) & ~(1 << temp_r3_28);
            } else {
                var_r1_37 = ((u8) (*(u8 *)((s8 *)(var_r4_11) + (7))) >> 2) | (1 << temp_r3_28);
            }
            (*(u8 *)((s8 *)(var_r4_11) + (7))) = (u8) ((3 & (*(u8 *)((s8 *)(var_r4_11) + (7)))) | (var_r1_37 * 4));
        } else if ((s32) temp_r3_28 <= 5) {
            temp_r0_58 = temp_r3_28 - 3;
            if (temp_r1_14 != 0) {
                var_r2_68 = ((u32) ((*(u8 *)((s8 *)(var_r4_11) + (8))) << 0x1A) >> 0x1A) & ~(1 << (s16) temp_r0_58);
            } else {
                var_r2_68 = (((u32) ((*(u8 *)((s8 *)(var_r4_11) + (8))) << 0x1A) >> 0x1A) | (1 << (s16) temp_r0_58)) & 0x3F;
            }
            (*(u8 *)((s8 *)(var_r4_11) + (8))) = (u8) ((-0x40 & (*(u8 *)((s8 *)(var_r4_11) + (8)))) | var_r2_68);
        } else {
            temp_r0_91 = temp_r3_28 - 6;
            if (temp_r1_14 != 0) {
                var_r2_101 = ((u32) ((u16) (*(u8 *)((s8 *)(var_r4_11) + (8))) << 0x14) >> 0x1A) & ~(1 << (s16) temp_r0_91);
            } else {
                var_r2_101 = (((u32) ((u16) (*(u8 *)((s8 *)(var_r4_11) + (8))) << 0x14) >> 0x1A) | (1 << (s16) temp_r0_91)) & 0x3F;
            }
            (*(u8 *)((s8 *)(var_r4_11) + (8))) = (s16) ((0xFFFFF03F & (u16) (*(u8 *)((s8 *)(var_r4_11) + (8)))) | (var_r2_101 << 6));
        }
    }
    return 1;
}
#endif
