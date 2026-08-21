#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803C720 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C720.s\"");
#else
s32 sub_802DDB4(void *, void *, u32, s32);      /* extern */

void sub_803C720(void *arg0, s32 arg1) {
    if (1 & arg1) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368)))) + (0x10))) = 0;
        sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0U, 0);
    }
    if (2 & arg1) {
        (*(s8 *)((s8 *)((*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)))) + (0x11))) = 0;
        sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x204))), (u32) ((*(u8 *)((s8 *)(arg0) + (0x208))) << 0x1B) >> 0x1F, 0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C788.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C7D8.s\"");
#else
s32 sub_804FB3C(s32);                               /* extern */
s32 sub_805C908(s32, u16);                      /* extern */

void sub_803C7D8(void *arg0, s32 arg1) {
    s32 temp_r0_9;
    s32 temp_r4_19;
    u8 temp_r2_30;

    temp_r0_9 = sub_804FB3C(arg1);
    if (temp_r0_9 >= 0) {
        temp_r4_19 = 1 << temp_r0_9;
        if (!(((u32) ((*(u8 *)((s8 *)(arg0) + (0xFA))) << 0x1C) >> 0x1C) & temp_r4_19)) {
            sub_805C908((*(s32 *)((s8 *)(arg0) + (0x304))), (u16) temp_r0_9);
            temp_r2_30 = (*(u8 *)((s8 *)(arg0) + (0xFA)));
            (*(u8 *)((s8 *)(arg0) + (0xFA))) = (u8) ((-0x10 & temp_r2_30) | ((((u32) (temp_r2_30 << 0x1C) >> 0x1C) | temp_r4_19) & 0xF));
            play_sfx_80195B4(0x53, -1);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C834.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C898.s\"");
#else
s32 sub_8029A0C(s32, s32, s32);         /* extern */

void sub_803C898(s32 arg0, s32 arg1) {
    sub_8029A0C(arg0, arg1, 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803C8A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803CB5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803CF64.s\"");
#else
s32 sub_803D05C(void *, void *);                /* extern */
s32 sub_803D6D8(void *);                        /* extern */
s32 sub_804FE68(void *, void *);                /* extern */

void sub_803CF64(void *arg0) {
    s32 temp_r0_25;
    s32 temp_r0_81;
    void *temp_r2_122;
    void *temp_r2_66;

    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x358)))) {
        sub_803D6D8(arg0);
        return;
    }
    temp_r0_25 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_25 <= 0x3F) {
        if ((temp_r0_25 < 0x3E) && (temp_r0_25 != 0xF)) {
            if (temp_r0_25 <= 0xF) {
                if ((temp_r0_25 <= 0xC) && (temp_r0_25 >= 5)) {
                    goto block_14;
                }
                goto block_15;
            }
            if (temp_r0_25 != 0x3A) {
                goto block_15;
            }
            goto block_14;
        }
        goto block_14;
    }
    if ((temp_r0_25 >= 0x46) && ((temp_r0_25 <= 0x48) || (temp_r0_25 == 0x6B))) {
block_14:
        sub_803D05C(arg0, (*(void **)((s8 *)(arg0) + (0x200))));
    } else {
block_15:
        temp_r2_66 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x294)));
        (*(u8 *)((s8 *)(temp_r2_66) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_66) + (0x12))) | 0x10);
        sub_804FE68((*(void **)((s8 *)(arg0) + (0x200))), arg0 + 0x28);
    }
    temp_r0_81 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_81 <= 0x3F) {
        if ((temp_r0_81 < 0x3E) && (temp_r0_81 != 0xF)) {
            if (temp_r0_81 <= 0xF) {
                if ((temp_r0_81 <= 0xC) && (temp_r0_81 >= 5)) {
                    goto block_28;
                }
                goto block_29;
            }
            if (temp_r0_81 != 0x3A) {
                goto block_29;
            }
            goto block_28;
        }
        goto block_28;
    }
    if ((temp_r0_81 >= 0x46) && ((temp_r0_81 <= 0x48) || (temp_r0_81 == 0x6B))) {
block_28:
        sub_803D05C(arg0, (*(void **)((s8 *)(arg0) + (0x204))));
        return;
    }
block_29:
    temp_r2_122 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x294)));
    (*(u8 *)((s8 *)(temp_r2_122) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r2_122) + (0x12))) | 0x10);
    sub_804FE68((*(void **)((s8 *)(arg0) + (0x204))), arg0 + 0x28);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803D05C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
