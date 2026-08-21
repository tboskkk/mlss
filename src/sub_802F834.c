#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802F834 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F834.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802F938.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802FAE4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802FD70.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80303C4.s\"");
#else
void sub_80303C4(void *arg0, void *arg1) {
    u8 temp_r0_29;
    u8 var_r0_59;
    u8 var_r4_22;
    u8 var_r4_72;

    if (((*(u8 *)((s8 *)(arg0) + (0x10E))) != 0) && (0x80 & (*(u8 *)((s8 *)(arg1) + (0x352))))) {
        var_r4_22 = (*(u8 *)((s8 *)(arg0) + (0x10E)));
    } else {
        temp_r0_29 = (*(u8 *)((s8 *)(arg0) + (0x110)));
        var_r4_22 = 0;
        if (temp_r0_29 != 0) {
            var_r4_22 = temp_r0_29;
        }
    }
    if ((s32) var_r4_22 > 0) {
        (*(s32 (**)(void *, void *, s32, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg0 + ((var_r4_22 * 4) + 0x28), (*(u8 *)((s8 *)(arg0) + (0x10B))) - var_r4_22, 0);
    }
    var_r0_59 = (*(u8 *)((s8 *)(arg0) + (0x114)));
    if ((var_r0_59 != 0) || (var_r0_59 = (*(u8 *)((s8 *)(arg0) + (0x116))), (var_r0_59 != 0)) || (var_r0_59 = (*(u8 *)((s8 *)(arg0) + (0x11A))), var_r4_72 = 0, (var_r0_59 != 0))) {
        var_r4_72 = var_r0_59;
    }
    if ((s32) var_r4_72 > 0) {
        (*(s32 (**)(void *, void *, s32, s32))((s8 *)(((*(s32 *)((s8 *)(arg1) + (0x338))) + 0x60)) + (4)))(arg1 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), arg0 + ((var_r4_72 * 4) + 0x28), (*(u8 *)((s8 *)(arg0) + (0x10B))) - var_r4_72, 0);
    }
}
#endif
