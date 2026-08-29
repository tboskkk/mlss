#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_81DBBA0 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DBBA0.s\"");
#else
void sub_81DBBA0(u32 *arg0, void *arg1) {
    s32 temp_r4_24;
    s32 var_r0_32;
    s32 var_r0_52;
    u32 temp_r0_8;
    u32 temp_r1_12;
    u32 var_r2_10;

    temp_r0_8 = *arg0;
    var_r2_10 = (u32) (temp_r0_8 << 9) >> 9;
    temp_r1_12 = (u32) (temp_r0_8 * 2) >> 0x18;
    (*(u32 *)((s8 *)(arg1) + (4))) = (u32) (temp_r0_8 >> 0x1F);
    if (temp_r1_12 == 0) {
        if (var_r2_10 == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 2;
            return;
        }
        temp_r4_24 = temp_r1_12 - 0x7E;
        (*(s32 *)((s8 *)(arg1) + (8))) = temp_r4_24;
        var_r2_10 <<= 7;
        (*(s32 *)((s8 *)(arg1) + (0))) = 3;
        if (var_r2_10 <= 0x3FFFFFFFU) {
            var_r0_32 = temp_r4_24;
            do {
                var_r2_10 *= 2;
                var_r0_32 -= 1;
            } while (var_r2_10 <= 0x3FFFFFFFU);
            (*(s32 *)((s8 *)(arg1) + (8))) = var_r0_32;
        }
        goto block_13;
    }
    if (temp_r1_12 == 0xFF) {
        if (var_r2_10 == 0) {
            (*(s32 *)((s8 *)(arg1) + (0))) = 4;
            return;
        }
        var_r0_52 = 0x100000 & var_r2_10;
        if (var_r0_52 != 0) {
            var_r0_52 = 1;
        }
        (*(s32 *)((s8 *)(arg1) + (0))) = var_r0_52;
block_13:
        (*(u32 *)((s8 *)(arg1) + (0xC))) = var_r2_10;
        return;
    }
    (*(s32 *)((s8 *)(arg1) + (8))) = (s32) (temp_r1_12 - 0x7F);
    (*(s32 *)((s8 *)(arg1) + (0))) = 3;
    (*(u32 *)((s8 *)(arg1) + (0xC))) = (u32) ((var_r2_10 << 7) | 0x40000000);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DBC1C.s\"");
