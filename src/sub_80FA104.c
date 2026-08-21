#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80FA104 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA104.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA180.s\"");
#else
s32 sub_8120C54(void *, u8, s32, s32, s32, s32, s32); /* extern */

s32 sub_80FA180(void *arg0, void *arg1, void *arg2) {
    s32 temp_r1_12;
    s32 temp_r1_38;
    s32 temp_r3_51;
    s32 temp_r4_15;
    s32 var_r0_45;
    u8 temp_r7_25;

    temp_r1_12 = (*(s32 *)((s8 *)(arg2) + (4)));
    temp_r4_15 = (temp_r1_12 >> 1) & 3;
    temp_r7_25 = (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x24)))) + (0x9A0))) - 1;
    if ((*(s32 *)((s8 *)(arg2) + (0))) != 0) {
        (*(s32 *)((s8 *)(arg2) + (8))) = (s32) ((*(s32 *)((s8 *)(arg2) + (8))) * 0x10);
        (*(s32 *)((s8 *)(arg2) + (0xC))) = (s32) ((*(s32 *)((s8 *)(arg2) + (0xC))) * 0x10);
    }
    if (temp_r4_15 == 1) {
        temp_r1_38 = (*(s32 *)((s8 *)(arg2) + (0x10)));
        if (0x40 & temp_r1_38) {
            var_r0_45 = (temp_r1_38 & 0xF) * 0x10;
        } else {
            var_r0_45 = temp_r1_38 << 8;
        }
        (*(s32 *)((s8 *)(arg2) + (0x10))) = var_r0_45;
        temp_r3_51 = (*(s32 *)((s8 *)(arg2) + (0x10)));
        if (temp_r3_51 != 0) {
            (*(s16 *)((s8 *)(((temp_r7_25 << 6) + (*(s32 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (0x158))))) + (0x3A))) = (s16) temp_r3_51;
        }
    }
    sub_8120C54((*(void **)((s8 *)(arg0) + (0x14))), temp_r7_25, temp_r4_15, 1 & temp_r1_12, (*(s32 *)((s8 *)(arg2) + (8))), (*(s32 *)((s8 *)(arg2) + (0xC))), M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
    (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (2 | (*(u16 *)((s8 *)(arg1) + (0xA0))));
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA220.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80FA2F0.s\"");
#else
#error "TODO: write sub_80FA2F0 to match asm/nonmatching/sub_80FA2F0.s, then delete this #error"
#endif
