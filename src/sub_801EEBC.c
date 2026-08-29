#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_801EEBC needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801EEBC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801F370.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801F7D0.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801FBAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_801FFA8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802039C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8020784.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_802083C.s\"");
#else
void sub_802083C(void *arg0, s32 arg1) {
    s32 temp_r1_17;
    s32 var_r3_8;
    void *temp_r0_28;
    void *temp_r0_38;
    void *temp_r0_48;
    void *temp_r0_60;
    void *temp_r0_71;
    void *temp_r1_66;
    void *temp_r1_76;
    void *var_r2_7;
    void *var_r4_9;

    var_r2_7 = arg0;
    var_r3_8 = arg1;
    var_r4_9 = NULL;
    if (var_r3_8 != 0) {
        temp_r1_17 = (0 - var_r3_8) & 3;
        if (temp_r1_17 != 0) {
            if (temp_r1_17 < 3) {
                if (temp_r1_17 < 2) {
                    (*(s16 *)((s8 *)(var_r2_7) + (6))) = 1;
                    (*(s32 *)((s8 *)(var_r2_7) + (8))) = -1;
                    (*(s32 *)((s8 *)(var_r2_7) + (0xC))) = 0;
                    temp_r0_28 = var_r2_7 + 0x14;
                    (*(void **)((s8 *)(var_r2_7) + (0x10))) = temp_r0_28;
                    var_r4_9 = var_r2_7;
                    var_r3_8 -= 1;
                    var_r2_7 = temp_r0_28;
                }
                (*(s16 *)((s8 *)(var_r2_7) + (6))) = 1;
                (*(s32 *)((s8 *)(var_r2_7) + (8))) = -1;
                (*(void **)((s8 *)(var_r2_7) + (0xC))) = var_r4_9;
                temp_r0_38 = var_r2_7 + 0x14;
                (*(void **)((s8 *)(var_r2_7) + (0x10))) = temp_r0_38;
                var_r4_9 = var_r2_7;
                var_r3_8 -= 1;
                var_r2_7 = temp_r0_38;
            }
            (*(s16 *)((s8 *)(var_r2_7) + (6))) = 1;
            (*(s32 *)((s8 *)(var_r2_7) + (8))) = -1;
            (*(void **)((s8 *)(var_r2_7) + (0xC))) = var_r4_9;
            temp_r0_48 = var_r2_7 + 0x14;
            (*(void **)((s8 *)(var_r2_7) + (0x10))) = temp_r0_48;
            var_r4_9 = var_r2_7;
            var_r3_8 -= 1;
            var_r2_7 = temp_r0_48;
            if (var_r3_8 != 0) {
                goto loop_7;
            }
        } else {
            do {
loop_7:
                (*(s16 *)((s8 *)(var_r2_7) + (6))) = 1;
                (*(s32 *)((s8 *)(var_r2_7) + (8))) = -1;
                (*(void **)((s8 *)(var_r2_7) + (0xC))) = var_r4_9;
                temp_r0_60 = var_r2_7 + 0x14;
                (*(void **)((s8 *)(var_r2_7) + (0x10))) = temp_r0_60;
                (*(s16 *)((s8 *)(temp_r0_60) + (6))) = 1;
                (*(s32 *)((s8 *)(temp_r0_60) + (8))) = -1;
                (*(void **)((s8 *)(temp_r0_60) + (0xC))) = var_r2_7;
                temp_r1_66 = var_r2_7 + 0x28;
                (*(void **)((s8 *)(temp_r0_60) + (0x10))) = temp_r1_66;
                (*(s16 *)((s8 *)(temp_r1_66) + (6))) = 1;
                (*(s32 *)((s8 *)(temp_r1_66) + (8))) = -1;
                (*(void **)((s8 *)(temp_r1_66) + (0xC))) = temp_r0_60;
                temp_r0_71 = temp_r0_60 + 0x28;
                (*(void **)((s8 *)(temp_r1_66) + (0x10))) = temp_r0_71;
                (*(s16 *)((s8 *)(temp_r0_71) + (6))) = 1;
                (*(s32 *)((s8 *)(temp_r0_71) + (8))) = -1;
                (*(void **)((s8 *)(temp_r0_71) + (0xC))) = temp_r1_66;
                temp_r1_76 = temp_r1_66 + 0x28;
                (*(void **)((s8 *)(temp_r0_71) + (0x10))) = temp_r1_76;
                var_r4_9 = temp_r0_71;
                var_r3_8 -= 4;
                var_r2_7 = temp_r1_76;
            } while (var_r3_8 != 0);
        }
    }
    (*(s32 *)((s8 *)((var_r2_7 - 0x14)) + (0x10))) = 0;
}
#endif