#else
void *sub_81DBC1C(void *arg0, void *arg1, void *arg2, s32 arg3) {
    s32 var_r0_103;
    s32 var_r0_12;
    s32 var_r0_68;
    s32 var_r1_133;
    s32 var_r1_24;
    s32 var_r1_32;
    s32 var_r1_39;
    s32 var_r1_54;
    s32 var_r1_61;
    s32 var_r1_87;
    s32 var_r1_99;
    s32 var_r3_100;
    s32 var_r3_117;
    s32 var_r3_162;
    u32 temp_r0_187;
    u32 temp_r0_25;
    u32 temp_r1_207;
    u32 temp_r2_13;
    u32 var_r1_181;
    u32 var_r2_101;
    u32 var_r4_102;

    var_r0_12 = 0;
    temp_r2_13 = (*(u32 *)((s8 *)(arg0) + (0)));
    if (temp_r2_13 <= 1U) {
        var_r0_12 = 1;
    }
    if (var_r0_12 != 0) {
        goto block_3;
    }
    var_r1_24 = 0;
    temp_r0_25 = (*(u32 *)((s8 *)(arg1) + (0)));
    if (temp_r0_25 <= 1U) {
        var_r1_24 = 1;
    }
    if (var_r1_24 == 0) {
        var_r1_32 = 0;
        if (temp_r2_13 == 4) {
            var_r1_32 = 1;
        }
        if (var_r1_32 != 0) {
            var_r1_39 = 0;
            if (temp_r0_25 == 4) {
                var_r1_39 = 1;
            }
            if ((var_r1_39 != 0) && ((*(s32 *)((s8 *)(arg0) + (4))) != (*(s32 *)((s8 *)(arg1) + (4))))) {
                return (void *)0x03001A38;
            }
            goto block_3;
        }
        var_r1_54 = 0;
        if (temp_r0_25 == 4) {
            var_r1_54 = 1;
        }
        if (var_r1_54 == 0) {
            var_r1_61 = 0;
            if (temp_r0_25 == 2) {
                var_r1_61 = 1;
            }
            if (var_r1_61 != 0) {
                var_r0_68 = 0;
                if (temp_r2_13 == 2) {
                    var_r0_68 = 1;
                }
                if (var_r0_68 != 0) {
                    (*(u32 *)((s8 *)(arg2) + (0))) = (u32) (*(u32 *)((s8 *)(arg0) + (0)));
                    (*(s32 *)((s8 *)(arg2) + (4))) = (s32) (*(s32 *)((s8 *)(arg0) + (4)));
                    (*(s32 *)((s8 *)(arg2) + (8))) = (s32) (*(s32 *)((s8 *)(arg0) + (8)));
                    (*(u32 *)((s8 *)(arg2) + (0xC))) = (u32) (*(u32 *)((s8 *)(arg0) + (0xC)));
                    (*(s32 *)((s8 *)(arg2) + (4))) = (s32) ((*(s32 *)((s8 *)(arg0) + (4))) & (*(s32 *)((s8 *)(arg1) + (4))));
                    goto block_57;
                }
block_3:
                return arg0;
            }
            var_r1_87 = 0;
            if ((*(u32 *)((s8 *)(arg0) + (0))) == 2) {
                var_r1_87 = 1;
            }
            if (var_r1_87 != 0) {
                goto block_28;
            }
            var_r1_99 = (*(s32 *)((s8 *)(arg0) + (8)));
            var_r3_100 = (*(s32 *)((s8 *)(arg1) + (8)));
            var_r2_101 = (*(u32 *)((s8 *)(arg0) + (0xC)));
            var_r4_102 = (*(u32 *)((s8 *)(arg1) + (0xC)));
            var_r0_103 = var_r1_99 - var_r3_100;
            if (var_r0_103 < 0) {
                var_r0_103 = 0 - var_r0_103;
            }
            if (var_r0_103 <= 0x1F) {
                if (var_r1_99 > var_r3_100) {
                    var_r3_117 = var_r1_99 - var_r3_100;
                    do {
                        var_r3_117 -= 1;
                        var_r4_102 = (var_r4_102 >> 1) | (var_r4_102 & 1);
                    } while (var_r3_117 != 0);
                    var_r3_100 = var_r1_99;
                }
                if (var_r3_100 > var_r1_99) {
                    var_r1_133 = var_r3_100 - var_r1_99;
                    do {
                        var_r1_133 -= 1;
                        var_r2_101 = (var_r2_101 >> 1) | (var_r2_101 & 1);
                    } while (var_r1_133 != 0);
                    var_r1_99 = var_r3_100;
                }
            } else if (var_r1_99 > var_r3_100) {
                var_r4_102 = 0;
            } else {
                var_r1_99 = var_r3_100;
                var_r2_101 = 0;
            }
            if ((*(s32 *)((s8 *)(arg0) + (4))) != (*(s32 *)((s8 *)(arg1) + (4)))) {
                if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
                    var_r3_162 = var_r4_102 - var_r2_101;
                } else {
                    var_r3_162 = var_r2_101 - var_r4_102;
                }
                if (var_r3_162 >= 0) {
                    (*(s32 *)((s8 *)(arg2) + (4))) = 0;
                    (*(s32 *)((s8 *)(arg2) + (8))) = var_r1_99;
                    (*(u32 *)((s8 *)(arg2) + (0xC))) = (u32) var_r3_162;
                } else {
                    (*(s32 *)((s8 *)(arg2) + (4))) = 1;
                    (*(s32 *)((s8 *)(arg2) + (8))) = var_r1_99;
                    (*(u32 *)((s8 *)(arg2) + (0xC))) = (u32) (0 - var_r3_162);
                }
                var_r1_181 = (*(u32 *)((s8 *)(arg2) + (0xC)));
                if ((u32) (var_r1_181 - 1) <= 0x3FFFFFFEU) {
                    do {
                        temp_r0_187 = var_r1_181 * 2;
                        (*(u32 *)((s8 *)(arg2) + (0xC))) = temp_r0_187;
                        (*(s32 *)((s8 *)(arg2) + (8))) = (s32) ((*(s32 *)((s8 *)(arg2) + (8))) - 1);
                        var_r1_181 = temp_r0_187;
                    } while ((u32) (var_r1_181 - 1) <= 0x3FFFFFFEU);
                }
            } else {
                (*(s32 *)((s8 *)(arg2) + (4))) = (*(s32 *)((s8 *)(arg0) + (4)));
                (*(s32 *)((s8 *)(arg2) + (8))) = var_r1_99;
                (*(u32 *)((s8 *)(arg2) + (0xC))) = (u32) (var_r2_101 + var_r4_102);
            }
            (*(u32 *)((s8 *)(arg2) + (0))) = 3U;
            temp_r1_207 = (*(u32 *)((s8 *)(arg2) + (0xC)));
            if ((s32) temp_r1_207 < 0) {
                (*(u32 *)((s8 *)(arg2) + (0xC))) = (u32) ((1 & temp_r1_207) | (temp_r1_207 >> 1));
                (*(s32 *)((s8 *)(arg2) + (8))) = (s32) ((*(s32 *)((s8 *)(arg2) + (8))) + 1);
            }
block_57:
            return arg2;
        }
        goto block_28;
    }
block_28:
    return arg1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC048.s\"");
