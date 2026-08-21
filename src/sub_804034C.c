#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_804034C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_804034C.s\"");
#else
void sub_804034C(void *arg0) {
    s16 var_r0_38;

    if ((1 & (*(u8 *)((s8 *)(arg0) + (0x20C)))) && !(0x20 & (*(u8 *)((s8 *)(arg0) + (0x216))))) {
        if ((s32) (*(s32 *)((s8 *)(arg0) + (0x25C))) >= 0) {
            if ((s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0x18)))) >= (s32) ((*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s32 *)((s8 *)(arg0) + (0x40))))) {
                var_r0_38 = 2;
            } else {
                var_r0_38 = 3;
            }
            goto block_9;
        }
        if ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) || (var_r0_38 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), (var_r0_38 != 0))) {
            (*(s16 *)((s8 *)(arg0) + (4))) = 1;
            return;
        }
block_9:
        (*(s16 *)((s8 *)(arg0) + (4))) = var_r0_38;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80403C4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040790.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80409F4.s\"");
#else
void sub_80409F4(void *arg0) {
    u8 temp_r2_26;
    u8 temp_r2_45;
    u8 temp_r2_66;
    u8 temp_r3_35;

    temp_r2_26 = (-3 & (*(u8 *)((s8 *)(arg0) + (0x298)))) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x11))) << 0x19) >> 0x1F) * 2);
    (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r2_26;
    temp_r3_35 = (-0xD & temp_r2_26) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1E) >> 0x1C);
    (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r3_35;
    temp_r2_45 = (-0x31 & temp_r3_35) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x1F))) << 0x1C) >> 0x1E) * 0x10);
    (*(u8 *)((s8 *)(arg0) + (0x298))) = temp_r2_45;
    (*(u8 *)((s8 *)(arg0) + (0x298))) = (u8) ((temp_r2_45 & 0x3F) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x12))) << 0x1D) >> 0x1E) << 6));
    temp_r2_66 = (-2 & (*(u8 *)((s8 *)(arg0) + (0x299)))) | ((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x12))) << 0x1C) >> 0x1F);
    (*(u8 *)((s8 *)(arg0) + (0x299))) = temp_r2_66;
    (*(u8 *)((s8 *)(arg0) + (0x299))) = (u8) ((temp_r2_66 & ~2) | (((u32) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x12))) << 0x1B) >> 0x1F) * 2));
    (*(u8 *)((s8 *)(arg0) + (0x29B))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x21)));
    (*(u8 *)((s8 *)(arg0) + (0x29C))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x23)));
    (*(u16 *)((s8 *)(arg0) + (0x29E))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x2A)));
    (*(u16 *)((s8 *)(arg0) + (0x2A0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (0x2C)));
    (*(u16 *)((s8 *)(arg0) + (0x2A2))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (4)));
    (*(u16 *)((s8 *)(arg0) + (0x2A4))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x294)))) + (6)));
    (*(u8 *)((s8 *)(arg0) + (0x298))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x298))) | 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8040AE0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
