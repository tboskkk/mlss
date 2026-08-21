#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803D6D8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803D6D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DBE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DC88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DD68.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DE2C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DF00.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804E0D8(s32, s32, s32, s32);            /* extern */

void sub_803DF00(void *arg0, void *arg1) {
    u32 temp_r0_44;

    sub_802C4D4(arg0, 1, 1);
    (*(s16 *)((s8 *)(arg1) + (4))) = 0x3A;
    (*(u8 *)((s8 *)(arg1) + (0x351))) = (u8) ((*(u8 *)((s8 *)(arg1) + (0x351))) | 0x40);
    (*(s8 *)((s8 *)(arg1) + (0x23B))) = 0;
    (*(u8 *)((s8 *)(arg1) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg1) + (0x214)))) | 4);
    sub_8049000(arg1, 0x1030);
    temp_r0_44 = (u8) (*(u8 *)((s8 *)(arg0) + (0xFB))) >> 3;
    (*(s8 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x294)))) + (0x20))) = (s8) temp_r0_44;
    (*(s8 *)((s8 *)(arg1) + (0x239))) = (s8) temp_r0_44;
    sub_804E0D8((*(s32 *)((s8 *)(arg0) + (0xA8))), 4, (*(s32 *)((s8 *)(arg0) + (0x200))), 0);
    (*(s8 *)((s8 *)(arg1) + (0x355))) = 0x46;
    play_sfx_80195B4(0x56, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803DF9C.s\"");
#else
s32 sub_8049000(void *, s32);                   /* extern */
s32 sub_804FAF8(s32);                           /* extern */

void sub_803DF9C(void *arg0, void *arg1) {
    s32 var_r1_62;
    void *temp_r1_72;

    (*(s16 *)((s8 *)(arg1) + (4))) = 0xF;
    if (8 & (*(u8 *)((s8 *)(arg1) + (0x358)))) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg1) + (0x388)))) + (4))) = 0xF;
    }
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xA8))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xAC))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xB0))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xB4))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xB8))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xBC))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xC0))));
    sub_804FAF8((*(s32 *)((s8 *)(arg0) + (0xC4))));
    var_r1_62 = 0x1002;
    if ((*(u8 *)((s8 *)(arg1) + (0x54))) == 0) {
        var_r1_62 = 0x1001;
    }
    sub_8049000(arg1, var_r1_62);
    temp_r1_72 = (*(void **)((s8 *)(arg1) + (0x294)));
    (*(s16 *)((s8 *)(temp_r1_72) + (6))) = 0x100;
    (*(s16 *)((s8 *)(temp_r1_72) + (4))) = 0x100;
    (*(s8 *)((s8 *)(arg1) + (0x23B))) = 0;
    (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x80)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 1);
    play_sfx_80195B4(0x49, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803E070.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
