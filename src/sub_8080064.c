#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8080064 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8080064.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_8087CE4();                                  /* extern */
s32 sub_80DF024(s32, s32, s32, s32, void *);    /* extern */
extern s32 sub_8080220;

void sub_8080064(void *arg0) {
    s32 var_r1_36;
    s32 var_r2_19;
    s32 var_r2_42;
    s32 var_r3_48;
    void *temp_r2_28;

    if ((sub_8087CE4() << 0x18) == 0) {
        var_r2_19 = 0x2068;
        if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
            var_r2_19 = 0x2039;
        }
        sub_8082E1C(arg0, 0xC, var_r2_19, 0);
        temp_r2_28 = (*(void **)((s8 *)(arg0) + (8)));
        (*(u8 *)((s8 *)(temp_r2_28) + (0x12))) = (u8) ((-7 & (*(u8 *)((s8 *)(temp_r2_28) + (0x12)))) | 2);
        var_r1_36 = (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r1_36 < 0) {
            var_r1_36 += 0xFF;
        }
        var_r2_42 = (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r2_42 < 0) {
            var_r2_42 += 0xFF;
        }
        var_r3_48 = (*(s32 *)((s8 *)(arg0) + (0x40)));
        if (var_r3_48 < 0) {
            var_r3_48 += 0xFF;
        }
        sub_80DF024(0x33, var_r1_36 >> 8, var_r2_42 >> 8, var_r3_48 >> 8, arg0);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8080220;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80800DC.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
s32 sub_80F7538(s32);                           /* extern */

void sub_80800DC(void *arg0) {
    void *temp_r0_55;
    void *temp_r2_46;
    void *temp_r4_8;

    temp_r4_8 = (*(void **)((s8 *)(arg0) + (8)));
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(temp_r4_8) + (8)))) + (0x12)))) {
        if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) == -1) {
            sub_8082E1C(temp_r4_8, 1, 0x2039, 0);
            play_sfx_80195B4(0x14A, -1);
        } else {
            sub_8082E1C(temp_r4_8, 1, 0x2068, 0);
            play_sfx_80195B4(0x14E, -1);
        }
        temp_r2_46 = (*(void **)((s8 *)(temp_r4_8) + (8)));
        (*(u8 *)((s8 *)(temp_r2_46) + (0x12))) = (u8) (-7 & (*(u8 *)((s8 *)(temp_r2_46) + (0x12))));
        sub_80F7538(0x80000);
        temp_r0_55 = (*(void **)((s8 *)(temp_r4_8) + (0x28)));
        (*(u8 *)((s8 *)(temp_r0_55) + (0x111))) = (u8) (-2 & (*(u8 *)((s8 *)(temp_r0_55) + (0x111))));
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8080168.s\"");
#else
#error "TODO: write sub_8080168 to match asm/nonmatching/sub_8080168.s, then delete this #error"
#endif
