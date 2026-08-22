#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8064B88 needs.

asm_unified(".include \"asm/macros.inc\"");


s32 sub_807C298();

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064B88.s\"");
#else
extern s32 sub_8064C00;

void sub_8064B88(void *arg0) {
    s32 var_r0_39;
    s32 var_r0_52;
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_8) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_8) + (0xC))) + 0x1000);
    (*(s32 *)((s8 *)(arg0) + (0x10))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x10))) - (*(s32 *)((s8 *)(arg0) + (0x9C))));
    (*(s32 *)((s8 *)(arg0) + (0x9C))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x9C))) - 0x11);
    (*(s32 *)((s8 *)(arg0) + (0x14))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) + (*(s32 *)((s8 *)(arg0) + (0xA0))));
    if ((s32) (*(s32 *)((s8 *)(arg0) + (0x10))) > 0x4000) {
        var_r0_39 = (*(s32 *)((s8 *)(arg0) + (0x84))) - (*(s32 *)((s8 *)(arg0) + (0x38)));
        if (var_r0_39 < 0) {
            var_r0_39 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xAE))) = (s16) (var_r0_39 >> 8);
        var_r0_52 = (*(s32 *)((s8 *)(arg0) + (0x88))) - (*(s32 *)((s8 *)(arg0) + (0x3C)));
        if (var_r0_52 < 0) {
            var_r0_52 += 0xFF;
        }
        (*(s16 *)((s8 *)(arg0) + (0xB0))) = (s16) (var_r0_52 >> 8);
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064C00;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064C00.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064C80.s\"");
#else
s32 sub_807C298(void *);                        /* extern */

void sub_8064C80(void *arg0) {
    void *temp_r1_8;

    temp_r1_8 = (*(void **)((s8 *)(arg0) + (8)));
    (*(u16 *)((s8 *)(temp_r1_8) + (0xC))) = (u16) ((*(u16 *)((s8 *)(temp_r1_8) + (0xC))) + 0x1000);
    if ((*(s32 *)((s8 *)(arg0) + (0x80))) == 0) {
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x28)))) + (0xB4))) = 1;
        sub_807C298(arg0);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064CB0.s\"");
#else
s32 stop_sfx_80195A8(s32);                      /* extern */
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8064DDC;

void sub_8064CB0(void *arg0) {
    s32 temp_r0_10;
    s32 var_r1_23;

    temp_r0_10 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (temp_r0_10 != 0) {
        if (temp_r0_10 == 1) {
            if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
                stop_sfx_80195A8(0x117);
                var_r1_23 = 7;
            } else {
                stop_sfx_80195A8(0x117);
                var_r1_23 = 0xB;
            }
            goto block_7;
        }
        if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
            var_r1_23 = 8;
block_7:
            sub_8082E1C(arg0, var_r1_23, 0, 0);
        } else {
            sub_8082E1C(arg0, 0xC, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064DDC;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064D20.s\"");
#else
s32 sub_8082E1C(void *, s32, s32, s32);         /* extern */
extern s32 sub_8064614;

void sub_8064D20(void *arg0) {
    if (8 & (*(u8 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0x12)))) {
        if ((*(s32 *)((s8 *)(arg0) + (0xA0))) == 0) {
            sub_8082E1C(arg0, 5, 0, 0);
        } else {
            sub_8082E1C(arg0, 9, 0, 0);
        }
        (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064614;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8064D64.s\"");
#else
extern s32 sub_8064E08;

s32 sub_8064D64(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0xA0))) = 0;
    if (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) == -1) {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 0;
    } else {
        (*(s32 *)((s8 *)(arg0) + (0x9C))) = 1;
    }
    (*(s32 **)((s8 *)(arg0) + (0x4C))) = &sub_8064E08;
    return 1;
}
#endif
