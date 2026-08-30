#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80841B8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80841B8.s\"");
#else
u8 sub_80841B8(void *arg0) {
    u8 var_r1_8;
    void *temp_r2_7;

    temp_r2_7 = (*(void **)((s8 *)(arg0) + (0x40)));
    var_r1_8 = (*(u8 *)((s8 *)(temp_r2_7) + (0)));
    if (0x80 & var_r1_8) {
        var_r1_8 = (*(u8 *)((s8 *)(temp_r2_7) + (7)));
    }
    return var_r1_8;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80841CE.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8084294.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80842D8.s\"");
#else
void sub_80842D8(void *arg0) {
    void *temp_r1_14;
    void *temp_r1_50;
    void *temp_r3_15;

    if ((arg0 != NULL) && (((*(u8 *)((s8 *)(arg0) + (0x12))) = (u8) ((*(u8 *)((s8 *)(arg0) + (0x12))) | 0x20), temp_r1_14 = (*(void **)((s8 *)(arg0) + (0x68))), temp_r3_15 = (*(void **)((s8 *)(arg0) + (0x64))), (temp_r1_14 != temp_r3_15)) || (arg0 == (*(void **)((s8 *)(*(void **)0x03000D74) + (0x30)))))) {
        if (temp_r3_15 != NULL) {
            (*(void **)((s8 *)(temp_r3_15) + (0x68))) = temp_r1_14;
        } else {
            (*(void **)((s8 *)(*(void **)0x03000D74) + (0x30))) = temp_r1_14;
        }
        if (temp_r1_14 != NULL) {
            (*(void **)((s8 *)(temp_r1_14) + (0x64))) = temp_r3_15;
        } else {
            (*(void **)((s8 *)(*(void **)0x03000D74) + (0x34))) = temp_r3_15;
        }
        (*(u8 *)((s8 *)(arg0) + (0x11))) = (u8) (-0x11 & (*(u8 *)((s8 *)(arg0) + (0x11))));
        (*(void **)((s8 *)(arg0) + (0x64))) = NULL;
        (*(void **)((s8 *)(arg0) + (0x68))) = NULL;
        temp_r1_50 = *(void **)0x03000D74;
        (*(u8 *)((s8 *)(temp_r1_50) + (1))) = (u8) ((*(u8 *)((s8 *)(temp_r1_50) + (1))) - 1);
    }
}
#endif
