#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_816127C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816127C.s\"");
#else
void sub_816127C(void *arg0, void *arg1) {
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (0))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (0x14))) - (*(s32 *)((s8 *)(arg1) + (0)))) >> 8);
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = (s16) ((s32) ((*(s32 *)((s8 *)(arg0) + (0x18))) - (*(s32 *)((s8 *)(arg1) + (4)))) >> 8);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816129C.s\"");
#else
void sub_816129C(void *arg0, s32 arg1) {
    u8 temp_r0_17;
    void *temp_r3_10;

    temp_r3_10 = (*(void **)((s8 *)(arg0) + (0xC)));
    temp_r0_17 = 0x40 & (*(u8 *)((s8 *)(temp_r3_10) + (0x29)));
    if (temp_r0_17 == 0) {
        sub_801E150(temp_r3_10, M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */), -1, 0, (s32) temp_r0_17);
    }
    if (arg1 != 0) {
        sprite_show_8020CBC((*(void **)((s8 *)(arg0) + (0xC))));
        return;
    }
    sprite_hide_8021F20((*(void **)((s8 *)(arg0) + (0xC))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81612E4.s\"");
#else
s32 sub_8021308(s32);                           /* extern */

void sub_81612E4(void *arg0) {
    sub_8021308((*(s32 *)((s8 *)(arg0) + (0xC))));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81612F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
