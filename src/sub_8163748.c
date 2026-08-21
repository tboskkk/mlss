#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8163748 needs.

asm_unified(".include \"asm/macros.inc\"");

s32 sub_8163748(s32 *arg0) {
    s32 var_r1_7;

    var_r1_7 = 0;
    if (*arg0 == 0) {
        var_r1_7 = 1;
    }
    return var_r1_7;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_816375C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81637AC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8163804.s\"");
#else
void sub_8163804(void *arg0, s32 arg1) {
    void *temp_r2_10;
    void *temp_r2_21;
    void *temp_r2_32;

    temp_r2_10 = (*(void **)((s8 *)(arg0) + (4)));
    if (temp_r2_10 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_10) + (0xC)))) + (0xC)))(temp_r2_10 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
    temp_r2_21 = (*(void **)((s8 *)((arg0 + 4)) + (4)));
    if (temp_r2_21 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_21) + (0xC)))) + (0xC)))(temp_r2_21 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
    temp_r2_32 = (*(void **)((s8 *)(arg0) + (0xC)));
    if (temp_r2_32 != NULL) {
        (*(s32 (**)(void *, s32))((s8 *)((*(void **)((s8 *)(temp_r2_32) + (0xC)))) + (0xC)))(temp_r2_32 + M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */), 3);
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}
#endif
