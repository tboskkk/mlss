#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8159464 needs.

asm_unified(".include \"asm/macros.inc\"");

void sub_8159464(void *arg0, s32 arg1) {
    (*(s32 *)((s8 *)(arg0) + (4))) = 0x08CDCA30;
    if (1 & arg1) {
        free_heap_8018DA8(arg0);
    }
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8159484.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_815949C.s\"");
#else
void *sub_815949C(void *arg0) {
    s32 sp0;
    s16 temp_r0_129;
    s16 var_r2_69;
    s16 var_r7_68;
    s32 temp_r0_77;
    s32 temp_r1_117;
    s32 temp_r1_161;
    s32 var_r0_135;
    s32 var_r0_86;
    u16 temp_r3_72;
    void *temp_r5_128;
    void *var_r4_74;

    (*(s32 *)((s8 *)(arg0) + (0x500))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x504))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x508))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x50C))) = 0xFFFF9C00;
    (*(s16 *)((s8 *)(arg0) + (0x510))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x514))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x518))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x51C))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x520))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x524))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x528))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x52C))) = 0x50;
    (*(s32 *)((s8 *)(arg0) + (0x530))) = 0x10000;
    (*(s32 *)((s8 *)(arg0) + (0x53C))) = 0;
    (*(s32 *)((s8 *)(arg0) + (0x534))) = (s32) (*(s32 *)((s8 *)(arg0) + (0x530)));
    var_r7_68 = 0;
    var_r2_69 = 0;
    temp_r3_72 = (*(u16 *)((s8 *)((void *)0x03001010) + (0)));
    var_r4_74 = arg0;
    temp_r0_77 = (s32) (temp_r3_72 << 0x16) >> 0x1D;
    do {
        (*(s16 *)((s8 *)(var_r4_74) + (0))) = var_r2_69;
        (*(s16 *)((s8 *)(var_r4_74) + (2))) = var_r7_68;
        if (temp_r0_77 > 1) {
            var_r0_86 = var_r7_68 - 0x50;
            if (var_r0_86 < 0) {
                var_r0_86 = 0 - var_r0_86;
            }
            sp0 = (s32) var_r2_69;
            (*(s16 *)((s8 *)(var_r4_74) + (4))) = (s16) (((0x10 - (var_r0_86 / 5)) << 8) | 0x10);
        } else if ((0x380 & temp_r3_72) == 0x80) {
            temp_r1_117 = (s32) ((*(u8 *)((s8 *)((void *)0x03001010) + (1))) << 0x19) >> 0x1B;
            (*(s16 *)((s8 *)(var_r4_74) + (4))) = (s16) (temp_r1_117 | ((0x10 - temp_r1_117) << 8));
        } else {
            (*(s16 *)((s8 *)(var_r4_74) + (4))) = var_r2_69;
        }
        temp_r5_128 = var_r4_74 + 8;
        temp_r0_129 = var_r7_68 + 1;
        (*(s16 *)((s8 *)(var_r4_74) + (8))) = var_r2_69;
        (*(s16 *)((s8 *)(temp_r5_128) + (2))) = temp_r0_129;
        if (temp_r0_77 > 1) {
            var_r0_135 = temp_r0_129 - 0x50;
            if (var_r0_135 < 0) {
                var_r0_135 = 0 - var_r0_135;
            }
            sp0 = (s32) var_r2_69;
            (*(s16 *)((s8 *)(temp_r5_128) + (4))) = (s16) (((0x10 - (var_r0_135 / 5)) << 8) | 0x10);
        } else if ((0x380 & temp_r3_72) == 0x80) {
            temp_r1_161 = (s32) ((*(u8 *)((s8 *)((void *)0x03001010) + (1))) << 0x19) >> 0x1B;
            (*(s16 *)((s8 *)(temp_r5_128) + (4))) = (s16) (temp_r1_161 | ((0x10 - temp_r1_161) << 8));
        } else {
            (*(s16 *)((s8 *)(temp_r5_128) + (4))) = var_r2_69;
        }
        var_r4_74 += 0x10;
        var_r7_68 += 2;
    } while ((s32) var_r7_68 <= 0x9F);
    return arg0;
}
#endif
