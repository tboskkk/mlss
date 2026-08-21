#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047804 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047804.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047858.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80478AC.s\"");
#else
void sub_80478AC(void *arg0, u8 arg1) {
    u8 temp_r1_9;

    temp_r1_9 = arg1;
    (*(u8 *)((s8 *)(arg0) + (0x24))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x24)))) | (temp_r1_9 & 7));
    (*(u8 *)((s8 *)(arg0) + (2))) = (u8) (temp_r1_9 << 5);
    (*(u8 *)((s8 *)(arg0) + (0x4C))) = (u8) ((-8 & (*(u8 *)((s8 *)(arg0) + (0x4C)))) | (((u32) ((*(u8 *)((s8 *)(arg0) + (0x24))) << 0x1D) >> 0x1D) & 7));
    (*(u8 *)((s8 *)(arg0) + (0x2A))) = (u8) (*(u8 *)((s8 *)(arg0) + (2)));
    (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(arg0) + (0x338)))) + (0x3C)))(M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) + arg0, 0);
}
#endif
