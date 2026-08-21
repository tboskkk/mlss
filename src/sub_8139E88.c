#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8139E88 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139E88.s\"");
#else
s32 sub_80FBDE0(s32 *, s32, s32, s32);          /* extern */

s8 sub_8139E88(void *arg0, void *arg1, s32 arg2) {
    s32 sp0;
    s32 temp_r0_56;
    s8 var_r4_13;

    var_r4_13 = -1;
    (*(s16 *)((s8 *)(&sp0) + (0))) = (s16) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10) - arg2);
    (*(s16 *)((s8 *)(&sp0) + (6))) = (s16) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10) - arg2);
    (*(s16 *)((s8 *)(&sp0) + (2))) = (s16) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10) + arg2);
    (*(s16 *)((s8 *)(&sp0) + (4))) = (s16) ((M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) * 0x10) + arg2);
    if ((sub_80FBDE0(&sp0, (*(s32 *)((s8 *)(arg0) + (0x28))), 0x7FFF, 0) << 0x18) != 0) {
        var_r4_13 = 0;
    }
    if ((sub_80FBDE0(&sp0, (*(s32 *)((s8 *)(arg0) + (0x2C))), 0x7FFF, 0) << 0x18) != 0) {
        temp_r0_56 = var_r4_13 << 0x18;
        var_r4_13 = 1;
        if (temp_r0_56 == 0) {
            var_r4_13 = 2;
        }
    }
    return var_r4_13;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139F08.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8139FB0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A068.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A284.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A44C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A5C8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813A818.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AA5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813AC5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_813ADF0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
