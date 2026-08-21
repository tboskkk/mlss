#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_802C068 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C068.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C208.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802C390.s\"");
#else
void sub_802C390(void *arg0) {
    s32 temp_r1_12;
    s32 temp_r1_50;

    temp_r1_12 = 0x180 & (*(u16 *)((s8 *)(arg0) + (0x20A)));
    if ((temp_r1_12 == 0x100) || ((temp_r1_12 == 0) && !(0x33 & ((u32) (*(u16 *)0x030003C4 << 0x16) >> 0x16)))) {
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r1, ($mem_loc_fictive_) */) > -0x38) {
            (*(u16 *)((s8 *)(arg0) + (0x244))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x244))) - 8);
        }
    } else {
        temp_r1_50 = 0x180 & (*(u16 *)((s8 *)(arg0) + (0x20A)));
        if (((temp_r1_50 == 0x80) || ((temp_r1_50 == 0) && (0x33 & ((u32) (*(u32 *)0x030003C4 << 0x16) >> 0x16)))) && ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) < 0)) {
            (*(u16 *)((s8 *)(arg0) + (0x244))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x244))) + 8);
        }
    }
}
#endif
