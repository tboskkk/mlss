#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_803AAE4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803AAE4.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_8040804(void *, s32, s32, s32);         /* extern */
s32 sub_8049000(void *, s32);                   /* extern */

void sub_803AAE4(void *arg0) {
    void *temp_r0_122;
    void *temp_r1_41;
    void *temp_r2_115;
    void *temp_r2_130;
    void *temp_r2_40;
    void *temp_r2_55;
    void *temp_r2_92;
    void *temp_r3_91;
    void *temp_r4_54;

    sub_802C4D4(arg0, 1, 1);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0x13;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0x13;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0xA1;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0xA1;
    temp_r2_40 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_41 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_41) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_41) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_40) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_40) + (0x358))) | 8);
    temp_r4_54 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_55 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r2_55) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_55) + (0x214)))) | 1);
    (*(u8 *)((s8 *)(temp_r4_54) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r4_54) + (0x214)))) | 1);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1037);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x104F);
    sub_8040804((*(void **)((s8 *)(arg0) + (0x204))), 1, 1, -1);
    sub_8040804((*(void **)((s8 *)(arg0) + (0x200))), 1, 2, -1);
    temp_r3_91 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_92 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r2_92) + (0x20D))) = (u8) (-9 & (*(u8 *)((s8 *)(temp_r2_92) + (0x20D))));
    (*(u8 *)((s8 *)(temp_r3_91) + (0x20D))) = (u8) (-9 & (*(u8 *)((s8 *)(temp_r3_91) + (0x20D))));
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x242))) = 0x99;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x244))) = 0;
    temp_r2_115 = (*(void **)((s8 *)(arg0) + (0x200)));
    temp_r0_122 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(s32 *)((s8 *)(temp_r0_122) + (0x234))) = -1;
    (*(s32 *)((s8 *)(temp_r0_122) + (0x230))) = -1;
    (*(s32 *)((s8 *)(temp_r2_115) + (0x234))) = -1;
    (*(s32 *)((s8 *)(temp_r2_115) + (0x230))) = -1;
    temp_r2_130 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_130) + (0x214))) = (s32) (((s32) (*(u8 *)((s8 *)(temp_r2_130) + (0x214))) & 0xFFFE1FFF) | 0x1C000);
    (*(s16 *)((s8 *)(arg0) + (0x26E))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x264))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x268))) = 0;
    (*(s8 *)((s8 *)(arg0) + (0x261))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x26A))) = (u8) (-5 & (*(u8 *)((s8 *)(arg0) + (0x26A))));
    (*(s32 *)((s8 *)(arg0) + (0x208))) = (s32) (((*(s32 *)((s8 *)(arg0) + (0x208))) & 0xFFFE7FFF) | 0x10000);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x246))) | 0x1C);
    play_sfx_80195B4(0x59, -1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803AC8C.s\"");
#else
s32 sub_802C4D4(void *, s32, s32);              /* extern */
s32 sub_802DDB4(void *, void *, u32, s32);      /* extern */
s32 sub_804FC90(void *);                        /* extern */

void sub_803AC8C(void *arg0) {
    s8 *temp_r1_103;
    s8 *temp_r1_92;
    void *temp_r1_78;
    void *temp_r2_77;

    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x208))) | 0x10);
    sub_802C4D4(arg0, 1, 1);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x200))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x200))), 0U, 0);
    sub_804FC90((*(void **)((s8 *)(arg0) + (0x204))));
    sub_802DDB4(arg0, (*(void **)((s8 *)(arg0) + (0x204))), (u32) ((*(u8 *)((s8 *)(arg0) + (0x208))) << 0x1B) >> 0x1F, 0);
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0x12;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0x12;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0xA0;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0xA0;
    temp_r2_77 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_78 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_78) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r1_78) + (0x358))) | 8);
    (*(u8 *)((s8 *)(temp_r2_77) + (0x358))) = (u8) ((*(u8 *)((s8 *)(temp_r2_77) + (0x358))) | 8);
    temp_r1_92 = (*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_92) + (0x12))) = (u8) (*(u8 *)((s8 *)(temp_r1_92) + (0x10)));
    (*(s8 *)((s8 *)((*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368)))) + (0x10))) = 0;
    temp_r1_103 = (*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_103) + (0x15))) = (u8) (*(u8 *)((s8 *)(temp_r1_103) + (0x11)));
    (*(s8 *)((s8 *)((*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)))) + (0x11))) = 0;
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (s32) (((s32) (*(u8 *)((s8 *)(arg0) + (0x208))) & 0xFFFE7FFF) | 0x10000);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x246))) | 0x1C);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803ADA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803AE38.s\"");
#else
s32 sub_802E4C8(void *, s32);                   /* extern */
s32 sub_8049000(void *, s32);                   /* extern */