#else
s32 sub_81DC048(void *arg0, void *arg1) {
    s32 temp_r0_122;
    s32 temp_r2_121;
    s32 temp_r3_110;
    s32 var_r0_115;
    s32 var_r0_16;
    s32 var_r0_28;
    s32 var_r0_35;
    s32 var_r0_8;
    s32 var_r0_93;
    s32 var_r1_65;
    s32 var_r2_47;
    s32 var_r2_55;
    s32 var_r2_71;
    s32 var_r2_78;
    s32 var_r2_86;
    u32 temp_r0_135;
    u32 temp_r0_48;
    u32 temp_r1_136;
    u32 temp_r2_9;
    u32 temp_r3_17;

    var_r0_8 = 0;
    temp_r2_9 = (*(u32 *)((s8 *)(arg0) + (0)));
    if (temp_r2_9 <= 1U) {
        var_r0_8 = 1;
    }
    if (var_r0_8 == 0) {
        var_r0_16 = 0;
        temp_r3_17 = (*(u32 *)((s8 *)(arg1) + (0)));
        if (temp_r3_17 <= 1U) {
            var_r0_16 = 1;
        }
        if (var_r0_16 != 0) {
            goto block_6;
        }
        var_r0_28 = 0;
        if (temp_r2_9 == 4) {
            var_r0_28 = 1;
        }
        if (var_r0_28 != 0) {
            var_r0_35 = 0;
            if (temp_r3_17 == 4) {
                var_r0_35 = 1;
            }
            if (var_r0_35 != 0) {
                return (*(s32 *)((s8 *)(arg1) + (4))) - (*(s32 *)((s8 *)(arg0) + (4)));
            }
            goto block_14;
        }
block_14:
        var_r2_47 = 0;
        temp_r0_48 = (*(u32 *)((s8 *)(arg0) + (0)));
        if (temp_r0_48 == 4) {
            var_r2_47 = 1;
        }
        if (var_r2_47 == 0) {
            var_r2_55 = 0;
            if (temp_r3_17 == 4) {
                var_r2_55 = 1;
            }
            if (var_r2_55 != 0) {
                goto block_20;
            }
            var_r2_71 = 0;
            if (temp_r0_48 == 2) {
                var_r2_71 = 1;
            }
            if (var_r2_71 != 0) {
                var_r2_78 = 0;
                if (temp_r3_17 == 2) {
                    var_r2_78 = 1;
                }
                if (var_r2_78 == 0) {
                    goto block_28;
                }
                goto block_46;
            }
block_28:
            var_r2_86 = 0;
            if (temp_r0_48 == 2) {
                var_r2_86 = 1;
            }
            if (var_r2_86 == 0) {
                var_r0_93 = 0;
                if (temp_r3_17 == 2) {
                    var_r0_93 = 1;
                }
                if (var_r0_93 != 0) {
                    goto block_34;
                }
                temp_r3_110 = (*(s32 *)((s8 *)(arg0) + (4)));
                if (temp_r3_110 != (*(s32 *)((s8 *)(arg1) + (4)))) {
                    goto block_38;
                }
                temp_r2_121 = (*(s32 *)((s8 *)(arg0) + (8)));
                temp_r0_122 = (*(s32 *)((s8 *)(arg1) + (8)));
                if (temp_r2_121 <= temp_r0_122) {
                    if (temp_r2_121 < temp_r0_122) {
                        goto block_42;
                    }
                    temp_r0_135 = (*(u32 *)((s8 *)(arg0) + (0xC)));
                    temp_r1_136 = (*(u32 *)((s8 *)(arg1) + (0xC)));
                    if (temp_r0_135 <= temp_r1_136) {
                        if (temp_r0_135 >= temp_r1_136) {
block_46:
                            var_r0_115 = 0;
                            /* Duplicate return node #47. Try simplifying control flow for better match */
                            return var_r0_115;
                        }
block_42:
                        var_r0_115 = -1;
                        if (temp_r3_110 != 0) {
                            return 1;
                        }
                        /* Duplicate return node #47. Try simplifying control flow for better match */
                        return var_r0_115;
                    }
                    goto block_38;
                }
block_38:
                var_r0_115 = 1;
                if (temp_r3_110 != 0) {
                    return -1;
                }
                return var_r0_115;
            }
block_20:
            var_r1_65 = -1;
            if ((*(s32 *)((s8 *)(arg1) + (4))) != 0) {
                var_r1_65 = 1;
            }
            goto block_36;
        }
block_34:
        var_r1_65 = 1;
        if ((*(s32 *)((s8 *)(arg0) + (4))) != 0) {
            var_r1_65 = -1;
        }
block_36:
        return var_r1_65;
    }
block_6:
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81DC12C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC154.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC19C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC1E4.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC22C.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC274.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC2BC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC304.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC364.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_081DC3CC.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
