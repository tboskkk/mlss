#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_815DC94 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815DC94.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815DE30.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

s32 sub_815A6D8(void *);                            /* extern */
void *sub_815E1A0(void *, void *);                  /* extern */
s32 sub_815EA08();                              /* extern */

s32 sub_815E114(void *arg0, void *arg1) {
    s32 temp_r0_13;
    void *temp_r1_16;
    void *temp_r1_39;
    void *temp_r4_51;

    if ((*(s32 *)((s8 *)(arg0) + (0))) == 0) {
        temp_r0_13 = sub_815A6D8(arg1);
        if (temp_r0_13 == 1) {
            temp_r1_16 = (*(void **)((s8 *)(arg0) + (4)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_16) + (0xC)))(arg0 + (*(s16 *)((s8 *)(temp_r1_16) + (8))), 3);
            (*(void **)((s8 *)(arg1) + (0x1E94))) = sub_815E1A0(alloc_Zero(0x1CU, 1U, (s8 *)0x082127A8, 0U), arg1);
        } else if (temp_r0_13 == 2) {
            temp_r1_39 = (*(void **)((s8 *)(arg0) + (4)));
            (*(s32 (**)(void *, s32))((s8 *)(temp_r1_39) + (0xC)))(arg0 + (*(s16 *)((s8 *)(temp_r1_39) + (8))), 3);
            temp_r4_51 = alloc_Zero(0x18U, 1U, (s8 *)0x082127A8, 0U);
            sub_815EA08();
            (*(s32 *)((s8 *)(temp_r4_51) + (4))) = 0x08CDCA70;
            (*(void **)((s8 *)(arg1) + (0x1E94))) = temp_r4_51;
        }
    }
    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E1A0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E2D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815E63C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