void sub_803AE38(void *arg0) {
    s8 *temp_r1_155;
    s8 *temp_r1_166;
    void *temp_r0_134;
    void *temp_r1_103;
    void *temp_r1_76;
    void *temp_r2_122;
    void *temp_r2_47;
    void *temp_r2_61;
    void *temp_r2_75;
    void *temp_r2_90;
    void *temp_r3_46;
    void *temp_r3_60;
    void *temp_r3_89;

    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x208))));
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368))) = 0;
    *(*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368))) = 0;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (4))) = 0;
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (4))) = 0;
    temp_r3_46 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_47 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r2_47) + (0x351))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r2_47) + (0x351))));
    (*(u8 *)((s8 *)(temp_r3_46) + (0x351))) = (u8) (-0x41 & (*(u8 *)((s8 *)(temp_r3_46) + (0x351))));
    temp_r3_60 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_61 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r2_61) + (0x358))) = (u8) (-9 & (*(u8 *)((s8 *)(temp_r2_61) + (0x358))));
    (*(u8 *)((s8 *)(temp_r3_60) + (0x358))) = (u8) (-9 & (*(u8 *)((s8 *)(temp_r3_60) + (0x358))));
    temp_r2_75 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r1_76 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r1_76) + (0x210))) = (u8) ((*(u8 *)((s8 *)(temp_r1_76) + (0x210))) | 8);
    (*(u8 *)((s8 *)(temp_r2_75) + (0x210))) = (u8) ((*(u8 *)((s8 *)(temp_r2_75) + (0x210))) | 8);
    temp_r3_89 = (*(void **)((s8 *)(arg0) + (0x204)));
    temp_r2_90 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r2_90) + (0x20D))) = (u8) (-0x21 & (*(u8 *)((s8 *)(temp_r2_90) + (0x20D))));
    (*(u8 *)((s8 *)(temp_r3_89) + (0x20D))) = (u8) (-0x21 & (*(u8 *)((s8 *)(temp_r3_89) + (0x20D))));
    temp_r1_103 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u16 *)((s8 *)(temp_r1_103) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
    (*(u16 *)((s8 *)(temp_r1_103) + (0x260))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x100)));
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x208))) | 1);
    temp_r2_122 = (*(void **)((s8 *)(arg0) + (0x204)));
    (*(u8 *)((s8 *)(temp_r2_122) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r2_122) + (0x214)))) | 3);
    temp_r0_134 = (*(void **)((s8 *)(arg0) + (0x200)));
    (*(u8 *)((s8 *)(temp_r0_134) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r0_134) + (0x214)))) | 3);
    (*(u8 *)((s8 *)(arg0) + (0x208))) = (s32) ((s32) (*(u8 *)((s8 *)(arg0) + (0x208))) & 0xFFFE7FFF);
    (*(u8 *)((s8 *)(arg0) + (0x246))) = (u8) (-0x1D & (*(u8 *)((s8 *)(arg0) + (0x246))));
    temp_r1_155 = (*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_155) + (0x10))) = (u8) (*(u8 *)((s8 *)(temp_r1_155) + (0x12)));
    (*(s8 *)((s8 *)((*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x200)))) + (0x368)))) + (0x12))) = 0xFF;
    temp_r1_166 = (*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)));
    (*(u8 *)((s8 *)(temp_r1_166) + (0x11))) = (u8) (*(u8 *)((s8 *)(temp_r1_166) + (0x15)));
    (*(s8 *)((s8 *)((*(s8 **)((s8 *)((*(void **)((s8 *)(arg0) + (0x204)))) + (0x368)))) + (0x15))) = -1;
    sub_8049000((*(void **)((s8 *)(arg0) + (0x204))), 0x1001);
    sub_8049000((*(void **)((s8 *)(arg0) + (0x200))), 0x1002);
    sub_802E4C8(arg0, 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_803AFCC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
