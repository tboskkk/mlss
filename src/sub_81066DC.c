#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81066DC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81066DC.s\"");
#else
s32 sub_807F6D0();                              /* extern */
extern s32 sub_81063A8;

void sub_81066DC(void *arg0) {
    void *temp_r1_18;

    if (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) != 0) {
        (*(u16 *)((s8 *)(arg0) + (0x10))) = (u16) ((*(u16 *)((s8 *)(arg0) + (0x10))) - 1);
        return;
    }
    temp_r1_18 = *(void **)0x03000FD8;
    if (((*(s32 *)((s8 *)(temp_r1_18) + (0x27C))) | (*(s32 *)((s8 *)(temp_r1_18) + (0x280)))) == 0) {
        sub_807F6D0();
        (*(u16 *)((s8 *)(arg0) + (0x10))) = 0x20U;
        (*(s32 **)((s8 *)(arg0) + (4))) = &sub_81063A8;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106724.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8106790.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
