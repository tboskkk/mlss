#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8134560 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134560.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_81345E8.s\"");
#else
void sub_81345E8(void *arg0, s32 arg1, s32 arg2) {
    s32 var_r0_11;
    s32 var_r0_22;
    s32 var_r0_42;
    s32 var_r0_55;
    void *temp_r1_30;
    void *temp_r1_41;

    var_r0_11 = (*(s32 *)((s8 *)(arg0) + (0x28)));
    if (var_r0_11 < 0) {
        var_r0_11 += 0xFF;
    }
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0))) = (u16) ((var_r0_11 >> 8) - arg1);
    var_r0_22 = (*(s32 *)((s8 *)(arg0) + (0x2C))) + (*(s32 *)((s8 *)(arg0) + (0x30)));
    if (var_r0_22 < 0) {
        var_r0_22 += 0xFF;
    }
    (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (2))) = (u16) ((var_r0_22 >> 8) - arg2);
    temp_r1_30 = (*(void **)((s8 *)(arg0) + (0xC)));
    if (temp_r1_30 != NULL) {
        (*(u16 *)((s8 *)(temp_r1_30) + (0))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0)));
        (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (0xC)))) + (2))) = (u16) (*(u16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (2)));
    }
    temp_r1_41 = (*(void **)((s8 *)(arg0) + (8)));
    var_r0_42 = (*(s32 *)((s8 *)(arg0) + (0x34)));
    if (var_r0_42 < 0) {
        var_r0_42 += 0xFF;
    }
    (*(u16 *)((s8 *)(temp_r1_41) + (2))) = (u16) ((var_r0_42 >> 8) + (*(u16 *)((s8 *)(temp_r1_41) + (2))));
    var_r0_55 = (*(s32 *)((s8 *)(arg0) + (0x30)));
    if (var_r0_55 < 0) {
        var_r0_55 += 0xFF;
    }
    (*(s16 *)((s8 *)((*(void **)((s8 *)(arg0) + (8)))) + (0xE))) = (s16) ((*(u8 *)((s8 *)(arg0) + (0x24))) - ((var_r0_55 >> 8) + 0xFFFFFC00));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8134660.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif
