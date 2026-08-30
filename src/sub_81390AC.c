#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81390AC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81390AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81390FC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813915C.s\"");
#else
void sub_813915C(s32 arg0, void *arg1, s32 *arg2) {
    u16 temp_r0_17;
    void *temp_r0_11;

    temp_r0_11 = (*(void **)((s8 *)(arg1) + (0x344)));
    temp_r0_17 = (*(u16 *)((s8 *)(temp_r0_11) + (0x1D2))) - 1;
    (*(u16 *)((s8 *)(temp_r0_11) + (0x1D2))) = temp_r0_17;
    if ((temp_r0_17 << 0x10) == 0) {
        (*(u8 *)((s8 *)(arg1) + (0x1D6))) = (u8) (((*(u8 *)((s8 *)(arg1) + (0x1D6))) | 1) & ~2);
        *arg2 = (*(s32 *)((s8 *)(temp_r0_11) + (0x1AC)));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81391A0.s\"");
#else
void sub_81391A0(void *arg0) {
    s32 var_r0_38;
    s32 var_r1_17;

    var_r1_17 = M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */);
    if (var_r1_17 < 0) {
        var_r1_17 += 0x7F;
    }
    (*(s32 *)((s8 *)(arg0) + (0x18))) = (s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) + (var_r1_17 >> 7));
    var_r0_38 = (M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) * (s8) (*(u8 *)((s8 *)(arg0) + (0x239)))) + 8;
    if (var_r0_38 < 0) {
        var_r0_38 += 0xF;
    }
    (*(u8 *)((s8 *)(arg0) + (0x2F4))) = (s32) (u8) ((var_r0_38 >> 4) + (s32) (*(u8 *)((s8 *)(arg0) + (0x2F4))));
}
#endif
