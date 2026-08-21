#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815FACC needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_815FACC(void *arg0) {
    s32 temp_r2_10;
    s32 temp_r3_6;

    temp_r3_6 = (*(s32 *)((s8 *)(arg0) + (4)));
    (*(s16 *)((s8 *)(arg0) + (0x14))) = (s16) (temp_r3_6 - (*(s32 *)((s8 *)(arg0) + (0xC))));
    temp_r2_10 = (*(s32 *)((s8 *)(arg0) + (8)));
    (*(s16 *)((s8 *)(arg0) + (0x18))) = (s16) (temp_r2_10 - (*(s32 *)((s8 *)(arg0) + (0x10))));
    (*(s32 *)((s8 *)(arg0) + (0xC))) = temp_r3_6;
    (*(s32 *)((s8 *)(arg0) + (0x10))) = temp_r2_10;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FAE4.s\"");
#else
void sub_815FAE4(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) + M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */));
    (*(s32 *)((s8 *)(arg0) + (8))) = (s32) ((*(s32 *)((s8 *)(arg0) + (8))) + M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */) + arg1);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FAFC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FB14.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FB88.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815FEF8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
