#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802563C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802563C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025ACC.s\"");
#else
s32 sub_804034C(void *);                        /* extern */
s32 sub_80465D8(void *);                        /* extern */

void sub_8025ACC(void *arg0) {
    s32 var_r5_56;
    u8 var_r0_11;
    u8 var_r1_42;
    void **var_r4_52;
    void *temp_r0_105;
    void *temp_r0_121;
    void *temp_r0_130;
    void *temp_r0_67;
    void *temp_r0_76;
    void *temp_r0_88;
    void *temp_r0_96;

    var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x10E)));
    if ((var_r0_11 != 0) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x110))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x112))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x114))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x116))), (var_r0_11 != 0)) || (var_r0_11 = (*(u8 *)((s8 *)(arg0) + (0x11A))), var_r1_42 = 0, (var_r0_11 != 0))) {
        var_r1_42 = var_r0_11;
    }
    if ((s32) var_r1_42 > 0) {
        var_r4_52 = arg0 + ((var_r1_42 * 4) + 0x28);
        var_r5_56 = (*(u8 *)((s8 *)(arg0) + (0x10B))) - var_r1_42;
        if ((var_r5_56 != 0) && (!(1 & var_r5_56) || (sub_80465D8(*var_r4_52), temp_r0_67 = *var_r4_52, (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_67) + (0x338))) + 0x68)) + (4)))(temp_r0_67 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */)), temp_r0_76 = *var_r4_52, (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_76) + (0x338))) + 0x70)) + (4)))(temp_r0_76 + M2C_ERROR(/* unknown instruction: ldsh $r2, ($mem_loc_fictive_) */), arg0 + 0x28, 0), temp_r0_88 = *var_r4_52, var_r4_52 += 4, sub_804034C(temp_r0_88), var_r5_56 -= 1, (var_r5_56 != 0)))) {
            do {
                sub_80465D8((*(void **)((s8 *)(var_r4_52) + (0))));
                temp_r0_96 = (*(void **)((s8 *)(var_r4_52) + (0)));
                (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_96) + (0x338))) + 0x68)) + (4)))(temp_r0_96 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
                temp_r0_105 = (*(void **)((s8 *)(var_r4_52) + (0)));
                (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_105) + (0x338))) + 0x70)) + (4)))(temp_r0_105 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0 + 0x28, 0);
                sub_804034C((*(void **)((s8 *)(var_r4_52) + (0))));
                sub_80465D8((*(void **)((s8 *)(var_r4_52) + (4))));
                temp_r0_121 = (*(void **)((s8 *)(var_r4_52) + (4)));
                (*(s32 (**)(void *))((s8 *)(((*(s32 *)((s8 *)(temp_r0_121) + (0x338))) + 0x68)) + (4)))(temp_r0_121 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */));
                temp_r0_130 = (*(void **)((s8 *)(var_r4_52) + (4)));
                (*(s32 (**)(void *, void *, s32))((s8 *)(((*(s32 *)((s8 *)(temp_r0_130) + (0x338))) + 0x70)) + (4)))(temp_r0_130 + M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */), arg0 + 0x28, 0);
                sub_804034C((*(void **)((s8 *)(var_r4_52) + (4))));
                var_r5_56 -= 2;
                var_r4_52 += 8;
            } while (var_r5_56 != 0);
        }
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8025C04.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
