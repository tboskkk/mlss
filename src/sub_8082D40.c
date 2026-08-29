#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8082D40 needs.

asm_unified(".include \"asm/macros.inc\"");

s16 sub_8082D40(void *arg0) {
    return (*(s16 *)((s8 *)(arg0) + (0x776)));
}

s16 sub_8082D50(int arg0)
{
  return *((s16 *) (arg0 + 0x774));
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082D60.s\"");
#else
s32 sub_805A99C();                              /* extern */

void sub_8082D60(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC2A8;
    sub_805A99C();
}
#endif

s32 sub_805A230(void *, u8, s32, u8, s32, s32, s32); /* extern */

void *sub_8082D74(void *arg0, u8 arg1, s32 arg2, u8 arg3, s32 arg4, s32 arg5, s32 arg6) {
    sub_805A230(arg0, arg1, arg2, arg3, (s32) (s16) arg4, (s32) (s16) arg5, arg6);
    (*(s32 *)((s8 *)(arg0) + (0x18))) = 0x08CDC2A8;
    (*(s16 *)((s8 *)(arg0) + (0x778))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x774))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x77A))) = 0;
    (*(s16 *)((s8 *)(arg0) + (0x776))) = 0;
    return arg0;
}

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082DD0.s\"");
#else
/* No C attempt yet. Deliberately EMPTY rather than an #error: agbcc
   compiles a whole translation unit at a time, so an #error here fails
   every OTHER function in this file under NONMATCHING=1. Guard intact, so
   the real ROM still gets the verbatim retail bytes and progress.py still
   counts this as unmatched. Write the C here, replacing this comment. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8082E1C.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80835E0.s\"");
#else
void sub_80835E0(void *arg0) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    u32 sp10;
    s32 sp14;
    u32 sp18;
    s32 sp1C;
    s32 sp20;
    u32 sp24;
    s16 temp_r0_27;
    s8 temp_r1_42;
    u32 temp_r2_35;
    u32 temp_r7_38;
    u8 temp_r0_33;
    void *temp_r0_44;
    void *temp_r1_120;
    void *temp_r1_13;
    void *temp_r1_177;
    void *temp_r1_234;
    void *temp_r2_63;
    void *var_r3_104;
    void *var_r3_214;
    void *var_r4_160;

    temp_r1_13 = (*(void **)((s8 *)(arg0) + (8)));
    sp0 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    sp4 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    sp8 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    spC = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    temp_r0_27 = M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */);
    sp10 = (u32) ((*(u8 *)((s8 *)(temp_r1_13) + (0x11))) << 0x19) >> 0x1F;
    temp_r0_33 = (*(u8 *)((s8 *)(temp_r1_13) + (0x12)));
    temp_r2_35 = (u32) (temp_r0_33 << 0x1D) >> 0x1E;
    temp_r7_38 = (u32) (temp_r0_33 << 0x1B) >> 0x1F;
    temp_r1_42 = (s8) (*(u8 *)((s8 *)(temp_r1_13) + (0x20)));
    temp_r0_44 = (*(void **)((s8 *)(arg0) + (0x28)));
    if (temp_r0_44 == NULL) {
        return;
    }
    if ((temp_r0_44 + 8) != arg0) {
        if (!(8 & (*(u8 *)((s8 *)(arg0) + (0x79))))) {
            return;
        }
        temp_r2_63 = (*(void **)((s8 *)(temp_r0_44) + (0x10)));
        (*(u16 *)((s8 *)(temp_r2_63) + (4))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0)));
        (*(u16 *)((s8 *)(temp_r2_63) + (6))) = (u16) (*(u16 *)((s8 *)(&sp0) + (4)));
        (*(u16 *)((s8 *)(temp_r2_63) + (8))) = (u16) (*(u16 *)((s8 *)(&sp0) + (8)));
        (*(u16 *)((s8 *)(temp_r2_63) + (0xA))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0xC)));
        (*(s16 *)((s8 *)(temp_r2_63) + (0xC))) = temp_r0_27;
        (*(u8 *)((s8 *)(temp_r2_63) + (0x11))) = (u8) ((-0x41 & (*(u8 *)((s8 *)(temp_r2_63) + (0x11)))) | (sp10 << 6));
        (*(u8 *)((s8 *)(temp_r2_63) + (0x12))) = (u8) ((((-7 & (*(u8 *)((s8 *)(temp_r2_63) + (0x12)))) | (temp_r2_35 * 2)) & ~0x10) | (temp_r7_38 * 0x10));
        (*(s8 *)((s8 *)(temp_r2_63) + (0x20))) = temp_r1_42;
        goto block_6;
    }
