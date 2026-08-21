#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80501EC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80501EC.s\"");
#else
s32 sub_80E9958(s32, s32, s32, s32);            /* extern */

void sub_80501EC(void *arg0) {
    void *temp_r0_75;
    void *temp_r1_35;
    void *temp_r1_71;
    void *temp_r2_54;

    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20C))));
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((-7 & (*(u8 *)((s8 *)(arg0) + (0x33C)))) | 2);
    temp_r1_35 = (*(void **)((s8 *)(arg0) + (0x294)));
    (*(u8 *)((s8 *)(temp_r1_35) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_35) + (0x12))) | 0x10);
    (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(arg0) + (0x338))) + 0x80)) + (4)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 2);
    temp_r2_54 = (*(void **)((s8 *)(arg0) + (0x344)));
    if ((temp_r2_54 != NULL) && (2 & (*(u8 *)((s8 *)(temp_r2_54) + (0x20F))))) {
        (*(u8 *)((s8 *)(temp_r2_54) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(temp_r2_54) + (0x20C))));
        temp_r1_71 = (*(void **)((s8 *)((*(void **)((s8 *)(arg0) + (0x344)))) + (0x294)));
        (*(u8 *)((s8 *)(temp_r1_71) + (0x12))) = (u8) ((*(u8 *)((s8 *)(temp_r1_71) + (0x12))) | 0x10);
        temp_r0_75 = (*(void **)((s8 *)(arg0) + (0x344)));
        (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_75) + (0x338))) + 0x80)) + (4)))(temp_r0_75 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), 2);
    }
    sub_80E9958(*(s32 *)0x03000FC0 + 0x38C, 0, ((u32) ((*(s32 *)((s8 *)(arg0) + (0x22C))) << 0xA) >> 0x14) + 0x960, 1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80502C8.s\"");
#else
void sub_80502C8(void *arg0) {
    u8 temp_r2_32;
    void *temp_r0_108;
    void *temp_r2_93;

    (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(arg0) + (0x20C))));
    (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((-7 & (*(u8 *)((s8 *)(arg0) + (0x33C)))) | 4);
    temp_r2_32 = (*(u8 *)((s8 *)(arg0) + (0x33E)));
    if (3 & temp_r2_32) {
        (*(u8 *)((s8 *)(arg0) + (0x33E))) = (u8) (-4 & temp_r2_32);
        (*(s32 *)((s8 *)(arg0) + (0x18))) = 0;
        (*(u8 *)((s8 *)(arg0) + (0x20D))) = (u8) ((-0x21 & (*(u8 *)((s8 *)(arg0) + (0x20D)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x33E))) << 0x1D) >> 0x1F) << 5));
        (*(u8 *)((s8 *)(arg0) + (2))) = (u8) (*(u8 *)((s8 *)(arg0) + (0x33F)));
        (*(s8 *)((s8 *)(arg0) + (0x23A))) = 0;
        (*(u8 *)((s8 *)(arg0) + (0x33D))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x33D)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x33C))) << 0x19) >> 0x1D));
        (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (-9 & (*(u8 *)((s8 *)(arg0) + (0x33C))));
    }
    (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(arg0) + (0x338))) + 0x80)) + (4)))(arg0 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 1);
    temp_r2_93 = (*(void **)((s8 *)(arg0) + (0x344)));
    if ((temp_r2_93 != NULL) && (2 & (*(u8 *)((s8 *)(temp_r2_93) + (0x20F))))) {
        (*(u8 *)((s8 *)(temp_r2_93) + (0x20C))) = (u8) (-2 & (*(u8 *)((s8 *)(temp_r2_93) + (0x20C))));
        temp_r0_108 = (*(void **)((s8 *)(arg0) + (0x344)));
        (*(s32 (**)(void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_108) + (0x338))) + 0x80)) + (4)))(temp_r0_108 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), 1);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80503CC.s\"");
#else
void sub_80503CC(void *arg0) {
    s32 temp_r2_14;
    u8 temp_r1_55;
    void *temp_r1_71;
    void *temp_r2_37;
    void *temp_r3_52;

    temp_r2_14 = 6 & (*(u8 *)((s8 *)(arg0) + (0x33C)));
    if ((temp_r2_14 != 0) && !(0x180 & (*(u16 *)((s8 *)(arg0) + (0x212))))) {
        if (temp_r2_14 == 4) {
            (*(u8 *)((s8 *)(arg0) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x20C))) | 1);
            temp_r2_37 = (*(void **)((s8 *)(arg0) + (0x344)));
            if ((temp_r2_37 != NULL) && (2 & (*(u8 *)((s8 *)(temp_r2_37) + (0x20F))))) {
                (*(u8 *)((s8 *)(temp_r2_37) + (0x20C))) = (u8) ((*(u8 *)((s8 *)(temp_r2_37) + (0x20C))) | 1);
                temp_r3_52 = (*(void **)((s8 *)(arg0) + (0x344)));
                temp_r1_55 = (*(u8 *)((s8 *)(temp_r3_52) + (0x33C)));
                if (2 & temp_r1_55) {
                    (*(u8 *)((s8 *)(temp_r3_52) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(temp_r3_52) + (0x214)))) | ((u32) (temp_r1_55 << 0x1B) >> 0x1D));
                    temp_r1_71 = (*(void **)((s8 *)(arg0) + (0x344)));
                    (*(u8 *)((s8 *)(temp_r1_71) + (0x33C))) = (u8) (-3 & (*(u8 *)((s8 *)(temp_r1_71) + (0x33C))));
                }
            }
            if (0x80 & (*(u8 *)((s8 *)(arg0) + (0x33C)))) {
                (*(u8 *)((s8 *)(arg0) + (0x214))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x214)))) | ((u32) ((*(u8 *)((s8 *)(arg0) + (0x33D))) << 0x1D) >> 0x1D));
                (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (0x7F & (*(u8 *)((s8 *)(arg0) + (0x33C))));
            }
            (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x33C))) | 1);
        }
        (*(u8 *)((s8 *)(arg0) + (0x33C))) = (u8) (-7 & (*(u8 *)((s8 *)(arg0) + (0x33C))));
    }
}
#endif
