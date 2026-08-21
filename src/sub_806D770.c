#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_806D770 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D770.s\"");
#else
extern s32 sub_806D7D0;

void sub_806D770(void *arg0) {
    void *temp_r1_9;

    temp_r1_9 = *(void **)0x03000E3C;
    (*(s32 *)((s8 *)(temp_r1_9) + (0x10))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x10)));
    (*(s32 *)((s8 *)(temp_r1_9) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x14)));
    (*(s32 *)((s8 *)(temp_r1_9) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) - 1);
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) + 5);
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75)));
        (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) + 1);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806D7D0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D7D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806D9F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DAF0.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_806E6BC;

void sub_806DAF0(void *arg0) {
    s32 var_r1_49;
    s32 var_r1_84;
    s32 var_r2_55;
    s32 var_r2_90;
    s32 var_r3_61;
    s32 var_r3_96;

    (*(u8 *)((s8 *)(arg0) + (0x74))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x74)));
    (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x74))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x74)));
    (*(u8 *)((s8 *)(arg0) + (0x75))) = (u8) (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75)));
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x30)))) + (0x75))) = (s8) ((*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x2C)))) + (0x75))) + 1);
    if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
        sub_8082E1C(arg0, 0xA, 0, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0xA, 0, 0);
        var_r1_49 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_49 < 0) {
            var_r1_49 += 0xFF;
        }
        var_r2_55 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_55 < 0) {
            var_r2_55 += 0xFF;
        }
        var_r3_61 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_61 < 0) {
            var_r3_61 += 0xFF;
        }
        sub_80DF024(0x1F8D, var_r1_49 >> 8, var_r2_55 >> 8, var_r3_61 >> 8, arg0);
    } else {
        sub_8082E1C(arg0, 0xB, 0, 0);
        sub_8082E1C((*(void **)((s8 *)(arg0) + (0x30))), 0xB, 0, 0);
        var_r1_84 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_84 < 0) {
            var_r1_84 += 0xFF;
        }
        var_r2_90 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_90 < 0) {
            var_r2_90 += 0xFF;
        }
        var_r3_96 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_96 < 0) {
            var_r3_96 += 0xFF;
        }
        sub_80DF024(0x1F95, var_r1_84 >> 8, var_r2_90 >> 8, var_r3_96 >> 8, arg0);
    }
    play_sfx_80195B4(0x88, -1);
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_806E6BC;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DBD4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DCB4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DD48.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DE28.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806DF2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_806E108.s\"");
#else
extern s32 sub_808750C;

void sub_806E108(void *arg0) {
    s32 temp_r0_44;
    s32 temp_r0_76;
    s32 temp_r2_48;
    s32 temp_r4_25;
    void *temp_r1_65;

    temp_r4_25 = ((s32) ((*(s32 *)((s8 *)(arg0) + (0xA4))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) / (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)))) + (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8);
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r4_25;
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) (((s32) ((*(s32 *)((s8 *)(arg0) + (0xA8))) * M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */)) / (s32) (*(s32 *)((s8 *)(arg0) + (0xA0)))) + (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) << 8));
    temp_r0_44 = (*(s32 *)((s8 *)(arg0) + (0xA0)));
    temp_r2_48 = M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) - ((s32) (temp_r0_44 + ((u32) temp_r0_44 >> 0x1F)) >> 1);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((temp_r2_48 * temp_r2_48 * (*(s32 *)((s8 *)(arg0) + (0x9C)))) + ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) << 8) + 0x2800));
    temp_r1_65 = (*(void **)((s8 *)(arg0) + (0x30)));
    (*(s32 *)((s8 *)(temp_r1_65) + (0x10))) = temp_r4_25;
    (*(s32 *)((s8 *)(temp_r1_65) + (0x14))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x14)));
    (*(s32 *)((s8 *)(temp_r1_65) + (0x18))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x18)));
    (*(u16 *)((s8 *)(arg0) + (0xAC))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0xAC))) + 1);
    temp_r0_76 = (*(s32 *)((s8 *)(arg0) + (0xA0)));
    if (((s32) M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */) >= (s32) ((s32) (temp_r0_76 + ((u32) temp_r0_76 >> 0x1F)) >> 1)) && ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) <= 0)) {
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_808750C;
    }
}
#endif
