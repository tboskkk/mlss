#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815D1DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D1DC.s\"");
#else
void *sub_815D1DC(void *arg0) {
    void *temp_r0_103;
    void *temp_r0_35;
    void *temp_r0_59;
    void *temp_r0_81;

    (*(s16 *)((s8 *)(arg0) + (0x18))) = 0;
    (*(void **)((s8 *)(arg0) + (8))) = NULL;
    (*(void **)((s8 *)(arg0) + (4))) = NULL;
    (*(void **)((s8 *)(arg0) + (0))) = NULL;
    (*(s8 *)((s8 *)(arg0) + (0x1A))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x1B))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x1C))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x1D))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = 0xE800;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = 0x1400;
    temp_r0_35 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0))) = temp_r0_35;
    sub_801E150(temp_r0_35, 0xA, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (0))) = 0xD8;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0)))) + (2))) = 0x10;
    temp_r0_59 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (4))) = temp_r0_59;
    sub_801E150(temp_r0_59, 0xA, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (4))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (0))) = 0xE0;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (4)))) + (2))) = 0x10;
    temp_r0_81 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (8))) = temp_r0_81;
    sub_801E150(temp_r0_81, 0xA, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (8))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0))) = 0xE8;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (2))) = 0x10;
    temp_r0_103 = sub_8020DD0(4, 0x5008, 0, -1, -1, -1, -1);
    (*(void **)((s8 *)(arg0) + (0xC))) = temp_r0_103;
    sub_801E150(temp_r0_103, 0x26, -1, 0, 0);
    sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0xC))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = 0xFFF0;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = 0xFFF0;
    return arg0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D2E8.s\"");
#else
void sub_815D2E8(void *arg0) {
    s16 temp_r1_14;
    s16 temp_r1_35;
    s16 temp_r1_62;
    s32 var_r0_154;
    u8 temp_r0_130;
    u8 temp_r0_78;
    u8 temp_r0_88;
    u8 temp_r0_91;
    void *temp_r1_107;
    void *temp_r1_113;
    void *temp_r1_119;
    void *temp_r2_15;
    void *temp_r2_63;
    void *temp_r5_36;

    temp_r1_14 = (s16) ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) / 100);
    temp_r2_15 = (*(void **)((s8 *)(arg0) + (0)));
    if (temp_r1_14 != ((*(u8 *)((s8 *)(temp_r2_15) + (0x21))) - 0xA)) {
        sub_801E150(temp_r2_15, temp_r1_14 + 0xA, 0, 0, 0);
    }
    temp_r1_35 = (s16) ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) / 10);
    temp_r5_36 = (*(void **)((s8 *)(arg0) + (4)));
    if (temp_r1_35 != ((*(u8 *)((s8 *)(temp_r5_36) + (0x21))) - 0xA)) {
        sub_801E150(temp_r5_36, (s16) (temp_r1_35 % 10) + 0xA, 0, 0, 0);
    }
    temp_r1_62 = (s16) ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) % 10);
    temp_r2_63 = (*(void **)((s8 *)(arg0) + (8)));
    if (temp_r1_62 != ((*(u8 *)((s8 *)(temp_r2_63) + (0x21))) - 0xA)) {
        sub_801E150(temp_r2_63, temp_r1_62 + 0xA, 0, 0, 0);
    }
    temp_r0_78 = (*(u8 *)((s8 *)(arg0) + (0x1A)));
    switch (temp_r0_78) {                           /* irregular */
    case 1:
        temp_r0_88 = (*(u8 *)((s8 *)(arg0) + (0x1B))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x1B))) = temp_r0_88;
        temp_r0_91 = temp_r0_88;
        if (temp_r0_91 == 0) {
            (*(u8 *)((s8 *)(arg0) + (0x1A))) = temp_r0_91;
            return;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = 0xFFF0;
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = 0xFFF0;
        (*(u8 *)((s8 *)(arg0) + (0x1C))) = (u8) (4 - (*(u8 *)((s8 *)(arg0) + (0x1C))));
        temp_r1_107 = (*(void **)((s8 *)(arg0) + (0)));
        (*(u16 *)((s8 *)(temp_r1_107) + (0))) = (u16) ((*(u8 *)((s8 *)(arg0) + (0x1C))) + 0xFFFE + (*(u16 *)((s8 *)(temp_r1_107) + (0))));
        temp_r1_113 = (*(void **)((s8 *)(arg0) + (4)));
        (*(u16 *)((s8 *)(temp_r1_113) + (0))) = (u16) ((*(u8 *)((s8 *)(arg0) + (0x1C))) + 0xFFFE + (*(u16 *)((s8 *)(temp_r1_113) + (0))));
        temp_r1_119 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u16 *)((s8 *)(temp_r1_119) + (0))) = (u16) ((*(u8 *)((s8 *)(arg0) + (0x1C))) + 0xFFFE + (*(u16 *)((s8 *)(temp_r1_119) + (0))));
        return;
    case 2:
        temp_r0_130 = (*(u8 *)((s8 *)(arg0) + (0x1B))) - 1;
        (*(u8 *)((s8 *)(arg0) + (0x1B))) = temp_r0_130;
        if ((temp_r0_130 << 0x18) == 0) {
            (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = 0xFFF0;
            (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = 0xFFF0;
            (*(u8 *)((s8 *)(arg0) + (0x1A))) = 0U;
            return;
        }
        (*(u8 *)((s8 *)(arg0) + (0x1D))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x1D))) + 1);
        var_r0_154 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
        if (var_r0_154 < 0) {
            var_r0_154 += 0x3F;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) + ((var_r0_154 >> 6) * 8)) >> 8);
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = (s16) ((s32) (*(s32 *)((s8 *)(arg0) + (0x14))) >> 8);
        return;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D440.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D658.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D7D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D8CC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815D980.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
