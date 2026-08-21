#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F9668 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9668.s\"");
#else
s32 sub_80F9668(void *arg0, void *arg1) {
    s32 temp_r0_46;
    s32 temp_r4_43;
    u8 temp_r2_81;
    void *temp_r1_29;
    void *temp_r1_77;

    if ((*(s32 *)((s8 *)(arg1) + (0))) != (*(s32 *)((s8 *)(arg1) + (4)))) {
        return 0;
    }
    if (8 & (*(u16 *)((s8 *)(arg1) + (0xA0)))) {
        temp_r1_29 = (*(void **)((s8 *)(arg0) + (0x24))) + (0xA8 * (*(u8 *)((s8 *)(arg1) + (0xA4))));
        (*(u16 *)((s8 *)(temp_r1_29) + (0xA0))) = (u16) (0xFFFB & (*(u16 *)((s8 *)(temp_r1_29) + (0xA0))));
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (0xFFF7 & (*(u16 *)((s8 *)(arg1) + (0xA0))));
    }
    temp_r4_43 = (*(u16 *)((s8 *)(arg1) + (0xA0))) & ~1;
    if (temp_r4_43 == 0) {
        temp_r0_46 = (*(s32 *)((s8 *)(arg1) + (8)));
        if (temp_r0_46 != 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = temp_r0_46;
            (*(s32 *)((s8 *)(arg1) + (4))) = (s32) (*(s32 *)((s8 *)(arg1) + (0xC)));
            (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) (*(u16 *)((s8 *)(arg1) + (0xA2)));
            (*(u8 *)((s8 *)(arg1) + (0xA4))) = (u8) (*(u8 *)((s8 *)(arg1) + (0xA5)));
            (*(s32 *)((s8 *)(arg1) + (0xC))) = temp_r4_43;
            (*(s32 *)((s8 *)(arg1) + (8))) = temp_r4_43;
            (*(u16 *)((s8 *)(arg1) + (0xA2))) = (u16) temp_r4_43;
            (*(u8 *)((s8 *)(arg1) + (0xA5))) = 0U;
            return 0;
        }
        (*(u16 *)((s8 *)(arg1) + (0xA0))) = (u16) temp_r0_46;
        goto block_8;
    }
block_8:
    temp_r1_77 = (*(void **)((s8 *)(arg0) + (0x24)));
    temp_r2_81 = (*(u8 *)((s8 *)(temp_r1_77) + (0x9A0)));
    if ((temp_r2_81 == 0) && ((*(u8 *)((s8 *)(temp_r1_77) + (0x9A1))) != 1)) {
        (*(u8 *)((s8 *)(temp_r1_77) + (0x9A1))) = temp_r2_81;
    }
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/stc_script_execute_next_command.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9D5C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F9E64.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
