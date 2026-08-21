#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81064F8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81064F8.s\"");
#else
extern s32 sub_8106650;

void sub_81064F8(void *arg0) {
    s32 var_r0_16;
    s32 var_r2_43;
    void *temp_r0_10;
    void *temp_r3_9;

    temp_r3_9 = *(void **)0x03000FD8;
    temp_r0_10 = (*(void **)((s8 *)(temp_r3_9) + (0)));
    var_r0_16 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    if (var_r0_16 < 0) {
        var_r0_16 += 0xFF;
    }
    (*(u16 *)((s8 *)(temp_r0_10) + (0x40))) = (u16) (((*(u16 *)((s8 *)(temp_r0_10) + (0x40))) - 1) - (var_r0_16 >> 8));
    (*(u16 *)((s8 *)(arg0) + (0x18))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x18))) + 0x19);
    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    var_r2_43 = 0xE8;
    if (4 & (*(u8 *)((s8 *)(temp_r3_9) + (0x2C0)))) {
        var_r2_43 = 0xFA;
    }
    play_sfx_80195B4(var_r2_43, -1);
    (*(u16 *)((s8 *)(arg0) + (0x10))) = 0x28U;
    (*(s32 **)((s8 *)(arg0) + (4))) = &sub_8106650;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106564.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
