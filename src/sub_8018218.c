#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8018218 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8018218.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80183A4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80184F4.s\"");
#else
s32 sub_80184F4(s32 arg0) {
    s32 temp_r0_44;
    s32 var_r2_41;
    s32 var_r3_12;
    s32 var_r4_22;
    void *temp_r0_46;
    void *temp_r0_62;
    void *temp_r1_45;

    var_r3_12 = 0;
    if ((s32) (*(u8 *)((s8 *)((void *)0x0300034C) + (8))) > 0) {
        var_r4_22 = 0;
loop_2:
        if ((*(s32 *)((s8 *)((var_r4_22 + (*(s32 *)((s8 *)((void *)0x0300034C) + (4))))) + (4))) == arg0) {
            *(s16 *)0x04000208 = 0;
            if (var_r3_12 < (s32) ((*(u8 *)((s8 *)((void *)0x0300034C) + (8))) - 1)) {
                var_r2_41 = (var_r3_12 * 0x10) + 0x10;
                do {
                    temp_r0_44 = (*(s32 *)((s8 *)((void *)0x0300034C) + (4)));
                    temp_r1_45 = var_r4_22 + temp_r0_44;
                    temp_r0_46 = var_r2_41 + temp_r0_44;
                    (*(s32 *)((s8 *)(temp_r1_45) + (0))) = (s32) (*(s32 *)((s8 *)(temp_r0_46) + (0)));
                    (*(s32 *)((s8 *)(temp_r1_45) + (4))) = (s32) (*(s32 *)((s8 *)(temp_r0_46) + (4)));
                    (*(s32 *)((s8 *)(temp_r1_45) + (8))) = (s32) (*(s32 *)((s8 *)(temp_r0_46) + (8)));
                    (*(s32 *)((s8 *)(temp_r1_45) + (0xC))) = (s32) (*(s32 *)((s8 *)(temp_r0_46) + (0xC)));
                    var_r4_22 += 0x10;
                    var_r2_41 += 0x10;
                    var_r3_12 += 1;
                } while (var_r3_12 < (s32) ((*(u8 *)((s8 *)((void *)0x0300034C) + (8))) - 1));
            }
            temp_r0_62 = var_r4_22 + (*(s32 *)((s8 *)((void *)0x0300034C) + (4)));
            (*(s32 *)((s8 *)(temp_r0_62) + (0))) = 0;
            (*(s32 *)((s8 *)(temp_r0_62) + (4))) = 0;
            (*(u8 *)((s8 *)((void *)0x0300034C) + (8))) = (u8) ((*(u8 *)((s8 *)((void *)0x0300034C) + (8))) - 1);
            *(s16 *)0x04000208 = 1;
            return 1;
        }
        var_r4_22 += 0x10;
        var_r3_12 += 1;
        if (var_r3_12 >= (s32) (*(u8 *)((s8 *)((void *)0x0300034C) + (8)))) {
            goto block_8;
        }
        goto loop_2;
    }
block_8:
    return 0;
}
#endif
