#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8161C9C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161C9C.s\"");
#else
void sub_8161C9C(void *arg0, s32 arg1, s32 arg2) {
    s16 temp_r0_17;
    s16 var_r0_33;
    u16 temp_r0_26;
    void *temp_r2_9;
    void *temp_r3_12;

    temp_r2_9 = (*(void **)((s8 *)(arg0) + (0x10)));
    if (temp_r2_9 != NULL) {
        temp_r3_12 = (*(void **)((s8 *)(arg0) + (0x14)));
        if (temp_r3_12 != NULL) {
            temp_r0_17 = ((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) >> 8) - arg1;
            (*(s16 *)((s8 *)(temp_r3_12) + (0))) = temp_r0_17;
            (*(s16 *)((s8 *)(temp_r2_9) + (0))) = temp_r0_17;
            temp_r0_26 = ((s32) ((*(s32 *)((s8 *)(arg0) + (0x1C))) + (*(s32 *)((s8 *)(arg0) + (0x20)))) >> 8) - arg2;
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x14)))) + (2))) = temp_r0_26;
            (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (2))) = temp_r0_26;
            var_r0_33 = ((s32) (*(s32 *)((s8 *)(arg0) + (0x3C))) >> 8) + (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (2)));
        } else {
            (*(s16 *)((s8 *)(temp_r2_9) + (0))) = (s16) (((s32) (*(s32 *)((s8 *)(arg0) + (0x18))) >> 8) - arg1);
            var_r0_33 = ((s32) ((*(s32 *)((s8 *)(arg0) + (0x1C))) + (*(s32 *)((s8 *)(arg0) + (0x3C))) + (*(s32 *)((s8 *)(arg0) + (0x20)))) >> 8) - arg2;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (2))) = var_r0_33;
        if ((s32) M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) > 0xD0) {
            (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (0))) = 0x178;
        }
        (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0x10)))) + (0xE))) = (s16) ((*(u16 *)((s8 *)(arg0) + (0x50))) - (((s32) (*(s32 *)((s8 *)(arg0) + (0x20))) >> 8) + 0xFFFFFC00));
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161D20.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161DA0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8161E38.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81627B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816289C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