block_6:
    var_r3_104 = (*(void **)((s8 *)(temp_r0_44) + (0x38)));
    if (var_r3_104 != NULL) {
        do {
            if (8 & (*(u8 *)((s8 *)(var_r3_104) + (0x79)))) {
                temp_r1_120 = (*(void **)((s8 *)(var_r3_104) + (8)));
                (*(u16 *)((s8 *)(temp_r1_120) + (4))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0)));
                (*(u16 *)((s8 *)(temp_r1_120) + (6))) = (u16) (*(u16 *)((s8 *)(&sp0) + (4)));
                (*(u16 *)((s8 *)(temp_r1_120) + (8))) = (u16) (*(u16 *)((s8 *)(&sp0) + (8)));
                (*(u16 *)((s8 *)(temp_r1_120) + (0xA))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0xC)));
                (*(s16 *)((s8 *)(temp_r1_120) + (0xC))) = temp_r0_27;
                (*(u8 *)((s8 *)(temp_r1_120) + (0x11))) = (u8) ((-0x41 & (*(u8 *)((s8 *)(temp_r1_120) + (0x11)))) | (sp10 << 6));
                (*(u8 *)((s8 *)(temp_r1_120) + (0x12))) = (u8) ((((-7 & (*(u8 *)((s8 *)(temp_r1_120) + (0x12)))) | (temp_r2_35 * 2)) & ~0x10) | (temp_r7_38 * 0x10));
                (*(s8 *)((s8 *)(temp_r1_120) + (0x20))) = temp_r1_42;
            }
            var_r3_104 = (*(void **)((s8 *)(var_r3_104) + (0x30)));
        } while (var_r3_104 != NULL);
    }
    var_r4_160 = (*(void **)((s8 *)(temp_r0_44) + (0)));
    if ((var_r4_160 != NULL) && (var_r4_160 != temp_r0_44)) {
        sp14 = sp10 << 6;
        sp20 = temp_r7_38 * 0x10;
        sp18 = temp_r2_35;
        sp1C = temp_r2_35 * 2;
        sp24 = temp_r7_38;
        do {
            temp_r1_177 = (*(void **)((s8 *)(var_r4_160) + (0x10)));
            (*(u16 *)((s8 *)(temp_r1_177) + (4))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0)));
            (*(u16 *)((s8 *)(temp_r1_177) + (6))) = (u16) (*(u16 *)((s8 *)(&sp0) + (4)));
            (*(u16 *)((s8 *)(temp_r1_177) + (8))) = (u16) (*(u16 *)((s8 *)(&sp0) + (8)));
            (*(u16 *)((s8 *)(temp_r1_177) + (0xA))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0xC)));
            (*(s16 *)((s8 *)(temp_r1_177) + (0xC))) = temp_r0_27;
            (*(u8 *)((s8 *)(temp_r1_177) + (0x11))) = (u8) ((-0x41 & (*(u8 *)((s8 *)(temp_r1_177) + (0x11)))) | sp14);
            (*(u8 *)((s8 *)(temp_r1_177) + (0x12))) = (u8) ((((-7 & (*(u8 *)((s8 *)(temp_r1_177) + (0x12)))) | sp1C) & ~0x10) | sp20);
            (*(s8 *)((s8 *)(temp_r1_177) + (0x20))) = temp_r1_42;
            var_r3_214 = (*(void **)((s8 *)(var_r4_160) + (0x38)));
            if (var_r3_214 != NULL) {
                do {
                    if (8 & (*(u8 *)((s8 *)(var_r3_214) + (0x79)))) {
                        temp_r1_234 = (*(void **)((s8 *)(var_r3_214) + (8)));
                        (*(u16 *)((s8 *)(temp_r1_234) + (4))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0)));
                        (*(u16 *)((s8 *)(temp_r1_234) + (6))) = (u16) (*(u16 *)((s8 *)(&sp0) + (4)));
                        (*(u16 *)((s8 *)(temp_r1_234) + (8))) = (u16) (*(u16 *)((s8 *)(&sp0) + (8)));
                        (*(u16 *)((s8 *)(temp_r1_234) + (0xA))) = (u16) (*(u16 *)((s8 *)(&sp0) + (0xC)));
                        (*(s16 *)((s8 *)(temp_r1_234) + (0xC))) = temp_r0_27;
                        (*(u8 *)((s8 *)(temp_r1_234) + (0x11))) = (u8) ((-0x41 & (*(u8 *)((s8 *)(temp_r1_234) + (0x11)))) | ((sp10 & 1) << 6));
                        (*(u8 *)((s8 *)(temp_r1_234) + (0x12))) = (u8) ((((-7 & (*(u8 *)((s8 *)(temp_r1_234) + (0x12)))) | (sp18 * 2)) & ~0x10) | (sp24 * 0x10));
                        (*(s8 *)((s8 *)(temp_r1_234) + (0x20))) = temp_r1_42;
                    }
                    var_r3_214 = (*(void **)((s8 *)(var_r3_214) + (0x30)));
                } while (var_r3_214 != NULL);
            }
            var_r4_160 = (*(void **)((s8 *)(var_r4_160) + (0)));
        } while (var_r4_160 != temp_r0_44);
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80837F8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
