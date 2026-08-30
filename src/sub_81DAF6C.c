#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DAF6C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DAF6C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB1D8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB208.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB240.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB4E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB670.s\"");
#else
s32 sub_81DB670(void *arg0, void *arg1) {
    s32 temp_r0_123;
    s32 temp_r1_122;
    s32 temp_r4_112;
    s32 var_r0_116;
    s32 var_r0_17;
    s32 var_r0_29;
    s32 var_r0_36;
    s32 var_r0_94;
    s32 var_r0_9;
    s32 var_r1_48;
    s32 var_r1_56;
    s32 var_r1_66;
    s32 var_r1_72;
    s32 var_r1_79;
    s32 var_r1_87;
    u32 temp_r0_49;
    u32 temp_r1_10;
    u32 temp_r2_137;
    u32 temp_r2_18;
    u32 temp_r3_136;

    var_r0_9 = 0;
    temp_r1_10 = (*(u32 *)((s8 *)(arg0) + (0)));
    if (temp_r1_10 <= 1U) {
        var_r0_9 = 1;
    }
    if (var_r0_9 == 0) {
        var_r0_17 = 0;
        temp_r2_18 = (*(u32 *)((s8 *)(arg1) + (0)));
        if (temp_r2_18 <= 1U) {
            var_r0_17 = 1;
        }
        if (var_r0_17 != 0) {
            goto block_6;
        }
        var_r0_29 = 0;
        if (temp_r1_10 == 4) {
            var_r0_29 = 1;
        }
        if (var_r0_29 != 0) {
            var_r0_36 = 0;
            if (temp_r2_18 == 4) {
                var_r0_36 = 1;
            }
            if (var_r0_36 != 0) {
                return (*(s32 *)((s8 *)(arg1) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)));
            }
            goto block_14;
        }
block_14:
        var_r1_48 = 0;
        temp_r0_49 = (*(u32 *)((s8 *)(arg0) + (0)));
        if (temp_r0_49 == 4) {
            var_r1_48 = 1;
        }
        if (var_r1_48 == 0) {
            var_r1_56 = 0;
            if (temp_r2_18 == 4) {
                var_r1_56 = 1;
            }
            if (var_r1_56 != 0) {
                goto block_20;
            }
            var_r1_72 = 0;
            if (temp_r0_49 == 2) {
                var_r1_72 = 1;
            }
            if (var_r1_72 != 0) {
                var_r1_79 = 0;
                if (temp_r2_18 == 2) {
                    var_r1_79 = 1;
                }
                if (var_r1_79 == 0) {
                    goto block_28;
                }
                goto block_50;
            }
block_28:
            var_r1_87 = 0;
            if (temp_r0_49 == 2) {
                var_r1_87 = 1;
            }
            if (var_r1_87 == 0) {
                var_r0_94 = 0;
                if (temp_r2_18 == 2) {
                    var_r0_94 = 1;
                }
                if (var_r0_94 != 0) {
                    goto block_34;
                }
                temp_r4_112 = (*(s32 *)((s8 *)(arg0) + (4)));
                if (temp_r4_112 != (*(s32 *)((s8 *)(arg1) + (4)))) {
                    goto block_38;
                }
                temp_r1_122 = (*(s32 *)((s8 *)(arg0) + (8)));
                temp_r0_123 = (*(s32 *)((s8 *)(arg1) + (8)));
                if (temp_r1_122 <= temp_r0_123) {
                    if (temp_r1_122 < temp_r0_123) {
                        goto block_42;
                    }
                    temp_r3_136 = (*(u32 *)((s8 *)(arg0) + (0x10)));
                    temp_r2_137 = (*(u32 *)((s8 *)(arg1) + (0x10)));
                    if ((temp_r3_136 <= temp_r2_137) && ((temp_r3_136 != temp_r2_137) || ((u32) (*(u32 *)((s8 *)(arg0) + (0xC))) <= (u32) (*(u32 *)((s8 *)(arg1) + (0xC)))))) {
                        if ((temp_r2_137 <= temp_r3_136) && ((temp_r2_137 != temp_r3_136) || ((u32) (*(u32 *)((s8 *)(arg1) + (0xC))) <= (u32) (*(u32 *)((s8 *)(arg0) + (0xC)))))) {
block_50:
                            var_r0_116 = 0;
                            /* Duplicate return node #51. Try simplifying control flow for better match */
                            return var_r0_116;
                        }
block_42:
                        var_r0_116 = -1;
                        if (temp_r4_112 != 0) {
                            return 1;
                        }
                        /* Duplicate return node #51. Try simplifying control flow for better match */
                        return var_r0_116;
                    }
                    goto block_38;
                }
block_38:
                var_r0_116 = 1;
                if (temp_r4_112 != 0) {
                    return -1;
                }
                return var_r0_116;
            }
block_20:
            var_r1_66 = -1;
            if ((*(s32 *)((s8 *)(arg1) + (4))) != 0) {
                var_r1_66 = 1;
            }
            goto block_36;
        }
block_34:
        var_r1_66 = 1;
        if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
            var_r1_66 = -1;
        }
block_36:
        return var_r1_66;
    }
block_6:
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB76E.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB79C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB7E8.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB834.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB880.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB8CC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DB918.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
