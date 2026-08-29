#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159A18 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159A18.s\"");
#else
s32 sub_8159800(void *, void *);                /* extern */
s32 sub_8159974(void *);                        /* extern */

void sub_8159A18(void *arg0, void *arg1, void *arg2, s32 arg3) {
    (*(s32 *)((s8 *)(arg0) + (0x52C))) = arg3;
    (*(s32 *)((s8 *)(arg0) + (0x508))) = (s32) (*(s32 *)((s8 *)(arg2) + (0)));
    (*(s32 *)((s8 *)((arg0 + 0x508)) + (4))) = (s32) (*(s32 *)((s8 *)(arg2) + (4)));
    (*(s32 *)((s8 *)(arg0) + (0x508))) = (s32) ((*(s32 *)((s8 *)(arg1) + (0))) - (*(s32 *)((s8 *)(arg0) + (0x508))));
    (*(s32 *)((s8 *)(arg0) + (0x50C))) = (s32) ((*(s32 *)((s8 *)(arg1) + (4))) - (*(s32 *)((s8 *)(arg0) + (0x50C))));
    sub_8159800(arg0, arg2);
    sub_8159974(arg0);
}
#endif

s32 sub_8021308();                              /* extern */

void sub_8159A64(void *arg0, s32 arg1) {
    if ((*(s32 *)((s8 *)(arg0) + (0x524))) != 0) {
        sub_8021308();
    }
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159A90.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159BD8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159CAC.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159DBC.s\"");
#else
s32 sub_8159DBC(void *arg0, void *arg1) {
    s16 temp_r0_52;
    s16 temp_r1_50;
    s32 temp_r0_26;
    s32 temp_r1_24;
    s32 var_r0_29;
    u16 var_r0_55;
    u16 var_r2_63;
    u32 temp_r4_23;
    u32 temp_r5_15;
    u32 var_r3_37;

    temp_r5_15 = (u8) (*(u8 *)((s8 *)(arg0) + (0x29))) >> 1;
    temp_r4_23 = (u8) (*(u8 *)((s8 *)(arg1) + (0x29))) >> 1;
    temp_r1_24 = (*(s32 *)((s8 *)(arg0) + (4)));
    temp_r0_26 = (*(s32 *)((s8 *)(arg1) + (4)));
    if (temp_r1_24 > temp_r0_26) {
        var_r0_29 = temp_r1_24 - temp_r0_26;
        goto block_4;
    }
    if (temp_r1_24 < temp_r0_26) {
        var_r0_29 = temp_r0_26 - temp_r1_24;
block_4:
        var_r3_37 = (u32) (var_r0_29 << 8) >> 0x10;
    } else {
        var_r3_37 = 0;
    }
    temp_r1_50 = ((s32) (*(s32 *)((s8 *)(arg0) + (8))) >> 8) - temp_r5_15;
    temp_r0_52 = ((s32) (*(s32 *)((s8 *)(arg1) + (8))) >> 8) - temp_r4_23;
    if ((s32) temp_r1_50 > (s32) temp_r0_52) {
        var_r0_55 = temp_r1_50 - temp_r0_52;
        goto block_10;
    }
    if ((s32) temp_r1_50 < (s32) temp_r0_52) {
        var_r0_55 = temp_r0_52 - temp_r1_50;
block_10:
        var_r2_63 = var_r0_55;
    } else {
        var_r2_63 = 0;
    }
    if (((s32) (s16) var_r3_37 <= (s32) (((u8) (*(u8 *)((s8 *)(arg0) + (0x28))) >> 1) + ((u8) (*(u8 *)((s8 *)(arg1) + (0x28))) >> 1))) && ((s32) (s16) var_r2_63 <= (s32) (temp_r5_15 + temp_r4_23))) {
        return 1;
    }
    return 0;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159E48.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
